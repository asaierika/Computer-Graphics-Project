//============================================================
// STUDENT NAME: Jiang Zhimeng
// NUS User ID.: A0244224N
// COMMENTS TO GRADER:
//
// ============================================================

#include <fstream>
#include <vector>
#include "Util.h"
#include "Vector3d.h"
#include "Color.h"
#include "Image.h"
#include "Ray.h"
#include "Camera.h"
#include "Material.h"
#include "Light.h"
#include "Surface.h"
#include "Sphere.h"
#include "Plane.h"
#include "Triangle.h"
#include "Scene.h"
#include "Raytrace.h"
#include <string>


// Constants for Scene 1.
static constexpr int imageWidth1 = 640;
static constexpr int imageHeight1 = 480;
static constexpr int reflectLevels1 = 2;  // 0 -- object does not reflect scene.
static constexpr int hasShadow1 = true;
static constexpr std::string_view outImageFile1 = "out1.png";

// Constants for Scene 2.
static constexpr int imageWidth2 = 640;
static constexpr int imageHeight2 = 480;
static constexpr int reflectLevels2 = 2;  // 0 -- object does not reflect scene.
static constexpr int hasShadow2 = true;
static constexpr std::string_view outImageFile2 = "out2.png";

const char ring1File[] = "models/saturn_ring.obj";
const char ring2File[] = "models/uranus_ring.obj";


///////////////////////////////////////////////////////////////////////////
// Raytrace the whole image of the scene and write it to a file.
///////////////////////////////////////////////////////////////////////////

void RenderImage( const std::string &imageFilename, const Scene &scene,
                  int reflectLevels, bool hasShadow )
{
    int imgWidth = scene.camera.getImageWidth();
    int imgHeight = scene.camera.getImageHeight();

    Image image( imgWidth, imgHeight ); // To store the result of ray tracing.

    double startTime = Util::GetCurrRealTime();
    double startCPUTime = Util::GetCurrCPUTime();

    // Generate image, rendering in parallel on Windows and Linux.
    #ifndef __APPLE__
    #pragma warning( push )
    #pragma warning( disable : 6993 )
    #pragma omp parallel for
    #endif
    for ( int y = 0; y < imgHeight; y++ )
    {
        double pixelPosY = y + 0.5;

        for ( int x = 0; x < imgWidth; x++ )
        {
            double pixelPosX = x + 0.5;
            Ray ray = scene.camera.getRay( pixelPosX, pixelPosY );
            Color pixelColor = Raytrace::TraceRay( ray, scene, reflectLevels, hasShadow );
            pixelColor.clamp();
            image.setPixel( x, y, pixelColor );
        }
    }
    #ifndef __APPLE__
    #pragma warning( pop )
    #endif

    double cpuTimeElapsed = Util::GetCurrCPUTime() - startCPUTime;
    double realTimeElapsed = Util::GetCurrRealTime() - startTime;
    std::cout << "CPU time taken = " << cpuTimeElapsed << "sec" << std::endl;
    std::cout << "Real time taken = " << realTimeElapsed << "sec" << std::endl;

    // Write image to file.
    if ( !image.writeToFile( imageFilename ) ) return;
    else Util::ErrorExit("File: %s could not be written.\n", imageFilename.c_str() );
}



// Forward declarations. These functions are defined later in the file.
void DefineScene1( Scene &scene, int imageWidth, int imageHeight );
void DefineScene2( Scene &scene, int imageWidth, int imageHeight );
std::vector<float *> Parse( const char *filename , float xT, float yT, float zT);
void CreateObject(Scene &scene, std::vector<float *> vertices, Material &material );


