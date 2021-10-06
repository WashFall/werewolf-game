if(Hp<maxHp){
	RegenTimer++;
	if(RegenTimer>=RegenTime){
		Hp++;
		RegenTimer=0;
	}
}



