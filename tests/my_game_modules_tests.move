
#[test_only]
module my_game_modules::my_game_modules_tests;
// uncomment this line to import the module
use my_game_modules::characters;
// use my_game_modules::battle ;
use std::debug;
const ENotImplemented: u64 = 0;
/*
#[test]
fun test_my_game_modules() {
    let (player, weapon) = battle::start_battle();
    debug::print(&player);
    debug::print(&weapon);
    }*/
#[test]
fun test_new_character() {

    let character = characters::new_character(
        characters::get_character_class(),
        20,
        100,
        characters::get_character_status(),
        characters::get_character_weapon()
    );
    debug::print(&character);
}