int main()
{
// Define Scene 1.

    Scene scene1;
    DefineScene1( scene1, imageWidth1, imageHeight1 );

// Render Scene 1.

    std::cout << "Render Scene 1..." << std::endl;
    RenderImage( std::string(outImageFile1), scene1, reflectLevels1, hasShadow1 );
    std::cout << "Scene 1 completed." << std::endl;

// Delete Scene 1 surfaces.

    for (auto& surface : scene1.surfaces)
    {
        delete surface;
    }


// Define Scene 2.

    Scene scene2;
    DefineScene2( scene2, imageWidth2, imageHeight2 );

// Render Scene 2.

    std::cout << "Render Scene 2..." << std::endl;
    RenderImage( std::string(outImageFile2), scene2, reflectLevels2, hasShadow2 );
    std::cout << "Scene 2 completed." << std::endl;

// Delete Scene 2 surfaces.

    for (auto& surface : scene2.surfaces)
    {
        delete surface;
    }


    std::cout << "All done. Press Enter to exit." << std::endl;
    std::cin.get();
    return 0;
}



///////////////////////////////////////////////////////////////////////////
// Modelling of Scene 1.
///////////////////////////////////////////////////////////////////////////

void DefineScene1( Scene &scene, int imageWidth, int imageHeight )
{
    scene.backgroundColor = Color( 0.2f, 0.3f, 0.5f );

    scene.amLight.I_a = Color( 1.0f, 1.0f, 1.0f ) * 0.25f;

// Define materials.

    // Light red.
    Material lightRed = Material();
    lightRed.k_d = Color( 0.8f, 0.4f, 0.4f );
    lightRed.k_a = lightRed.k_d;
    lightRed.k_r = Color( 0.8f, 0.8f, 0.8f ) / 1.5f;
    lightRed.k_rg = Color( 0.8f, 0.8f, 0.8f ) / 3.0f;
    lightRed.n = 64.0f;

    // Light green.
    Material lightGreen = Material();
    lightGreen.k_d = Color( 0.4f, 0.8f, 0.4f );
    lightGreen.k_a = lightGreen.k_d;
    lightGreen.k_r = Color( 0.8f, 0.8f, 0.8f ) / 1.5f;
    lightGreen.k_rg = Color( 0.8f, 0.8f, 0.8f ) / 3.0f;
    lightGreen.n = 64.0f;

    // Light blue.
    Material lightBlue = Material();
    lightBlue.k_d = Color( 0.4f, 0.4f, 0.8f ) * 0.9f;
    lightBlue.k_a = lightBlue.k_d;
    lightBlue.k_r = Color( 0.8f, 0.8f, 0.8f ) / 1.5f;
    lightBlue.k_rg = Color( 0.8f, 0.8f, 0.8f ) / 2.5f;
    lightBlue.n = 64.0f;

    // Yellow.
    Material yellow = Material();
    yellow.k_d = Color( 0.6f, 0.6f, 0.2f );
    yellow.k_a = yellow.k_d;
    yellow.k_r = Color( 0.8f, 0.8f, 0.8f ) / 1.5f;
    yellow.k_rg = Color( 0.8f, 0.8f, 0.8f ) / 3.0f;
    yellow.n = 64.0f;

    // Gray.
    Material gray = Material();
    gray.k_d = Color( 0.6f, 0.6f, 0.6f );
    gray.k_a = gray.k_d;
    gray.k_r = Color( 0.6f, 0.6f, 0.6f );
    gray.k_rg = Color( 0.8f, 0.8f, 0.8f ) / 3.0f;
    gray.n = 128.0f;

    // Insert into scene materials vector.
    scene.materials = { lightRed, lightGreen, lightBlue, yellow, gray };


// Define point light sources.

    scene.ptLights.resize(2);

    PointLightSource light0 = { Vector3d(100.0, 120.0, 10.0), Color(1.0f, 1.0f, 1.0f) * 0.6f };
    PointLightSource light1 = { Vector3d(5.0, 80.0, 60.0), Color(1.0f, 1.0f, 1.0f) * 0.6f };

    scene.ptLights = { light0, light1 };


// Define surface primitives.

    scene.surfaces.resize(15);

    auto horzPlane = new Plane( 0.0, 1.0, 0.0, 0.0, scene.materials[2] ); // Horizontal plane.
    auto leftVertPlane = new Plane( 1.0, 0.0, 0.0, 0.0, scene.materials[4] ); // Left vertical plane.
    auto rightVertPlane = new Plane( 0.0, 0.0, 1.0, 0.0, scene.materials[4] ); // Right vertical plane.
    auto bigSphere =  new Sphere( Vector3d( 40.0, 20.0, 42.0 ), 22.0, scene.materials[0] ); // Big sphere.
    auto smallSphere = new Sphere( Vector3d( 75.0, 10.0, 40.0 ), 12.0, scene.materials[1] ); // Small sphere.

    
    // Cube +y face.
    auto cubePosYTri1 = new Triangle( Vector3d( 50.0, 20.0, 90.0 ),
                                      Vector3d( 50.0, 20.0, 70.0 ),
                                      Vector3d( 30.0, 20.0, 70.0 ),
                                      scene.materials[3] );
    auto cubePosYTri2 = new Triangle( Vector3d( 50.0, 20.0, 90.0 ),
                                      Vector3d( 30.0, 20.0, 70.0 ),
                                      Vector3d( 30.0, 20.0, 90.0 ),
                                      scene.materials[3] );

    // Cube +x face.
    auto cubePosXTri1 = new Triangle( Vector3d( 50.0, 0.0, 70.0 ),
                                      Vector3d( 50.0, 20.0, 70.0 ),
                                      Vector3d( 50.0, 20.0, 90.0 ),
                                      scene.materials[3]);
    auto cubePosXTri2 = new Triangle( Vector3d( 50.0, 0.0, 70.0 ),
                                      Vector3d( 50.0, 20.0, 90.0 ),
                                      Vector3d( 50.0, 0.0, 90.0 ),
                                      scene.materials[3] );

    // Cube -x face.
    auto cubeNegXTri1 = new Triangle( Vector3d( 30.0, 0.0, 90.0 ),
                                      Vector3d( 30.0, 20.0, 90.0 ),
                                      Vector3d( 30.0, 20.0, 70.0 ),
                                      scene.materials[3]);
    auto cubeNegXTri2 = new Triangle( Vector3d( 30.0, 0.0, 90.0 ),
                                      Vector3d( 30.0, 20.0, 70.0 ),
                                      Vector3d( 30.0, 0.0, 70.0 ),
                                      scene.materials[3] );

    // Cube +z face.
    auto cubePosZTri1 = new Triangle( Vector3d( 50.0, 0.0, 90.0 ),
                                      Vector3d( 50.0, 20.0, 90.0 ),
                                      Vector3d( 30.0, 20.0, 90.0 ),
                                      scene.materials[3]);
    auto cubePosZTri2 = new Triangle( Vector3d( 50.0, 0.0, 90.0 ),
                                      Vector3d( 30.0, 20.0, 90.0 ),
                                      Vector3d( 30.0, 0.0, 90.0 ),
                                      scene.materials[3] );

    // Cube -z face.
    auto cubeNegZTri1 = new Triangle( Vector3d( 30.0, 0.0, 70.0 ),
                                      Vector3d( 30.0, 20.0, 70.0 ),
                                      Vector3d( 50.0, 20.0, 70.0 ),
                                      scene.materials[3] );
    auto cubeNegZTri2 = new Triangle( Vector3d( 30.0, 0.0, 70.0 ),
                                      Vector3d( 50.0, 20.0, 70.0 ),
                                      Vector3d( 50.0, 0.0, 70.0 ),
                                      scene.materials[3] );

    scene.surfaces = { horzPlane, leftVertPlane, rightVertPlane,
                       bigSphere, smallSphere,
                       cubePosXTri1, cubePosXTri2,
                       cubePosYTri1, cubePosYTri2,
                       cubePosZTri1, cubePosZTri2,
                       cubeNegXTri1, cubeNegXTri2,
                       cubeNegZTri1, cubeNegZTri2 };


// Define camera.

    scene.camera = Camera( Vector3d( 150.0, 120.0, 150.0 ),  // eye
                           Vector3d( 45.0, 22.0, 55.0 ),  // lookAt
                           Vector3d( 0.0, 1.0, 0.0 ),  //upVector
                           (-1.0 * imageWidth) / imageHeight,  // left
                           (1.0 * imageWidth) / imageHeight,  // right
                           -1.0, 1.0, 3.0,  // bottom, top, near
                           imageWidth, imageHeight );  // image_width, image_height
                           
}



