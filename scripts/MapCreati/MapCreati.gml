var file = file_text_open_read(working_directory + "\DATA_DE_MERDE.txt");

global.dalles[128,128] = noone
var data_extraite
for (var i = 0; !file_text_eof(file) ; i += 1)
{
	data_extraite[i] = file_text_readln(file);
	var jmax = string_length(data_extraite[i])
   
	for (var j = 1; j < jmax; j += 1)
		{
		var char = string_char_at(data_extraite[i],j);
	   
		if char == "d" var object_type = o_dalle
		else if char == "w" var object_type = o_wall
		else if char == "h" var object_type = o_hole
		else continue
		global.r = 57
		var realpos=coordToPos(i,j);
			
		var new_dalle = instance_create_depth(realpos[0],realpos[1],0,object_type)
		global.dalles[i,j] = new_dalle;
		//Initialisation des neighbros
		if dalleIsHere(i-1,j+1,o_case)
		{
		new_dalle.neighbro_0 =global.dalles[i-1,j+1]
		global.dalles[i-1,j+1].neighbro_5 = new_dalle
		}
			
		if dalleIsHere(i-1,j,o_case)
		{
		new_dalle.neighbro_3 =global.dalles[i-1,j]
		global.dalles[i-1,j].neighbro_2 = new_dalle
		}
		if dalleIsHere(i,j-1,o_case)
		{
		new_dalle.neighbro_4 =global.dalles[i,j-1]
		global.dalles[i,j-1].neighbro_1 = new_dalle
		}                       
	}
}
file_text_close(file);


var i = 0
var j = 1

var pos = coordToPos(i,j)

var new_perso = instance_create_depth(pos[0],pos[1],-1,o_perso)
new_perso.ord_i = i
new_perso.ord_j = j

