
module my_game_modules::characters;
// Anyone can use (including external packages)
use std::string::String;

// Enum for different character classes
public enum CharacterClass has copy, drop, store {
    Warrior,
    Mage,
    Archer,
    Rogue,
}
// Enum for character status/state
public enum CharacterStatus has copy, drop, store {
    Alive,
    Dead,
    Poisoned,
    Frozen,
    Blessed,
}

// Enum for weapon types
public enum WeaponType has copy, drop, store {
    Sword { sharpness: u32 },
    Bow { range: u32 },
    Staff { magic_bonus: u32 },
    Dagger { speed: u32 },
}
public struct Character has drop{
    class: CharacterClass,
    health: u32,
    attack: u32,
    status: CharacterStatus,
    weapon: WeaponType,
}
// Only modules in my_game_modules package can use
  public struct SecretWeapon has drop {
      damage: u64,
      magic_power: u64,
  }

public fun new_character(class:CharacterClass,health:u32,attack:u32,status:CharacterStatus,weapon:WeaponType):Character{
    Character{
        class,
        health,
        attack,
        status,
        weapon,
    }
}

public(package) fun new_secret_weapon():SecretWeapon{
    SecretWeapon { damage: 1000, magic_power: 500 }

}
// Getter functions for testing
public fun get_character_status(): CharacterStatus {
    CharacterStatus::Dead
}
public fun get_character_class():CharacterClass{
    CharacterClass::Warrior
}
public fun get_character_weapon():WeaponType{
    WeaponType::Sword { sharpness: 10 }
}
