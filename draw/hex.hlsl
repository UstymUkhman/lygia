
#include "../sdf/hexSDF.hlsl"

#include "fill.hlsl"
#include "stroke.hlsl"

/*
contributors: Patricio Gonzalez Vivo
description: Draw a hexagon filled or not.
use: hex(<float2> st, <float> size [, <float> width])
license:
  - Copyright (c) 2021 Patricio Gonzalez Vivo under Prosperity License - https://prosperitylicense.com/versions/3.0.0
  - Copyright (c) 2021 Patricio Gonzalez Vivo under Patron License - https://lygia.xyz/license
*/

#ifndef FNC_HEX
#define FNC_HEX
float hex(float2 st, float size) {
    return fill(hexSDF(st), size);
}

float hex(float2 st, float size, float strokeWidth) {
    return stroke(hexSDF(st), size, strokeWidth);
}
#endif