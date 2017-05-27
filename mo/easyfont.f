bu: idiom easyfont:
import mo/image
import mo/draw

: font  ( glyphw glyphh -- <name> <path> )  image lastbody subdivide ;

\ variable fnt  default-font fnt !
\ : fontw  z" A" al_get_text_width s>p ;
\ : textw  ;
\ : fonth  al_get_font_line_height s>p ;
\ : aprint ( str count alignment -- )
\     -rot zstring >r  >r  fnt @ color@af at@ 2af r> r@ al_draw_text
\     fnt @ r> al_get_text_width s>p 0 +at ;
\ : print  ( str count -- )  ALLEGRO_ALIGN_LEFT aprint ;
\ : printr  ( str count -- )  ALLEGRO_ALIGN_RIGHT aprint ;
\ : printc  ( str count -- )  ALLEGRO_ALIGN_CENTER aprint ;
\ : font>  ( font -- <code> )  fnt !  r> call ;
