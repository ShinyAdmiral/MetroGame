/// @description debugger only
exit;
var _size = ds_list_size(metro_line_connections[?"orange"]);

for (var i = 1; i < _size; ++i){
	draw_line_color(metro_line_connections[?"orange"][|i - 1].x, metro_line_connections[?"orange"][|i - 1].y,
					metro_line_connections[?"orange"][|i].x, metro_line_connections[?"orange"][|i].y,
					c_orange, c_red);
}

_size = ds_list_size(metro_line_connections[?"blue"]);
for (var i = 1; i < _size; ++i){
	draw_line_color(metro_line_connections[?"blue"][|i - 1].x, metro_line_connections[?"blue"][|i - 1].y,
					metro_line_connections[?"blue"][|i].x, metro_line_connections[?"blue"][|i].y,
					c_aqua, c_purple);
}

_size = ds_list_size(metro_line_connections[?"yellow"]);
for (var i = 1; i < _size; ++i){
	draw_line_color(metro_line_connections[?"yellow"][|i - 1].x, metro_line_connections[?"yellow"][|i - 1].y,
					metro_line_connections[?"yellow"][|i].x, metro_line_connections[?"yellow"][|i].y,
					c_yellow, c_white);
}

_size = ds_list_size(metro_line_connections[?"green"]);
for (var i = 1; i < _size; ++i){
	draw_line_color(metro_line_connections[?"green"][|i - 1].x, metro_line_connections[?"green"][|i - 1].y,
					metro_line_connections[?"green"][|i].x, metro_line_connections[?"green"][|i].y,
					c_green, c_fuchsia);
}


