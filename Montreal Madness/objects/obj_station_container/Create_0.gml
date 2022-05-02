/// @description Insert description here
p_width = sprite_get_width(spr_characters);
p_height = sprite_get_width(spr_characters);

max_char_index = sprite_get_number(spr_characters) - 1;

x_end_pos = x + p_width * person_max + person_max + 7;
y_end_pos = y + p_height + 8;

character_slots = array_create(person_max, noone);