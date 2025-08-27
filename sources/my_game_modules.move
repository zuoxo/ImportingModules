
module my_game_modules::characters;
// Anyone can use (including external packages)
use std::string::String;
public struct Character has drop{
    name: String,
    health: u32,
    attack: u32,
}
// Only modules in my_game_modules package can use
  public struct SecretWeapon has drop {
      damage: u64,
      magic_power: u64,
  }

public fun new_character(name:String,health:u32,attack:u32):Character{
    Character{
        name,
        health,
        attack,
    }
}

public(package) fun new_secret_weapon():SecretWeapon{
    SecretWeapon { damage: 1000, magic_power: 500 }

}
