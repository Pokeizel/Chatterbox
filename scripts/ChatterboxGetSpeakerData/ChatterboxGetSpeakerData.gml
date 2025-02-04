/// Returns the value between special characters 
/// (CHATTERBOX_SPEAKERDATA_TAG_...) after the speaker and before the speech.
///
/// @param chatterbox
/// @param contentIndex
/// @param [default]

function ChatterboxGetSpeakerData(_chatterbox, _index, _default = undefined)
{
    var _str = ChatterboxGetContent(_chatterbox, _index);
    if (_str != undefined)
    {
        var _colon_pos = string_pos(":", _str);
        var _c1 = CHATTERBOX_SPEAKERDATA_TAG_OPEN;
        var _c2 = CHATTERBOX_SPEAKERDATA_TAG_CLOSE;
        var _tag_l = string_pos(_c1, _str);
        var _tag_r = string_pos(_c2, _str);
        if (_tag_l > 0 and _tag_r < _colon_pos)
        {
            var _data = string_copy(_str, _tag_l+1, _tag_r-_tag_l-1);
            return _data;
        }
        return _default;
    } else return undefined;
}