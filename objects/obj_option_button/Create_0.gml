/// @description 

// Inherit the parent event
event_inherited();

my_page = "";

activate_button = function() {
    with (book_manager) {
        goto_page(other.my_page);
    }
}