function CharacterTemplate(_name = "Character", _health = 100, _speed = 4) constructor {
    name = _name;
    hp = _health;
    max_hp = _health;
    speed = _speed;
    x = 0;
    y = 0;
    
    take_damage = function(_amount) {
        hp = max(0, hp - _amount);
    };
    
    heal = function(_amount) {
        hp = min(max_hp, hp + _amount);
    };
}