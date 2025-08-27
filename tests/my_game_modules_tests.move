
#[test_only]
module my_game_modules::my_game_modules_tests;
// uncomment this line to import the module
use my_game_modules::characters;
use my_game_modules::battle ;
use std::debug;
const ENotImplemented: u64 = 0;

#[test]
fun test_my_game_modules() {
    let (player, weapon) = battle::start_battle();
    debug::print(&player);
    debug::print(&weapon);
}

#[test, expected_failure(abort_code = ::my_game_modules::my_game_modules_tests::ENotImplemented)]
fun test_my_game_modules_fail() {
    abort ENotImplemented
}
