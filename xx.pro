PRO xx, win, $
        filename      = filename,            $
        gray          = gray,                $  ; /
        landscape     = landscape,           $  ; /
        size          = size,                $
        xsize         = xsize,               $
        ysize         = ysize,               $
        zfont         = fontsz

; =================================================================
;wxsize = 650  ; win size
;wysize = 450
width  = 8.5  ; size[0]
height = 6.8  ; size[1]
fonttp = 0    ; device type; 1,true type; -1, vector type
font   = 'helvetica'
if (n_elements(fontsz) eq 0) then fontsz = 8    ; 7

; -----------------------------------------------------------------
common pson_info, info
; info = {device:!d.name, window:!d.window, font:!p.font, pthick:!p.thick,  
;      xthick:!x.thick, ythick:!y.thick, zthick:!z.thick, figsz:size, filename:filename}

; when error ocurs, the info should be recovered
if (n_elements(info) ne 0) then begin
   if (!d.name eq 'PS') then begin
      device, /close_file
      set_plot, info.device
      wset, info.window
      !p.font  = info.font
      !p.thick = info.pthick
      !x.thick = info.xthick
      !y.thick = info.ythick
      !z.thick = info.zthick
   endif
endif
 
;- window show
   if (n_params() ne 0) then begin
      if (win gt 0) then begin
         if (win eq 1) then win_no=!d.window+1 else win_no=win
         window, win_no, xsize=xsize, ysize=ysize
         return
      endif
   endif   

;- eps output        
   pson = 0
   if (n_elements(filename) ne 0) then pson=1
   
; ps on
   if pson then begin
      ; colortable for WIN
      ;       0    1     2     3     4      5     6     7      8
      red = [ 0,  255,    0,  255,    0,  255,    0,  255,  255,   0, 255, 112, 219, 127,   0, 255, 100] 
      grn = [ 0,  255,    0,    0,  255,    0,  255,  187,  255,   0, 127, 219, 112, 127, 163, 171, 100] 
      blu = [ 0,  255,  255,    0,    0,  255,  255,    0,    0, 115, 127, 147, 219, 127, 255, 127, 100]
      ;name=[black,white,blue, red,green,magenta,cyan,copper,yellow]
      tvlct, red, grn, blu  
      ; save current device info in common block
      info = {sign:1, device:!d.name, window:!d.window, font:!p.font, $
            pthick:!p.thick, xthick:!x.thick, ythick:!y.thick, zthick:!z.thick}
      
      ; line thick   1 pt = 127⁄360 mm, 0.1 mm = 0.283465 pt
      !p.thick = 2.5   ; 2.5, 0.25mm or 0.709 pt
      !x.thick = 1.7   ; 2.0, 0.2 mm or 0.567 pt
      !y.thick = 1.7   ; 2.0
      !z.thick = 1.7   ; 2.0
             
      ; figure size [cm]
      if keyword_set(size) then begin
         width = size[0]
         height= size[1]
      endif
      
      ; offset on paper [cm]
      if (keyword_set(landscape) eq 0) then begin
         xoffset = 0.2 * width
         yoffset = 0.2 * height 
      endif else begin
         xoffset = 0.2 * height 
         yoffset = 0.2 * width + width
      endelse
      
      ; set ps
      set_plot, 'PS'
      device, landscape=keyword_set(landscape), /encapsulated, scale_factor=1
      device, xsize=width, ysize=height, xoffset=xoffset, yoffset=yoffset
      device, filename=filename+'.eps', color=~keyword_set(gray), bits_per_pixel=8
      
      ; fonts
      !p.font  = fonttp    ; true type fonts  
      device, set_font=font, font_size=fontsz
;      device, /tt_font, set_font=font, font_size=fontsz
;      device, /helv, /isolatin1
      
      info = create_struct(info, 'figsz',[width, height], 'filename',filename)
      
; ps off
   endif else begin
      
;      ; recover colortable
;      red = indgen(8)
;      grn = indgen(8)
;      blu = indgen(8)
;      tvlct, red, grn, blu
      
      ; destroy all unused fig pos
      common pos_info, apos
      if (n_elements(apos) ne 0) then apos.npos=0
      
      ; get entry device info
      common pson_info, info
      if (n_elements(info) eq 0) then return
      
      ; change linestyle shape
      if (info.sign eq 1) then begin
         fileo = info.filename + '.eps'
         filen = info.filename + '.xxx'
         str = ''
         tx0 = '%%EndProlog'
         tx1 = '{[40 80] 0 setdash} bdef /L2 {[180 110] 0 setdash} bdef /L3 {[45 90 200'
         tx2 = '90] 0 setdash} bdef /L4 {[304 102 50 100 50 100 50 100] 0 setdash} bdef /L5'
         tx3 = '{[304 152] 0 setdash} bdef /STDFONT { findfont exch scalefont setfont } bdef'
         len = 0L
         sgn = 0
         openr, lunr, fileo, /get_lun
         openw, lunw, filen, /get_lun
         while (not eof(lunr)) do begin
            readf, lunr, str
            len = len+1
            if (str eq '%v 5') then begin 
                sgn = 1
                len = 3
            endif
            if ((len lt 3) or (sgn eq 1)) and (str ne tx0) then begin
               case len of
                  10: printf, lunw, tx1
                  11: printf, lunw, tx2
                  12: printf, lunw, tx3

                  else: printf, lunw, str
               endcase
            endif
         endwhile
         free_lun, lunr
         free_lun, lunw
         file_delete, fileo
         file_move, filen, fileo
         
         info.sign = 0
      endif      

endelse
   
END
