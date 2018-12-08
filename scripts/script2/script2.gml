var file = file_text_open_read(".\DATA_DE_MERDE.txt");

for (var i = 0; file.hasnext(); i += 1)
   {
   data_extraite[i] = file_text_read_string(file);
   file_text_readln(file);
   }
file_text_close(file);
