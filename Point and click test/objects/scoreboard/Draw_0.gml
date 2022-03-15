draw_set_font(Font1)
draw_set_color(c_black)
draw_text(0,30,"Score: " + string(max(player_score, 0)))
draw_healthbar(8,8,256,32,reputationLeft,c_black,c_red,c_lime,0,true,true)