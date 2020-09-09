/// @description Book Manager


goto_page = function(_page_name) {
    
    //destroy existing pages
    instance_destroy(obj_text_box);
    instance_destroy(obj_option_button);
    
    //create text
    with (instance_create_layer(40, 80, layer, obj_text_box)) {
        my_text = other.the_book[? _page_name][? "page text"];
    }
    
    //create options
    for (var i = 0; i < ds_list_size(the_book[? _page_name][? "page options"]); i += 1) {
    
        with (instance_create_layer(room_width/2, room_height/2 + (i * 80), layer, obj_option_button)) {
            my_text = other.the_book[? _page_name][? "page options"][| i][? "option text"];
            my_page = other.the_book[? _page_name][? "page options"][| i][? "option page"];
        }
    
    }
    
}

the_book = import_json("CYOA_JSON.txt");
goto_page("Start");