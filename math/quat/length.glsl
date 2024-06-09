#include "lengthSq.glsl"

/*
contributors: Patricio Gonzalez Vivo
description: 'Returns the lenght of a quaternion

  '
use: <QUAT> quatLength(<QUAT> q)
license:
  - Copyright (c) 2021 Patricio Gonzalez Vivo under Prosperity License - https://prosperitylicense.com/versions/3.0.0
  - Copyright (c) 2021 Patricio Gonzalez Vivo under Patron License - https://lygia.xyz/license
*/

#ifndef FNC_QUADLENGTH
#define FNC_QUADLENGTH
float quatLength(QUAT q) { return sqrt(quatLengthSq(q)); }
#endif