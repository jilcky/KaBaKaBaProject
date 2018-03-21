/// @description crypt_file(file_name,password)
/// @function crypt_file
/// @param file_name
/// @param password
_str=""
if !file_exists(argument0)
{
    _________f=file_text_open_append(argument0)
    file_text_close(_________f)
}
_file=file_text_open_read(argument0)
while !file_text_eof(_file)
{
    _str+=file_text_read_string(_file)
    file_text_readln(_file)
}
return(crypt_string(_str,argument1))
file_text_close(_file)
