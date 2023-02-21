// text box width & height adjustments

var halfw = w * 0.5;


// draw box
draw_set_color(c_black);
draw_set_alpha(0.5);
draw_roundrect_ext(x-halfw-border,y-h-(border*2),x+halfw+border,y,15,15,false);
draw_set_alpha(1);

// draw text
draw_set_colour(c_white);
draw_set_font(fGame);
draw_set_halign(fa_center);
draw_set_valign(fa_top);

draw_text(x,y-h-border,text_current);