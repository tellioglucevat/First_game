// ---- Oyuncu Hareketi ----

if (keyboard_check(vk_right)) {
    x += move_speed;  // Sağa hareket
}

if (keyboard_check(vk_left)) {
    x -= move_speed;  // Sola hareket
}

// ---- Zıplama ----
if (place_meeting(x, y+1, obj_ground) && keyboard_check_pressed(vk_space)) {
    v_velocity = -jump_strength;
}

// ---- Yerçekimi Uygulama ----
if (!place_meeting(x, y+1, obj_ground)) {
    v_velocity += grav_value;
} else if (v_velocity > 0) {
    while (!place_meeting(x, y+1, obj_ground)) {
        y += 1;
    }
    v_velocity = 0;
}

y += v_velocity;
