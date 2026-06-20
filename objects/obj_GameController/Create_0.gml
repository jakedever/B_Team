if (instance_number(obj_GameController) > 1) {
    instance_destroy();
    exit;
}

InitializeDatabase();
room_goto(Battlefield);