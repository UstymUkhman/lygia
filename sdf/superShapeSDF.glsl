#include "../space/cart2polar.glsl"

/*
original_author: Kathy McGuiness
description: |
    It returns a supershape, which is a mathematical function for modelling natural forms develop by [Paul Bourke](http://paulbourke.net/geometry/) and Johan Gielis. 
    Some nots about the parameters:

        * `m` determines number of sides/branches
        * `m = 0` yields a circle
        * `a!=b` results in an assymetrical shape
        * `n1=n2=n3<1` the shape is "pinched"
        * `n1>n2,n3` the shape is "bloated"
        * `n1!=n2!=n3` the shape is assymetrical
        * `n1=n2=n3=1` the shape is a square
        * `n1=n2=n3=2` the shape is a star

    For more information about the supershape, check [this article](https://www.algosome.com/articles/supershape-algorithm.html) by [Algosome](https://www.algosome.com/).
    
use: <float> supershapeSDF(<vec2> st, <float> size s, <float> a, <float> b, <float> n1, <float> n2, <float> n3, <float> m)
examples:
    - https://raw.githubusercontent.com/patriciogonzalezvivo/lygia_examples/main/draw_supershape.frag
*/

#ifndef FNC_SUPERSHAPESDF
#define FNC_SUPERSHAPESDF
float superShapeSDF( in vec2 st, in float s, in float a, in float b, in float n1, in float n2, in float n3, in float m ) {
    st = st * 2. - 1.0;
    vec2 polar = cart2polar( st );
    float d = polar.y;
    float theta = polar.x;
    float t1 = abs((1.0/a) * cos(m * theta / 4.0));
    t1 = pow(t1, n2);
    float t2 = abs((1.0/b) * sin(m * theta / 4.0));
    t2 = pow(t2, n3);
    float t3 = t1 + t2;
    float r = pow(t3, -1.0 / n1);
    vec2 q = s * r * vec2(cos(theta), sin(theta));
    return d - length(q); 
}
#endif