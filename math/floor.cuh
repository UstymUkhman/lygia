#include "make.cuh"

/*
contributors: Patricio Gonzalez Vivo
description: this file contains the definition of the floor function for float2, float3, and float4 types, to match GLSL's behavior.
use: <float2|float3|float4> floor(<float2|float3|float4> value);
license:
  - Copyright (c) 2021 Patricio Gonzalez Vivo under Prosperity License - https://prosperitylicense.com/versions/3.0.0
  - Copyright (c) 2021 Patricio Gonzalez Vivo under Patron License - https://lygia.xyz/license
*/

#ifndef FNC_FLOOR
#define FNC_FLOOR
inline __host__ __device__ float2 floor(const float2& v) { return make_float2(floorf(v.x), floorf(v.y)); }
inline __host__ __device__ float3 floor(const float3& v) { return make_float3(floorf(v.x), floorf(v.y), floorf(v.z)); }
inline __host__ __device__ float4 floor(const float4& v) { return make_float4(floorf(v.x), floorf(v.y), floorf(v.z), floorf(v.w)); }
#endif