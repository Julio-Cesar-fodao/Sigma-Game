/// @description Player Ações Normais
var _hdir = keyboard_check(vk_right) -keyboard_check(vk_left);
var _vdir = keyboard_check(vk_down) -keyboard_check(vk_up);

mov_direc = point_direction(x, y, x + _hdir, y + _vdir);

vel_andar = 0;

if(_hdir != 0 or _vdir != 0)
{
	vel_andar = velocidade_mov;
}

h_veloc = lengthdir_x(vel_andar, mov_direc);
v_veloc = lengthdir_y(vel_andar, mov_direc);


if(place_meeting(x + h_veloc, y, obj_colisao_parede))
{
	while(!place_meeting(x + sign(h_veloc), y, obj_colisao_parede))
	{
		x += sign(h_veloc);	
	}
	h_veloc = 0;
}

if(place_meeting(x, y + v_veloc, obj_colisao_parede))
{
	while(!place_meeting(x, y + sign(v_veloc), obj_colisao_parede))
	{
		y += sign(v_veloc);	
	}
	v_veloc = 0;
}

x += h_veloc;
y += v_veloc;




