// Entity Stats Information
max_hp = 10;
hp = max_hp;
attack = 1;
defence = 1;
move_speed = 1;

entity_class = noone;
entity_weapon = noone; 

TakeDamage = function(amount) {
	hp -= amount;	
	
	if (hp <= 0) { 
		Die();
	}
}

Die = function() {
	instance_destroy();
}

RecalculateStats = function() {
	// Refresh attack
	// Refresh defence
	// Refresh move_speed
	
	// Reference to character class
	// Reference to weapon maybe?
}