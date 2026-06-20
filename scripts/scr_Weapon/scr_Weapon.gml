function Weapon(_name, _dmg, _type, _range) constructor {
    name = _name;
    damage = _dmg;
    weapon_type = _type;  // "sword", "bow", "staff"
    range = _range;
    on_hit_effect = function(_target) {} // overridden by subtypes for special effects
}

function WeaponMelee(_name, _dmg) : Weapon(_name, _dmg, "sword", 32) constructor {}

function WeaponBow(_name, _dmg) : Weapon(_name, _dmg, "bow", 250) constructor {}

function WeaponFireStaff(_name, _dmg) : Weapon(_name, _dmg, "staff", 200) constructor {
    on_hit_effect = function(_target) {
        // apply burn status, etc.
        show_debug_message(_target.object_index, " is burning!");
    }
}