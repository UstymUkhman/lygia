#include "triangle.cuh"
#include "../../math/cross.cuh"
#include "../../math/operations.cuh"
#include "../../math/normalize.cuh"

/*
contributors: Patricio Gonzalez Vivo
description: Returns the normal of a triangle
use: <float3> getNormal(<Triangle> tri)
license:
  - Copyright (c) 2021 Patricio Gonzalez Vivo under Prosperity License - https://prosperitylicense.com/versions/3.0.0
  - Copyright (c) 2021 Patricio Gonzalez Vivo under Patron License - https://lygia.xyz/license
*/

#ifndef FNC_TRIANGLE_NORMAL
#define FNC_TRIANGLE_NORMAL

inline __host__ __device__ float3 normal(const Triangle& _tri) { return normalize( cross( _tri.b - _tri.a, _tri.c - _tri.a) ); }

#endif