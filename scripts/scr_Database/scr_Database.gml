function InitializeDatabase() {
	global.weapon_db = {
        iron_sword: function() { return new WeaponSword("Iron Sword", 10); },
        rusty_dagger: function() { return new WeaponSword("Rusty Dagger", 3); },
        ember_staff: function() { return new WeaponFireStaff("Staff of Embers", 12); }
    };

    global.class_db = {
        warrior: function() { return new ClassWarrior(); },
        mage: function() { return new ClassMage(); }
    };
}