@group(0) @binding(1) var Sampler: sampler;
@group(1) @binding(0) var Texture: texture_external;

@stage(fragment)
fn main(@location(0) fragUV: vec2<f32>,
        @location(1) fragPosition: vec4<f32>) -> @location(0) vec4<f32> {
  return textureSampleLevel(Texture, Sampler, fragUV) * fragPosition;
}