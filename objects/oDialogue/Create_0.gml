text[0] = "Hello World!";
text[1] = "This sentence is a really long sentence because I cannot help adding more to this sentence and I think it's definitely not a run on.";

text_current = 0;
text_last = 1;
text_width = 300;
text_x = 32;
text_y = 32;


char_current = 1;
//char_speed = 0.25;
char_speed = 0.4;

text[text_current] = string_wrap(text[text_current], text_width)