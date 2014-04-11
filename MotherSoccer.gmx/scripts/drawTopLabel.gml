var msg = "Player " + string(getCurrentPlayer()) + ": " + getAttackOrDefendMessage() + "!";

draw_set_font(font28)
draw_set_halign(fa_left)
draw_text(10, 10, msg)