///////////////////////////////////////////////////////////////////////////
// Modeling of Scene 2.
///////////////////////////////////////////////////////////////////////////

void DefineScene2( Scene &scene, int imageWidth, int imageHeight )
{
   scene.backgroundColor = Color( 0.2f, 0.3f, 0.5f );

    scene.amLight.I_a = Color( 1.0f, 1.0f, 1.0f ) * 0.25f;

// Define materials.

    // Light red.
    Material lightRed = Material();
    lightRed.k_d = Color( 0.9f, 0.14f, 0.14f );
    lightRed.k_a = lightRed.k_d;
    lightRed.k_r = Color( 0.9f, 0.14f, 0.14f ) / 1.5f;
    lightRed.k_rg = Color( 0.9f, 0.14f, 0.14f ) / 1.0f;
    lightRed.n = 64.0f;

    // Light green.
    Material lightGreen = Material();
    lightGreen.k_d = Color( 0.4f, 0.8f, 0.4f );
    lightGreen.k_a = lightGreen.k_d;
    lightGreen.k_r = Color( 0.8f, 0.8f, 0.8f ) / 1.5f;
    lightGreen.k_rg = Color( 0.8f, 0.8f, 0.8f ) / 3.0f;
    lightGreen.n = 64.0f;

    // Light blue.
    Material lightBlue = Material();
    lightBlue.k_d = Color( 0.25f, 0.63f, 0.88f ) * 0.9f;
    lightBlue.k_a = lightBlue.k_d;
    lightBlue.k_r = Color( 0.8f, 0.8f, 0.8f ) / 1.5f;
    lightBlue.k_rg = Color( 0.8f, 0.8f, 0.8f ) / 2.5f;
    lightBlue.n = 64.0f;

    // Yellow.
    Material yellow = Material();
    yellow.k_d = Color( 0.76f, 0.6f, 0.3f );
    yellow.k_a = yellow.k_d;
    yellow.k_r = Color( 0.76f, 0.6f, 0.3f ) / 1.5f;
    yellow.k_rg = Color( 0.8f, 0.8f, 0.8f ) / 3.0f;
    yellow.n = 64.0f;

    // Gray.
    Material gray = Material();
    gray.k_d = Color( 0.6f, 0.6f, 0.6f );
    gray.k_a = gray.k_d;
    gray.k_r = Color( 0.6f, 0.6f, 0.6f );
    gray.k_rg = Color( 0.8f, 0.8f, 0.8f ) / 3.0f;
    gray.n = 128.0f;

    // dark blue.
    Material darkBlue = Material();
    darkBlue.k_d = Color( 0.4f, 0.4f, 0.8f ) / 4.0f;
    darkBlue.k_a = darkBlue.k_d;
    darkBlue.k_r = Color( 0.1f, 0.1f, 0.2f ) / 1.5f;
    darkBlue.k_rg = Color( 0.8f, 0.8f, 0.8f ) / 3.0f;
    darkBlue.n = 64.0f;

    // mercury.
    Material mercuryMat = Material();
    mercuryMat.k_d = Color( 0.74f, 0.66f, 0.5f );
    mercuryMat.k_a = mercuryMat.k_d;
    mercuryMat.k_r = Color( 0.74f, 0.66f, 0.5f ) / 1.5f;
    mercuryMat.k_rg = Color( 0.8f, 0.8f, 0.8f ) / 3.0f;
    mercuryMat.n = 64.0f;

    // venus.
    Material venusMat = Material();
    venusMat.k_d = Color( 1.0f, 0.85f, 0.18f );
    venusMat.k_a = venusMat.k_d;
    venusMat.k_r = Color( 1.0f, 0.85f, 0.18f ) / 1.5f;
    venusMat.k_rg = Color( 0.8f, 0.8f, 0.8f ) / 3.0f;
    venusMat.n = 64.0f;

    // jupiter.
    Material jupiterMat = Material();
    jupiterMat.k_d = Color( 1.0f, 0.58f, 0.11f );
    jupiterMat.k_a = jupiterMat.k_d;
    jupiterMat.k_r = Color( 1.0f, 0.58f, 0.11f ) / 1.5f;
    jupiterMat.k_rg = Color( 1.0f, 0.58f, 0.11f ) / 2.0f;
    jupiterMat.n = 64.0f;

    // uranus.
    Material uranusMat = Material();
    uranusMat.k_d = Color( 0.2f, 0.26f, 0.6f );
    uranusMat.k_a = uranusMat.k_d;
    uranusMat.k_r = Color( 0.2f, 0.26f, 0.6f ) / 1.5f;
    uranusMat.k_rg = Color( 0.8f, 0.8f, 0.8f ) / 3.0f;
    uranusMat.n = 64.0f;

    // Insert into scene materials vector.
    scene.materials = { lightRed, uranusMat, lightBlue, yellow, 
        gray, darkBlue, mercuryMat, venusMat, jupiterMat };


// Define point light sources.

    scene.ptLights.resize(2);

    PointLightSource light0 = { Vector3d(100.0, 120.0, 10.0), Color(1.0f, 1.0f, 1.0f) * 0.4f };
    PointLightSource light1 = { Vector3d(200.0, 80.0, 100.0), Color(1.0f, 0.6f, 1.0f) * 0.6f };

    scene.ptLights = { light0, light1 };


// Define surface primitives.

    auto horzPlane = new Plane( 0.0, 1.0, 0.0, 0.0, scene.materials[5] ); // Horizontal plane.
    auto leftVertPlane = new Plane( 1.0, 0.0, 0.0, 0.0, scene.materials[5] ); // Left vertical plane.
    auto rightVertPlane = new Plane( 0.0, 0.0, 1.0, 0.0, scene.materials[5] ); // Right vertical plane.
    auto jupiter = new Sphere( Vector3d( 60.0, 30.0, 50.0 ), 30.0, scene.materials[8] ); 
    auto saturn = new Sphere( Vector3d( 60.0, 23.0, 130.0 ), 23.0, scene.materials[3] ); 
    auto mercury = new Sphere( Vector3d( 60.0, 13.0, 190.0 ), 13.0, scene.materials[6] ); 
    auto moon = new Sphere( Vector3d( 180.0, 5.0, 70.0 ), 5.0, scene.materials[4] ); 
    auto mars = new Sphere( Vector3d( 180.0, 7.0, 120.0 ), 7.0, scene.materials[0] );
    auto earth =  new Sphere( Vector3d( Vector3d( 140.0, 15.0, 40.0 ) ), 15.0, scene.materials[2] ); 
    auto venus = new Sphere( Vector3d( 140.0, 14.0, 90.0 ), 14.0, scene.materials[7] ); 
    auto uranus = new Sphere( Vector3d( 140.0, 18.0, 150.0 ), 18.0, scene.materials[1] ); 

    scene.surfaces.push_back(horzPlane);
    scene.surfaces.push_back(leftVertPlane);
    scene.surfaces.push_back(rightVertPlane);
    scene.surfaces.push_back(moon);
    scene.surfaces.push_back(earth);
    scene.surfaces.push_back(mars);
    scene.surfaces.push_back(saturn);
    scene.surfaces.push_back(jupiter);
    scene.surfaces.push_back(venus);
    scene.surfaces.push_back(uranus);
    scene.surfaces.push_back(mercury);



    
    std::vector<float *> orderedVertices = Parse(ring1File, 60.0, 23.0, 130.0);
    CreateObject(scene, orderedVertices, scene.materials[6]);
    orderedVertices = Parse(ring2File, 140.0, 18.0, 150.0);
    CreateObject(scene, orderedVertices, scene.materials[2]);

// Define camera.

    scene.camera = Camera( Vector3d( 300.0, 150.0, 300.0 ),  // eye
                           Vector3d( 45.0, 22.0, 55.0 ),  // lookAt
                           Vector3d( 0.0, 1.0, 0.0 ),  //upVector
                           (-1.0 * imageWidth) / imageHeight,  // left
                           (1.0 * imageWidth) / imageHeight,  // right
                           -1.0, 1.0, 3.0,  // bottom, top, near
                           imageWidth, imageHeight );  // image_width, image_height
                           
}

