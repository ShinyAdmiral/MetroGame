/// @description fade out over time
y -= hover_speed;
image_xscale += scale_speed;
image_yscale += scale_speed;
alpha_start -= alpha_speed;
image_alpha = alpha_start;
if (alpha_start < 0) instance_destroy(self);