var file = file_text_open_read(".\DATA_DE_MERDE.txt");

for (var i = 0; file.hasnext(); i += 1)
   {
   data_extraite[i] = file_text_read_string(file);
   file_text_readln(file);
   for (var j = 0; j < strlen(data_extraite[i]); j += 1)
	   {
	   char = data_extraite[i][j];
	   
	   var x = (j+i/1.5)*98+49
	   var y = 112*i+56
	   instance_create_depth(x,y,0,o_dalle)
	   
	   }
   }
file_text_close(file);
