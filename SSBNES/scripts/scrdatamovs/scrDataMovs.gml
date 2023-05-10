function scrDataMov()
{
	Control.MovList = ds_list_create();	
	/*00*/scrCreateMov("MAR Ground Neutral" , 5 , true , 110 , 0 , false , false , false , 5 , 20 , .25 , false , false , false , false);
	/*01*/scrCreateMov("MAR Ground Smash Side" , 18 , true , 110 , 0 , false , true , true , 24 , 30 , .25 , false , false , false , false);
	/*02*/scrCreateMov("MAR Ground Smash Down" , 8 , true , 110 , 0 , false , true , true , 21 , 30 , .5 , false , false , false , false);
	/*03*/scrCreateMov("MAR Ground Smash Up", 15 , true , 110 , 0 , false , true , true , 20 , 40 , .25 , false , false , false , false);
	/*04*/scrCreateMov("MAR Ground Attack Side" , 7 , true , 110 , 0 , false , true , false , 9 , 40 , .25 , false , false , false , false);
	/*05*/scrCreateMov("MAR Ground Attack Down" , 8 , true , 110 , 0 , false , true , false , 8 , 40 , .5 , false , false , false , false);
	/*06*/scrCreateMov("MAR Ground Attack Up" , 8 , true , 110 , 0 , false , true , false , 8 , 40 , .25 , false , false , false , false);
	/*07*/scrCreateMov("MAR Aerial Neutral" , 10 , true , 110 , 0 , false , true , false , 10 , 20 , .25 , false , true , false , false);
	/*08*/scrCreateMov("MAR Aerial Side" , 15 , false , 110 , 0 , false , true , false , 15 , 20 , .25 , false , true , false , false);
	/*09*/scrCreateMov("MAR Aerial Back" , 10 , false , 110 , 0 , false , true , false , 10 , 20 , .5 , false , true , false , false);
	/*10*/scrCreateMov("MAR Aerial Down" , 1 , false , 110 , 0 , false , true , false , 4 , 10 , .35 , false , true , true , true);
	/*11*/scrCreateMov("MAR Aerial Up" , 2 , false , 110 , 0 , false , true , false , 2 , 30 , .2 , true , true , true , false);
	
	/*12*/scrCreateMov("POL Ground Neutral 1" , 7 , true , 110 , 0 , false , false , false , 5 , 20 , .5 , false , false , false , false);
	/*13*/scrCreateMov("POL Ground Neutral 2" , 14 , true , 110 , 0 , false , true , false , 5 , 20 , .2 , false , false , false , false);
	/*14*/scrCreateMov("POL Ground Neutral 3" , 2 , true , 110 , 0 , false , false , false , 5 , 20 , .75 , false , false , false , false);
	/*15*/scrCreateMov("POL Ground Neutral 4" , 7 , true , 110 , 0 , false , false , false , 5 , 20 , .75 , false , false , false , false);
	/*16*/scrCreateMov("POL Ground Attack Down" , 0 , false , 110 , 0 , false , false , false , 5 , 20 , .5 , false , false , false , false);
	/*17*/scrCreateMov("POL Ground Attack Up" , 8 , true , 110 , 0 , false , true , false , 8 , 40 , .25 , false , false , false , false);
	/*18*/scrCreateMov("POL Ground Smash Side" , 8 , true , 110 , 0 , false , true , true , 24 , 30 , .25 , false , false , false , false);
	/*19*/scrCreateMov("POL Ground Smash Down" , 8 , true , 110 , 0 , false , true , true , 21 , 30 , .5 , false , false , false , false);
	/*20*/scrCreateMov("POL Ground Smash Up", 15 , true , 110 , 0 , false , true , true , 20 , 20 , .25 , false , false , false , false);
	/*21*/scrCreateMov("POL Ground Attack Side" , 5 , true , 110 , 0 , false , true , false , 9 , 40 , .25 , false , false , false , false);
	/*22*/scrCreateMov("POL Aerial Neutral" , 1 , true , 110 , 0 , false , false , false , 1 , 30 , .25 , false , true , false , false);
	/*23*/scrCreateMov("POL Aerial Side" , 5 , false , 110 , 0 , false , true , false , 5 , 20 , .25 , false , true , false , false);
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

function scrCreateMov(Name , Power , Root , KnockbackScaling , KnockbackFixed , LackOfPower , CanKnockback , IsSmash , MaxPower , TimeAttacking , AnimationSpeed , CanJump , IsAerial , CanGrab , MultipleHits)
{
	scrMapMov (scrCrearLista(Name , Power , Root , KnockbackScaling , KnockbackFixed , LackOfPower , CanKnockback , IsSmash , MaxPower , TimeAttacking , AnimationSpeed , CanJump , IsAerial , CanGrab , MultipleHits) );
}