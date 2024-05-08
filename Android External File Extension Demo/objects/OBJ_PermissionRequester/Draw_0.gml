draw_set_color(c_white);
draw_set_alpha(1);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if(!permission_requested)
{
    draw_rectangle(room_width/8, room_height/32*2, room_width/8*7, room_height/32*4, true);
    draw_text(room_width/2, room_height/32*3, "< Accept Permission >");
}