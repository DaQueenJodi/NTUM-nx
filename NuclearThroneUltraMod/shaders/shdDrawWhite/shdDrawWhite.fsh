//
// Set all colours to white but keep the alpha the same
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 colour = vec4(1.0, 1.0, 1.0, texture2D( gm_BaseTexture, v_vTexcoord ).a);
    gl_FragColor = colour;
}