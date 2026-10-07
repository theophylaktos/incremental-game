shader_type canvas_item;

uniform sampler2D noise: repeat_enable;

void fragment() {
	COLOR.ga = texture(noise, vec2(UV.x + sin(TIME) / 15., UV.y + cos(TIME) / 20.)).rg;
	COLOR.b = + abs((sin(TIME) / 5.) + 0.5) - 0.25;
}
