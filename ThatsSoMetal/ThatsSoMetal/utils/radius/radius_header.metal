//
//  radius_header.metal
//  ThatsSoMetal
//
//  Created by Wayne Dahlberg on 6/14/23.
//

#include <metal_stdlib>
using namespace metal;


#ifndef RADIUS
#define RADIUS

float4 radiusColor(float radius, float targetRadius, float edgeRadius, float4 foregroundColor, float4 edgeColor, float4 backgroundColor, bool antiAlias, bool premultiply, float onePixel);

#endif
