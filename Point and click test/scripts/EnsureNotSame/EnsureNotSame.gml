// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnsureNotSame(one, two, array_len){
	one_val = one
	two_val = two
	if one_val == two_val{
		if one_val == 0
		{
			two_val += 1
		}
		else if one_val < array_len - 1
		{
			if one_val > 1
				if current_second % 2 == 0
					two_val -= 1
				else
					two_val += 1
			else
				two_val += 1
	    }
	    else{
	        two_val -= 1
	    }
	}
	return two_val
}