#version 330 core
in vec2 TexCoord;
uniform sampler2D tex; // Window texture
uniform sampler2D distortionMap; // Distortion texture
uniform float time; // For animation
out vec4 FragColor;

void main() {
    vec2 distortion = texture(distortionMap, TexCoord).rg * 0.05;
    vec2 distortedCoord = TexCoord + distortion * sin(time);
    FragColor = texture(tex, distortedCoord);
}
