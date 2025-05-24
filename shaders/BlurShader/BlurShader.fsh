precision mediump float;

varying vec2 v_texcoord;
uniform sampler2D gm_BaseTexture;
uniform vec2 u_blurDirection; // (1.0, 0.0) for horizontal, (0.0, 1.0) for vertical
uniform float u_blurSize;     // Size of blur in pixels

void main() {
    vec4 sum = vec4(0.0);
    float blur[5];
    blur[0] = 0.204164;
    blur[1] = 0.304005;
    blur[2] = 0.193067;
    blur[3] = 0.072335;
    blur[4] = 0.016429;

    for (int i = -4; i <= 4; ++i) {
        float weight = blur[abs(i)];
        vec2 offset = u_blurDirection * float(i) * u_blurSize;
        sum += texture2D(gm_BaseTexture, v_texcoord + offset) * weight;
    }

    gl_FragColor = sum;
}