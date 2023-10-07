state = "idle";

v_velocity = 0;    // Dikey hız
grav_value = 0.3;  // Yerçekimi değeri
jump_strength = 10; // Zıplama gücü
move_speed = 5;    // Yatay hareket hızı

max_health = 100;  // Oyuncunun maksimum sağlık değeri
current_health = 100;  // Oyuncunun şu anki sağlık değeri

/// @function ApplyDamage(amount)
/// @param amount Hasar miktarı
/// @description Oyuncuya belirli miktarda hasar uygular.
function ApplyDamage(amount) {
    if (damage_timer <= 0) {
        current_health -= amount;
        damage_timer = damage_cooldown;
    }
}
