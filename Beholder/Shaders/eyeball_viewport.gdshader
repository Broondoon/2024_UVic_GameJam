// Basic viewport mask which 
// Tutorial courtesy of @yokcos on Youtube, "How to make a transparency mask in godot | Microguide"
shader_type canvas_item;
uniform sampler2D mask;

void fragment() {
	// Called for every pixel the material is visible on.
	COLOR = texture(TEXTURE, UV);
	
	vec2 muv = UV;
	COLOR.a = texture(mask, muv).r;
}