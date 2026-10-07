shader_type canvas_item;

uniform sampler2D noise: repeat_enable;
uniform sampler2D noise2: repeat_enable;

void fragment() {
	COLOR.ga = texture(noise, vec2(UV.x + sin(TIME) / 15., UV.y + cos(TIME) / 20.)).rg * texture(noise2, vec2(UV.x - sin(TIME) / 20., UV.y - cos(TIME) / 15.)).rg;
	COLOR.b = + abs((sin(TIME) / 5.) + 0.5) - 0.25;
}
