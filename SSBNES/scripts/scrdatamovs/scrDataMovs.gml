function scrDataMov()
{
	Control.MovList = ds_list_create();	
	/*0*/scrMapMov( scrCrearLista("Fireball" , 5 , true , 110 , 0 , false , false , false , 5 , 20 , .25 , false , false , false , false) );
	/*1*/scrMapMov( scrCrearLista("Firepunch" , 18 , true , 110 , 0 , false , true , true , 24 , 30 , .25 , false , false , false , false) );
	/*2*/scrMapMov( scrCrearLista("Flip" , 16 , true , 110 , 0 , false , true , true , 21 , 30 , .5 , false , false , false , false) );
	/*3*/scrMapMov( scrCrearLista("Head Bang", 15 , true , 110 , 0 , false , true , true , 20 , 40 , .25 , false , false , false , false) );
	/*4*/scrMapMov( scrCrearLista("Foot Bang" , 7 , true , 110 , 0 , false , true , false , 9 , 40 , .25 , false , false , false , false) );
	/*5*/scrMapMov( scrCrearLista("Foot Bang 2" , 8 , true , 110 , 0 , false , true , false , 8 , 40 , .5 , false , false , false , false) );
	/*6*/scrMapMov( scrCrearLista("High Punch" , 8 , true , 110 , 0 , false , true , false , 8 , 40 , .25 , false , false , false , false) );
	/*7*/scrMapMov( scrCrearLista("Aerial Foot Bang" , 10 , true , 110 , 0 , false , true , false , 10 , 20 , .25 , false , true , false , false) );
	/*8*/scrMapMov( scrCrearLista("Aerial Side" , 15 , false , 110 , 0 , false , true , false , 15 , 20 , .25 , false , true , false , false) );
	/*9*/scrMapMov( scrCrearLista("Aerial Back" , 10 , false , 110 , 0 , false , true , false , 10 , 20 , .5 , false , true , false , false) );
	/*10*/scrMapMov( scrCrearLista("Aerial Down" , 1 , false , 110 , 0 , false , true , false , 4 , 10 , .25 , false , true , true , true) );
	/*11*/scrMapMov( scrCrearLista("Aerial Up" , 2 , false , 110 , 0 , false , true , false , 2 , 30 , .2 , true , true , false , false) );
	/*12*/scrMapMov( scrCrearLista("Normal Egg" , 7 , true , 110 , 0 , false , false , false , 5 , 20 , .5 , false , false , false , false) );
	/*13*/scrMapMov( scrCrearLista("Spike Egg" , 14 , true , 110 , 0 , false , true , false , 5 , 20 , .2 , false , false , false , false) );
	/*14*/scrMapMov( scrCrearLista("Shuriken" , 2 , true , 110 , 0 , false , false , false , 5 , 20 , .75 , false , false , false , false) );
	/*15*/scrMapMov( scrCrearLista("Pollier Key" , 7 , true , 110 , 0 , false , false , false , 5 , 20 , .75 , false , false , false , false) );
	/*16*/scrMapMov( scrCrearLista("Roulette" , 0 , false , 110 , 0 , false , false , false , 5 , 20 , .5 , false , false , false , false) );
	/*17*/scrMapMov( scrCrearLista("Chicken Foot" , 5 , true , 110 , 0 , false , true , false , 9 , 40 , .25 , false , false , false , false) );
	/*18*/scrMapMov( scrCrearLista("Pollier Boomerang" , 8 , true , 110 , 0 , false , true , true , 24 , 30 , .25 , false , false , false , false) );
}
///@arg list
function scrMapMov(List)
{
	var Paquete = ds_map_create();
	Paquete[? "Name"] = ds_list_find_value(List , 0);
	Paquete[? "Power"] = ds_list_find_value(List , 1);
	Paquete[? "Root"] = ds_list_find_value(List , 2);
	Paquete[? "Knockback Scaling"] = ds_list_find_value(List , 3);
	Paquete[? "Knockback Fixed"] = ds_list_find_value(List , 4);
	Paquete[? "Lack of power"] = ds_list_find_value(List , 5);
	Paquete[? "Can Knockback"] = ds_list_find_value(List , 6);
	Paquete[? "Is Smash"] = ds_list_find_value(List , 7);
	Paquete[? "Max Power"] = ds_list_find_value(List , 8);
	Paquete[? "Time Attacking"] = ds_list_find_value(List , 9);
	Paquete[? "Animation Speed"] = ds_list_find_value(List , 10);
	Paquete[? "Can Jump"] = ds_list_find_value(List , 11);
	Paquete[? "Is Aerial"] = ds_list_find_value(List , 12);
	Paquete[? "Can Grab"] = ds_list_find_value(List , 13);
	Paquete[? "Multiple Hits"] = ds_list_find_value(List , 14);
	

	
	ds_list_add(Control.MovList , Paquete);
}