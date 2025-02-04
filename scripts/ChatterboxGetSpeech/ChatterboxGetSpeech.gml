/// Returns the string after the first colon in a Chatterbox's content.
///
/// @param chatterbox
/// @param contentIndex

function ChatterboxGetSpeech(_chatterbox, _index)
{
    var _str = ChatterboxGetContent(_chatterbox, _index);
    var _speech = _str;
    if (_str != undefined)
    {
        var _colon_pos = string_pos(":", _str);
        var _space = 0;
        if (_colon_pos > 0) //If there is a colon
        {
            _speech = string_delete(_str, 1, _colon_pos); //Remove the colon and all behind it
            if (string_pos(" ", _speech) == 1) //If there is still whitespace remaining, remove it
            {
                for (var i = 0; string_char_at(_speech, i) == " "; ++i) {
                    _space++;
                }
            }
        }
        _str = string_copy(_speech, _space, string_length(_speech));
        return _str;
    } else return undefined;
}