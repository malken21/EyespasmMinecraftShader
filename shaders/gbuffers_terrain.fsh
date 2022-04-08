uniform int worldTime;

float sindata;

void main() {
	sindata = sin(worldTime);
	if(sindata >= 0.5) {
		gl_FragData[0] = vec4(0, 0, 1, 1);
	} else if(sindata <= -0.5) {
		gl_FragData[0] = vec4(0, 1, 0, 1);
	} else {
		gl_FragData[0] = vec4(1, 0, 0, 1);
	}
}