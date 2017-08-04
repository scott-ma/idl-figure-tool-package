PRO xi, img, $
fmt        = format,                      $  ; fmt
margin     = margin,                      $  ; mar
position   = position                        ; pos    [x0, y0, x1, y1]  
   
; =================================================================


; -----------------------------------------------------------------

if (n_elements(margin) eq 0) then begin
    margin = [0.015,0.015]
endif
if (n_elements(position) eq 0) then begin
    position = [0.1,0.1,0.8,0.8]
endif

; image position
imgsz = size(img,/dim)
imgnx = imgsz[0] 
imgny = imgsz[1] 
ratio = double(imgny)/imgnx

xsize = (position[2]-position[0]-2*margin[0])*!d.x_vsize
ysize = (position[3]-position[1]-2*margin[1])*!d.y_vsize
xstart= (position[0]+margin[0])*!d.x_vsize
ystart= (position[1]+margin[1])*!d.y_vsize

imszx = xsize
imszy = xsize*ratio
if (n_elements(format) ne 0) then begin
    rh = (imszy/ysize-1)*(position[3]-position[1]-2*margin[1])*format[0]+1
    print,rh*format[1]
endif
if (imszy gt ysize) then begin
    imszy = ysize
    imszx = imszy/ratio
endif

if (!d.name eq 'PS') then begin
    tvscl, img, xstart, ystart, xsize=imszx, ysize=imszy
endif else begin
    tv, congrid(img, xsize, ysize), xstart, ystart
endelse

END
