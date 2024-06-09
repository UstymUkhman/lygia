#include "hue2rgb.hlsl"

/*
contributors: Patricio Gonzalez Vivo
description: 'Converts a HSL color to linear RGB'
use: <float3|float4> hsl2rgb(<float3|float4> hsl)
license:
  - Copyright (c) 2021 Patricio Gonzalez Vivo under Prosperity License - https://prosperitylicense.com/versions/3.0.0
  - Copyright (c) 2021 Patricio Gonzalez Vivo under Patron License - https://lygia.xyz/license
*/

#ifndef FNC_HSL2RGB
#define FNC_HSL2RGB
float3 hsl2rgb(const in float3 hsl) {
    float3 rgb = hue2rgb(hsl.x);
    float C = (1.0 - abs(2.0 * hsl.z - 1.0)) * hsl.y;
    return (rgb - 0.5) * C + hsl.z;
}
float4 hsl2rgb(const in float4 hsl) { return float4(hsl2rgb(hsl.xyz), hsl.w); }
#endif