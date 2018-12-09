if collision_point(o_cursor.selection.x,o_cursor.selection.y,o_perso,true,true)
{
	var perso = o_cursor.selection.perso
	
	if image_index == 2 and perso.PM>0 and o_timeline.current_player == perso and self.perso == noone
	{
		
		var coord = posToCoord(x,y)
		
		perso.ord_i = coord[0]
		perso.ord_j = coord[1]
		
		perso.x = x
		perso.y = y
		
		o_cursor.selection.perso = noone
		
		updateSelection()
		
		o_cursor.selection.perso = perso
		
		perso.PM-=1
	}
	else if (perso.PM == 0 and o_timeline.current_player == perso) endTurn()
}