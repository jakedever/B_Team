function CharacterClass(_name, _baseHP, _baseATK, _baseDEF, _baseSPD) constructor {
    name = _name;
    baseHP = _baseHP;
    baseATK = _baseATK;
    baseDEF = _baseDEF;
    baseSPD = _baseSPD;

    special_ability = function() {
        show_debug_message(name + " has no special ability defined.");
    }
}

function ClassWarrior() : CharacterClass("Warrior", 120, 15, 10, 5) constructor {
    // rage = 0;
    special_ability = function() {
        // rage += 10;
        show_debug_message("Warrior uses Shield Bash!");
    }
}

function ClassMage() : CharacterClass("Mage", 70, 20, 4, 7) constructor {
    mana = 100;
    special_ability = function() {
        mana -= 20;
        show_debug_message("Mage casts Fireball!");
    }
}