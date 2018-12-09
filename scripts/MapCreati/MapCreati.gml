var file = file_text_open_read(working_directory + "\DATA_DE_MERDE.txt");

var previous_jmax=0
dalles[128,128]=noone;
for (var i = 0; !file_text_eof(file) ; i += 1)
{
	data_extraite[i] = file_text_readln(file);
	var jmax = string_length(data_extraite[i])
   
	for (var j = 1; j < jmax; j += 1)
		{
		char = string_char_at(data_extraite[i],j);
	   
		if char == "a"
		{
			r = 57
			var realpos=coordToPos(i,j);
			
			var new_dalle = instance_create_depth(realpos[0],realpos[1],0,o_dalle)
			dalles[i,j] = new_dalle;
			//Initialisation des neighbros
			if dalleIsHere(i-1,j+1)
			{
			new_dalle.neighbro_0 = dalles[i-1,j+1]
			dalles[i-1,j+1].neighbro_5 = new_dalle
			}
			
			if dalleIsHere(i-1,j)
			{
			new_dalle.neighbro_3 = dalles[i-1,j]
			dalles[i-1,j].neighbro_2 = new_dalle
			}
			if dalleIsHere(i,j-1)
			{
			new_dalle.neighbro_4 = dalles[i,j-1]
			dalles[i,j-1].neighbro_1 = new_dalle
			}
			/*
			dalles[i,j-1] = new_dalle
		   
		   
			if (i!=0 and j<previous_jmax) and (dalles[i-1,j] != noone)
			{
				new_dalle.neighbro_0 = dalles[i-1,j]
				dalles[i-1,j].neighbro_5 = new_dalle
			}
		   
			if (i!=0 and j<=previous_jmax) and (dalles[i-1,j-1] != noone)
			{
				new_dalle.neighbro_3 = dalles[i-1,j-1]
				dalles[i-1,j-1].neighbro_2 = new_dalle
			}
		   
			if (j != 1) and (dalles[i,j-2] != noone)
			{
				new_dalle.neighbro_4 = dalles[i,j-2]
				dalles[i,j-2].neighbro_1 = new_dalle
			}*/
			previous_jmax = jmax                                          
		}
	}//baslek
}
file_text_close(file);
