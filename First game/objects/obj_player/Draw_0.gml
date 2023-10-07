// Oyuncu sprite'ını çiz
draw_self();

// Sağlık barını çiz 
var bar_width = 200;
var bar_height = 20;
var bar_x = 10;
var bar_y = 10;

// Sağlık oranını hesapla
var health_ratio = current_health / max_health;

// Sağlık barını çiz
draw_rectangle(bar_x, bar_y, bar_x + bar_width, bar_y + bar_height, false);
draw_rectangle_color(bar_x, bar_y, bar_x + bar_width * health_ratio, bar_y + bar_height, c_red, c_red, c_red, c_red, false);