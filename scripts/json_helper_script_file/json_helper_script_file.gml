// JSON Helper Script File


function export_json(_file_name, _map) {
	var _file = file_text_open_write(_file_name);
	file_text_write_string(_file, json_encode(_map));
	file_text_close(_file);
}

function import_json(_file_name) {
	if (file_exists(_file_name)) {
	    var _file, _json_string; 
		_file = file_text_open_read(_file_name);
		_json_string = "";
	    while (!file_text_eof(_file)) {
	        _json_string += file_text_read_string(_file);
	        file_text_readln(_file);
	    }
	    file_text_close(_file);
	    return json_decode(_json_string);
	}
	return undefined;
}

function ds_list_add_list(_id, _value) {
	ds_list_add(_id, _value);
	ds_list_mark_as_list(_id, last_list_index(_id));
}

function ds_list_add_map(_id, _value) {
	ds_list_add(_id, _value);
	ds_list_mark_as_map(_id, last_list_index(_id));
}

function last_list_index(_id) {
	return ds_list_size(_id) - 1;
}
