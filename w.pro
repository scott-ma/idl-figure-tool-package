PRO w, window_index, $ 
colors = clolors,       $  ; c      value 
free   = free,          $  ; f      /
pixmap = pixmap,        $  ; p      /
retain = retain,        $  ; r      0:2
title  = title,         $  ; t      string 
xpos   = xpos,          $  ; xp     value 
xsize  = xsize,         $  ; xs     pixels 
ypos   = ypos,          $  ; yp     value 
ysize  = ysize             ; ys     pixels 

; =================================================================

if (n_elements(window_index) eq 0) then window_index=!d.window+1
;if (n_elements(xsize) eq 0) then xsize=320
;if (n_elements(ysize) eq 0) then ysize=142

; -----------------------------------------------------------------
window, window_index, $ 
colors = clolors,                     $  ; c      value 
free   = keyword_set(free),           $  ; f      /
pixmap = keyword_set(pixmap),         $  ; p      /
retain = retain,                      $  ; r      0:2
title  = title,                       $  ; t      string 
xpos   = xpos,                        $  ; xp     value 
xsize  = xsize,                       $  ; xs     pixels 
ypos   = ypos,                        $  ; yp     value 
ysize  = ysize                           ; ys     pixels 

END
