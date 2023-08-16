// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
#version 460 core

precision highp float;

#include <flutter/runtime_effect.glsl>

layout(location = 0) uniform vec2 uPixels;
layout(location = 1) uniform vec2 uSize;
layout(location = 2) uniform sampler2D uTexture;

out vec4 fragColor;

void main() {
  vec2 uv = FlutterFragCoord().xy / uSize;
  vec2 puv = round(uv * uPixels) / uPixels;
  fragColor = texture(uTexture, puv);
}
