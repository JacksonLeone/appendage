var _len = string_length(text[text_current]);


current_mood = mood[text_current]
show_debug_message(current_mood)

if current_mood == "sad" { oDora.image_index = 1 }
if current_mood == "neutral" { oDora.image_index = 2 }
if current_mood == "surprised" { oDora.image_index = 3 }
if current_mood == "excited" { oDora.image_index = 4 }
if current_mood == "serious" { oDora.image_index = 4 }

if (char_current < _len)
{
	char_current = _len;
}
else 
{
	text_current += 1;
	if (text_current >= text_last)
	{	
		text_current = 0
		text[text_current] = string_wrap(text[text_current], text_width)
		char_current = 0
		current_mood = 0
	}
	else
	{ 
		text[text_current] = string_wrap(text[text_current], text_width)
		char_current = 0;
		
	}
}

