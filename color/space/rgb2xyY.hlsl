#include "rgb2xyz.hlsl"
#include "xyz2xyY.hlsl"

/*
contributors: Patricio Gonzalez Vivo
description: 'Converts a linear RGB color to xyY color space.'
use: <float3|float4> rgb2xyY(<float3|float4> rgb)
license:
  - Copyright (c) 2021 Patricio Gonzalez Vivo under Prosperity License - https://prosperitylicense.com/versions/3.0.0
  - Copyright (c) 2021 Patricio Gonzalez Vivo under Patron License - https://lygia.xyz/license
*/

#ifndef FNC_RGB2XYY
#define FNC_RGB2XYY
float3 rgb2xyY(float3 rgb) { return xyz2xyY(rgb2xyz(rgb));}
float4 rgb2xyY(float4 rgb) { return float4(rgb2xyY(rgb.rgb), rgb.a);}
#endif