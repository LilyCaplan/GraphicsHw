#version 330

// input vertex data
in vec3  a_Position;
in vec2  a_TexCoord;


// output data; will be interpolated for each fragment.
out vec2 v_TexCoord;

uniform mat4 u_Projection;
uniform mat4 u_View;


void main()
{
    // Output position of the vertex, in clip space : MVP * position
    gl_Position =  u_Projection * u_View * vec4(a_Position, 1);
    
    v_TexCoord = a_TexCoord;
}
