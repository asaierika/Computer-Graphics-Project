//============================================================
// STUDENT NAME: Jiang Zhimeng
// NUS User ID.: A0244224N
// COMMENTS TO GRADER:
//
// ============================================================

#include <cmath>
#include "Sphere.h"

using namespace std;



bool Sphere::hit( const Ray &r, double tmin, double tmax, SurfaceHitRecord &rec ) const
{
    double t1, t2;
    Ray transformedR ( r.origin() - center, r.direction() );
    Vector3d Rd = transformedR.direction();
    Vector3d Ro = transformedR.origin();
    double a = dot( Rd, Rd );
    double b = 2 * dot ( Rd, Ro );
    double c = dot( Ro, Ro ) - radius * radius;
    double d = b * b - 4 * a * c;
    if (d < 0.0) 
    {
        return false;
    }
    t1 = (-b + sqrt(d)) / (2 * a);
    t2 = (-b - sqrt(d)) / (2 * a);
    double t = t2;
    if (t1 < t2) 
    {
        t = t2;
    } 

     if ( t < tmin || t > tmax ) return false;

    // We have a hit -- populate hit record. 
    rec.t = t;
    rec.p = transformedR.pointAtParam(t) + center;
    Vector3d N = rec.p - center;
    N.makeUnitVector();
    rec.normal = N;
    rec.material = material;
    return true;
}



bool Sphere::shadowHit( const Ray &r, double tmin, double tmax ) const
{
    double t1, t2;
    Ray transformedR ( r.origin() - center, r.direction() );
    Vector3d Rd = transformedR.direction();
    Vector3d Ro = transformedR.origin();
    double a = dot( Rd, Rd );
    double b = 2 * dot ( Rd, Ro );
    double c = dot( Ro, Ro ) - radius * radius;
    double d = b * b - 4 * a * c;
    if (d < 0.0) 
    {
        return false;
    }
    t1 = (-b + sqrt(d)) / (2 * a);
    t2 = (-b - sqrt(d)) / (2 * a);
    double t = t2;
    if (t1 < t2) 
    {
        t = t2;
    } 

    return ( t >= tmin && t <= tmax );
}
