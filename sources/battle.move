module my_game_modules::battle ;
use my_game_modules::characters;
use my_game_modules::characters::{Character, SecretWeapon};
public fun start_battle(): (Character, SecretWeapon) {
    // ✅ Can use public items
    let player= characters::new_character(b"Player".to_string(), 100, 10);
    // ✅ Can use public(package) items (same package)
    let secret_weapon = characters::new_secret_weapon();
    (player, secret_weapon)
}