void CreateObject(Scene &scene, std::vector<float *> orderedVertices, Material &material )
{
    for (int i = 0; i < orderedVertices.size() ; i += 4)
    {
        float vertices[4][3];
        for (int k = 0; k < 4; k++) 
        {
            vertices[k][0] = orderedVertices[i + k][0];
            vertices[k][1] = orderedVertices[i + k][1];
            vertices[k][2] = orderedVertices[i + k][2];
        }

        auto cubeTri1 = new Triangle( Vector3d( vertices[0][0],  vertices[0][1],  vertices[0][2] ),
                                        Vector3d( vertices[1][0],  vertices[1][1],  vertices[1][2] ),
                                        Vector3d( vertices[2][0],  vertices[2][1],  vertices[2][2] ),
                                        material );
        auto cubeTri2 = new Triangle( Vector3d( vertices[0][0],  vertices[0][1],  vertices[0][2] ),
                                        Vector3d( vertices[2][0],  vertices[2][1],  vertices[2][2] ),
                                        Vector3d( vertices[3][0],  vertices[3][1],  vertices[3][2] ),
                                        material );
        scene.surfaces.push_back(cubeTri1);
        scene.surfaces.push_back(cubeTri2);
    }
}

std::vector<float *> Parse( const char *filename , float xT, float yT, float zT) {
    // the parser assumes that each face in the .obj file has four vertices
    class Face {
    public:
    int *vertices;
    int normal;

    Face(int *vertices,int normal) {
            this->vertices = vertices;
            this->normal = normal;
        }
    };  

    std::vector<float *> vertices;
    std::vector<Face> faces;

    std::ifstream input(filename);
    std::vector<std::string> lines;
    std::string line;

    std::vector<float *> orderedVertices;
    
    while (!input.eof()) {
        std::getline(input, line);
        lines.push_back(line);
    }
    input.close();

    float x, y, z;
    for (std::string &line : lines) {
        if (line[0] == 'v' && line[1] == ' ') {
            sscanf(line.c_str(), "v %f %f %f", &x, &y, &z);
            vertices.push_back(new float[3]{ x + xT, y + yT, z + zT });
        }

        if(line[0] == 'f') {
            int v0, v1, v2, v3, t0, t1, t2, t3, n;
            sscanf(line.c_str(), "f %d/%d/%d %d/%d/%d %d/%d/%d %d/%d/%d", 
                &v0, &t0, &n, &v1, &t1, &n, &v2, &t2, &n, &v3, &t3, &n);
            int *v = new int[4]{v0 - 1, v1 - 1, v2 - 1, v3 - 1};
                faces.push_back(Face(v, n - 1));
        }
    }

    for (Face &face : faces) {
        if (face.normal == -1) {
            continue;
        } 

        for (int i = 0; i < 4; i++) {
            orderedVertices.push_back(vertices[face.vertices[i]]);
        }
    }
    return orderedVertices;
}


