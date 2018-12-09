if collision_point(o_cursor.selection.x,o_cursor.selection.y,o_perso,true,true)
{
	if image_index == 2
	{
		var perso = o_cursor.selection.perso
		
		var coord = posToCoord(x,y)
		
		perso.ord_i = coord[0]
		perso.ord_j = coord[1]
		
		perso.x = x
		perso.y = y
		
		updateSelection()
		o_cursor.selection.perso = perso
	}
}