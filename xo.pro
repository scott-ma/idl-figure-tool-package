PRO xo, x, y, $
clip       = clip,                    $  ; clip,  [x0, y0, x1, y1] 
color      = color,                   $  ; co,    value 
linestyle  = linestyle,               $  ; l,     0:5
max_value  = max_value,               $  ; max
min_value  = min_value,               $  ; min
noclip     = noclip,                  $  ; noc    /
nsum       = nsum,                    $  ; ns     value
polar      = polar,                   $  ; po     /
psym       = psym,                    $  ; ps     0:10
sfill      = symfill,                 $  ; sf     /
ssize      = symsize,                 $  ; ss     value 
t3d        = t3d,                     $  ; t3d    /
thick      = thick,                   $  ; th     value 
tp         = thickp,        $            ; tp     value 
zvalue     = zvalue                      ; zv     {0 to 1}

; =================================================================


; -----------------------------------------------------------------

; value
if (n_params() eq 1) then begin
   if (n_elements(x) eq 0) then begin
     print, 'xo: x is undefined!'
     return
   end 
   ny = x
   nx = findgen(n_elements(ny))
endif else begin
   if (n_elements(x) eq 0) then begin
     print, 'xo: x is undefined!'
     return
   end 
   if (n_elements(y) eq 0) then begin
     print, 'xo: y is undefined!'
     return
   end    
   nx = x
   ny = y
endelse      
 
; axis color
if (n_elements(color) eq 0) then begin
   ncolor=(!d.name eq 'WIN')
endif else begin
   ncolor = color
   if (!d.name eq 'PS') and (color eq 1) then ncolor=0
;   if (!d.name eq 'WIN') and (!p.background le 1) and (color eq !p.background) then ncolor=1-!p.background
endelse

sgn=1
symsgn=0
if (n_elements(psym) ne 0) then begin
    if (psym lt 0) then sgn=-1
    psy = abs(psym)
    case psy of
            9: begin 
                psyf = 16 & symsgn = 1 
               end
            6: begin 
                psyf = 15 & symsgn = 1 
               end
            5: begin 
                psyf = 17 & symsgn = 1 
               end
            4: begin 
                psyf = 14 & symsgn = 1 
               end
           11: begin 
                psyf = 18 & symsgn = 1 
               end
           12: begin 
                psyf = 19 & symsgn = 1 
               end
           13: begin 
                psyf = 20 & symsgn = 1 
               end
           45: begin 
                psyf = 46 & symsgn = 1 
               end
           else:    
    endcase     
endif

; -----------------------------------------------------------------
if (n_elements(symfill) eq 0 and symsgn eq 0) then begin 
oplot, nx, ny, $
clip       = clip,                    $  ; clip,  [x0, y0, x1, y1] 
color      = ncolor,                  $  ; co,    avoid returing 
linestyle  = linestyle,               $  ; l,     0:5
max_value  = max_value,               $  ; max
min_value  = min_value,               $  ; min
noclip     = noclip,                  $  ; noc    /
nsum       = nsum,                    $  ; ns     value
polar      = polar,                   $  ; po     /
psym       = sgn*symcat(psy,th=thickp),  $  ; ps     0:10
symsize    = symsize,                 $  ; syms   value 
t3d        = t3d,                     $  ; t3d    /
thick      = thick,                   $  ; value 
zvalue     = zvalue                      ; {0 to 1}

endif else begin
if (n_elements(linestyle) eq 0) then linestyle=0       

oplot, nx, ny, $
clip       = clip,                    $  ; clip,  [x0, y0, x1, y1] 
color      = ncolor,                  $  ; co,    avoid returing 
linestyle  = linestyle,               $  ; l,     0:5
max_value  = max_value,               $  ; max
min_value  = min_value,               $  ; min
noclip     = noclip,                  $  ; noc    /
nsum       = nsum,                    $  ; ns     value
polar      = polar,                   $  ; po     /
symsize    = symsize,                 $  ; syms   value 
t3d        = t3d,                     $  ; t3d    /
thick      = thick,                   $  ; value 
zvalue     = zvalue                      ; {0 to 1}

oplot, nx, ny, $
clip       = clip,                    $  ; clip,  [x0, y0, x1, y1] 
color      = ncolor,                  $  ; co,    avoid returing 
linestyle  = linestyle,               $  ; l,     0:5
max_value  = max_value,               $  ; max
min_value  = min_value,               $  ; min
noclip     = noclip,                  $  ; noc    /
nsum       = nsum,                    $  ; ns     value
polar      = polar,                   $  ; po     /
psym       = symcat(psyf,th=thickp,co=(!d.name eq 'PS')),   $  ; ps     0:10
symsize    = symsize,                 $  ; syms   value 
t3d        = t3d,                     $  ; t3d    /
thick      = thick,                   $  ; value 
zvalue     = zvalue                      ; {0 to 1}

oplot, nx, ny, $
clip       = clip,                    $  ; clip,  [x0, y0, x1, y1] 
color      = ncolor,                  $  ; co,    avoid returing 
linestyle  = linestyle,               $  ; l,     0:5
max_value  = max_value,               $  ; max
min_value  = min_value,               $  ; min
noclip     = noclip,                  $  ; noc    /
nsum       = nsum,                    $  ; ns     value
polar      = polar,                   $  ; po     /
psym       = symcat(psy,th=thickp),   $  ; ps     0:10
symsize    = symsize,                 $  ; syms   value 
t3d        = t3d,                     $  ; t3d    /
thick      = thick,                   $  ; value 
zvalue     = zvalue                      ; {0 to 1}

endelse

END
