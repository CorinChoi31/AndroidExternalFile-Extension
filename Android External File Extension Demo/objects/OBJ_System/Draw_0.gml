draw_set_color(c_white);
draw_set_alpha(1);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if(global.__permission)
{
    draw_text(room_width/2, room_height/32*1, "SAF Location: \n" + global.__storage_external);
    
    draw_rectangle(room_width/8*1, room_height/32*2, room_width/8*7, room_height/32*4, true);
    draw_text(room_width/2, room_height/32*3, "< Set SAF Location >");
    
    draw_text(room_width/2, room_height/32*31, global.__storage_external);
    
    if(global.__storage_external != "") {
        draw_set_halign(fa_left);
        draw_set_valign(fa_top);
        
        if(test_sprite != undefined) {
            draw_sprite_ext(test_sprite, -1, 0, 0, 0.5, 0.5, 0, c_white, 0.5);
        }
        
        if(test_audio != undefined) {
            draw_text(16, 32, "audio test ran");
        }
        
        if(test_text != -1) {
            draw_text(16, 64, test_text_content);
        }
        
        draw_set_halign(fa_center);
        draw_set_valign(fa_middle);

        draw_rectangle(room_width/8*1, room_height/32*5, room_width/8*3, room_height/32*7, true);
        draw_text(room_width/8*2, room_height/32*6, "Create Directory");
        
        draw_rectangle(room_width/16*7, room_height/32*5, room_width/16*9, room_height/32*7, true);
        draw_text(room_width/2, room_height/32*6, "Refresh");
        
        draw_rectangle(room_width/8*5, room_height/32*5, room_width/8*7, room_height/32*7, true);
        draw_text(room_width/8*6, room_height/32*6, "Create Text File");
        
        draw_rectangle(room_width/8*2, room_height/32*25, room_width/8*6, room_height/32*27, true);
        draw_text(room_width/8*4, room_height/32*26, "Copy External File to SAF");
    }
    
    if(file_list != undefined && ds_exists(file_list, ds_type_map))
    {
        var _dir_size = file_list[? "directory_length"];
        var _file_size = file_list[? "file_length"];
        
        draw_text(room_width/4, room_height/32*9, "< directory >");
        draw_text(room_width/4*3, room_height/32*9, "< file >");
        for(var i = 0; i < _dir_size; i++)
        {
            draw_text(room_width/4, room_height/32*10 + room_height/64*i, string(i+1) + ": " + file_list[? "directory_" + string(i)]);
        }
        for(var i = 0; i < _file_size; i++)
        {
            draw_text(room_width/4*3, room_height/32*10 + room_height/64*i, string(i+1) + ": " + file_list[? "file_" + string(i)]);
        }
    }
}