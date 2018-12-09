o_timeline.turn_index = (o_timeline.turn_index + 1)
o_timeline.current_player = o_timeline.player_list[ o_timeline.turn_index mod array_length_1d(o_timeline.player_list)]
o_timeline.current_player.PM = o_timeline.current_player.MaxPM