module my_game_modules::battle ;
use my_game_modules::characters;
public fun start_battle(){
    // ✅ Can use public items
    let player= characters::new_character(b"Player".to_string(), 100, 10);
    // ✅ Can use public(package) items (same package)
    let secret_weapon = characters::new_secret_weapon();
}
