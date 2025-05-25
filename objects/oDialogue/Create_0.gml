text[0] = "Hello World!";
mood[0] = "neutral";
text[1] = "This sentence is a really long sentence because I cannot help adding more to this sentence and I think it's definitely not a run on.";
mood[1] = "serious";
text[2] = "Another test!";
mood[2] = "sad";

text_current = 0;
text_last = 3;
text_width = 300;
text_x = 220;
text_y = 270;

current_mood = 2
oDora.image_index = 2


char_current = 1;
//char_speed = 0.25;
char_speed = 0.4;

text[text_current] = string_wrap(text[text_current], text_width)