/// @description  speaker_delete(id);
/// @function  speaker_delete
/// @param id
// Deletes a speaker

//Args
var _id = argument[0];

//Create
ds_list_delete(global.speakers, _id);
