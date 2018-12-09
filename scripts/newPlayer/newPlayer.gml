var i = argument0
var j = argument1

var pos = coordToPos(i,j)

var new_player = instance_create_depth(pos[0],pos[1],-1,o_perso)
new_player.ord_i = i
new_player.ord_j = j
new_player.faction = argument2
new_player.label = argument3
global.dalles[i,j].perso = new_player

return new_player