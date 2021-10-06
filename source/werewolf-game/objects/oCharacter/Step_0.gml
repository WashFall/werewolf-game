///@description Regen
if (hp<hpMax){
	RegenTimer++;
	if(RegenTimer>=Regen){ 
		hp++;
		RegenTimer = 0;
	}
}