function Layer_blur(){
// Start shader
shader_set(BlurShader); // Replace with your shader
// The layer will automatically draw its contents here
// when assigned via layer_script_begin()

// Reset shader
shader_reset();
}