PRO xt, x, y, str, $
   alignment   = alignment,               $  ; a      {0.0 to 1.0}
   clip        = clip,                    $  ; cl     [x0, y0, x1, y1]
   color       = color,                   $  ; co     value
   data        = data,                    $  ; da     /
   device      = device,                  $  ; de     /
   font        = font,                    $  ; f      integer
   noclip      = noclip,                  $  ; noc    /
   normal      = normal,                  $  ; nor    /  default
   orientation = orientation,             $  ; o      ccw_degrees_from_horiz
   size_char   = charsize,                $  ; s      value
   t3d         = t3d,                     $  ; t3d    /
   ta          = text_axes,               $  ; ta     {0 to 5}
;   tex         = tex,                     $  ; tex    /
   thick_char  = charthick,               $  ; th     value
   width       = width,                   $  ; w      variable]
   z           = z                           ; value

; =================================================================
nnormal = 1
ndata   = 0
ndevice = 0
; text fontsize 8

; -----------------------------------------------------------------

if keyword_set(device) then begin
   nnormal = 0  &  ndata   = 0  &  ndevice = 1
endif
if keyword_set(data) then begin
   nnormal = 0  &  ndata   = 1  &  ndevice = 0
endif
if keyword_set(normal) then begin
   nnormal = 1  &  ndata   = 0  &  ndevice = 0
endif
;if keyword_set(tex) then str=textoidl(str)
str = textoidl(str)

; change normal to axis
if (nnormal eq 1 and keyword_set(normal) eq 0) then begin
   nx = x*(!x.window[1]-!x.window[0]) + !x.window[0]
   ny = y*(!y.window[1]-!y.window[0]) + !y.window[0]
endif else begin
   nx = x  
   ny = y
endelse

; axis color
if (n_elements(color) eq 0) then begin
   ncolor=(!d.name eq 'WIN')
endif else begin
   ncolor = color
   if (!d.name eq 'PS') and (color eq 1) then ncolor=0
   if (!d.name eq 'WIN') and (color eq 0) then ncolor=1
endelse

; text fontsize
if (n_elements(charsize) eq 0) then charsize=0.9 ;8.0/9.0

; -----------------------------------------------------------------
xyouts, nx, ny, str, $
alignment  = alignment,               $  ; {0.0 to 1.0}
charsize   = charsize,                $  ; value
charthick  = charthick,               $  ; value 
clip       = clip,                    $  ; [x0, y0, x1, y1] 
color      = ncolor,                  $  ; avoid returing
data       = ndata,                   $  ; /                      +
device     = ndevice,                 $  ; /                      +
font       = font,                    $  ; integer
noclip     = keyword_set(noclip),     $  ; /
normal     = nnormal,                 $  ; /                      +
orientation= orientation,             $  ; ccw_degrees_from_horiz 
t3d        = keyword_set(t3d),        $  ; /
text_axes  = text_axes,               $  ; {0 to 5}
width      = width,                   $  ; variable]  
z          = z                           ; value

END
