#version 330


in vec2 v_TexCoord;

uniform sampler2D u_Sampler;

out vec4 fragColor;

void main(){
    
    
    // Material properties
    vec3 MaterialDiffuseColor = texture(u_Sampler, v_TexCoord).xyz;
    fragColor = texture(u_Sampler, v_TexCoord);
    
}
