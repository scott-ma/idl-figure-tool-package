PRO xp, x, y, $
background = background,              $  ; b      color_index
charsize   = charsize,                $  ; chars  value
charthick  = charthick,               $  ; chart  integer
clip       = clip,                    $  ; clip   [x0, y0, x1, y1] 
color      = color,                   $  ; co     value 
data       = data,                    $  ;        / 
device     = device,                  $  ;        /
font       = font,                    $  ; fo     integer 
fmt        = figfmt,         $           ;        [rows, cols]
grid       = grid,           $           ; g      /     
isotropic  = isotropic,               $  ;-iso    /
linestyle  = linestyle,               $  ; l      0:5
max_value  = max_value,               $  ; max
margin     = margin,         $
min_value  = min_value,               $  ; min
noaxis     = noaxis,         $           ; noa
noclip     = noclip,                  $  ; noc    /
nodata     = nodata,                  $  ; nod    /
noerase    = noerase,                 $  ; noe    /
normal     = normal,                  $  ; /
nsum       = nsum,                    $  ;-ns     value
ops        = outpos,         $           ; ops
polar      = polar,                   $  ;-       /
position   = position,                $  ; pos    [x0, y0, x1, y1] or 1
psym       = psym,                    $  ; ps     0:10
subtitle   = subtitle,                $  ; subt   string
symsize    = symsize,                 $  ; syms   value 
t3d        = t3d,                     $  ;-t3d    /
thick      = thick,                   $  ; th     value 
tl         = ticklen,        $           ; tl
title      = title,                   $  ; tit    string
vertical   = vertical,       $           ; v      / vertical subfigs
wall       = wall,           $           ; w      [xwall, ywall] multifig

xcharsize  = xcharsize,               $  ; xch    value
xgl        = xgridline,      $           ;        /
xgridstyle = xgridstyle,              $  ; xgr    0:5
xlog       = xlog,                    $  ;-xlog   /     
;xmargin    = xmargin,                 $  ; xma    [left, right] 
xminor     = xminor,                  $  ; xm     integer
xrange     = xrange,                  $  ; xr     [min, max] 
xstyle     = xstyle,                  $  ; xs     value 
xthick     = xthick,                  $  ; xth    value
xtg        = xtick_get,               $  ; xtg    variable 
xtf        = xtickformat,             $  ; xtf    string
xtin       = xtickinterval,           $  ; xtin   value
xto        = xticklayout,             $  ; xto    scalar
xtl        = xticklen,                $  ; xtl    value
xtn        = xtickname,               $  ; xtn    string_array 
xts        = xticks,                  $  ; xts    integer
xtu        = xtickunits,              $  ; xtu    string
xtv        = xtickv,                  $  ; xtv    array
xtitle     = xtitle,                  $  ; xtit   string

ycharsize  = ycharsize,               $  ; ych    value 
ygridstyle = ygridstyle,              $  ; ygr    0:5
ylog       = ylog,                    $  ;-ylog   /
;ymargin    = ymargin,                 $  ; yma    [left, right] 
yminor     = yminor,                  $  ; ym     integer
ynozero    = ynozero,                 $  ;-       /
yrange     = yrange,                  $  ; yr     [min, max] 
ystyle     = ystyle,                  $  ; ys     value 
ythick     = ythick,                  $  ; yth    value
ytg        = ytick_get,               $  ; ytg    variable 
ytf        = ytickformat,             $  ; ytf    string
ytin       = ytickinterval,           $  ; ytin   value
yto        = yticklayout,             $  ; yto    scalar
ytl        = yticklen,                $  ; ytl    value
ytn        = ytickname,               $  ; ytn    string_array 
yts        = yticks,                  $  ; yts    integer
ytu        = ytickunits,              $  ; ytu    string
ytv        = ytickv,                  $  ; ytv    array
ytitle     = ytitle,                  $  ; ytit   string

zcharsize  = zcharsize,               $  ; zch    value 
zgridstyle = zgridstyle,              $  ; zgr    0:5
;zmargin    = zmargin,                 $  ; zma    [left, right] 
zminor     = zminor,                  $  ; zmi    integer
zrange     = zrange,                  $  ; zr     [min, max] 
zstyle     = zstyle,                  $  ; zs     value 
zthick     = zthick,                  $  ; zth    value
ztg        = ztick_get,               $  ; ztg    variable 
ztf        = ztickformat,             $  ; ztf    string
zti        = ztickinterval,           $  ; zti    value
zto        = zticklayout,             $  ; zto    scalar
ztl        = zticklen,                $  ; ztl    value
ztn        = ztickname,               $  ; ztn    string_array 
zts        = zticks,                  $  ; zts    integer
ztu        = ztickunits,              $  ; ztu    string
ztv        = ztickv,                  $  ; ztv    array
ztitle     = ztitle,                  $  ; ztit   string

zvalue     = zvalue                      ; {0 to 1}

; =================================================================

mf      = 1       ; figs in row
nf      = 1       ; figs in col
xleft   = 3.48    ; [xspace]
xright  = 0.22    ; [xspace]
ybottom = 3.07    ; [yspace]
ytop    = 0.23    ; [yspace]
xwall   = 0.0     ; 2 charsize
ywall   = 0.0     ; 2 charsize

nmargin = [0.0, 0.0, 0.0, 0.0] ; 0.2 charsize
pos     = [0.112059, 0.103758, 0.975098, 0.979248]
xtklen  = 0.1   ; cm
ytklen  = 0.1
xyminor = [2, 2]
tkfmt   = {f0:'tkexp', f1:'tkexp1', f2:'tkexp2'}

; -----------------------------------------------------------------

if (n_elements(xcharsize) eq 0) then xchsize=!p.charsize else xchsize=xcharsize
if (n_elements(ycharsize) eq 0) then ychsize=!p.charsize else ychsize=ycharsize
if (xchsize eq 0) then xchsize = 1
if (ychsize eq 0) then ychsize = 1
xspace = !d.x_ch_size/float(!d.x_size)*xchsize
yspace = !d.y_ch_size/float(!d.y_size)*ychsize

xleft   = xleft*xspace      
xright  = xright*xspace
ybottom = ybottom*yspace
ytop    = ytop*yspace

if (n_elements(margin) ne 0) then nmargin=float(margin)
nmargin[0] = nmargin[0]*xspace/5.0
nmargin[1] = nmargin[1]*yspace/5.0
nmargin[2] = nmargin[2]*xspace/5.0
nmargin[3] = nmargin[3]*yspace/5.0

; get entry device info
common pson_info, info

; x, y axis range
if (n_elements(xrange) ne 0) then nxstyle=1 
if (n_elements(yrange) ne 0) then nystyle=1

; x, y style
if (n_elements(xstyle) ne 0) then nxstyle=xstyle 
if (n_elements(ystyle) ne 0) then nystyle=ystyle

if (n_elements(noaxis) ne 0) then begin 
    nxstyle=4 & nystyle=4
endif

; x, y tickformat
if (n_elements(xtickformat) ne 0) then begin
   if isnum(xtickformat) then begin
     if (xtickformat ge 0) and (xtickformat le 2) then $
      nxtickformat = tkfmt.(round(double(xtickformat)))
   endif else begin
      nxtickformat = xtickformat
   endelse      
endif      
if (n_elements(ytickformat) ne 0) then begin
   if isnum(ytickformat) then begin
     if (ytickformat ge 0) and (ytickformat le 2) then $
      nytickformat = tkfmt.(round(double(ytickformat)))
   endif else begin
      nytickformat = ytickformat
   endelse   
endif

if (n_elements(wall) ne 0) then begin
   xwall = float(wall[0])
   ywall = float(wall[1])
endif
xwall = xwall*xspace*2.0
ywall = ywall*yspace*2.0

if (n_elements(xtickv) ne 0) then xticks=n_elements(xtickv)-1
if (n_elements(ytickv) ne 0) then yticks=n_elements(ytickv)-1

; =================================================================
;- calculate position
if (keyword_set(noerase) eq 0) and (n_elements(position) ne 4) and $
   (n_elements(xrange) ne 0) and (n_elements(yrange) ne 0) then begin

plot, xrange, yrange, $
background = background,              $   ; color_index
charsize   = charsize,                $   ; value 
charthick  = charthick,               $   ; integer
clip       = clip,                    $   ; [x0, y0, x1, y1] 
color      = color,                   $   ; value
data       = keyword_set(data),       $   ; /               
device     = keyword_set(device),     $   ; /     
font       = font,                    $   ; integer 
isotropic  = keyword_set(isotropic),  $   ; /
linestyle  = linestyle,               $   ; 0:5
max_value  = max_value,               $   ; value
min_value  = min_value,               $   ; value
noclip     = keyword_set(noclip),     $   ; /                 
nodata     = 1,                       $   ; /
noerase    = 0,                       $   ; /                 -
normal     = keyword_set(normal),     $   ; /          
nsum       = nsum,                    $   ;- value
polar      = keyword_set(polar),      $   ;- 
position   = pos,                     $   ; [x0, y0, x1, y1]   +
psym       = psym,                    $   ; 0:10
subtitle   = subtitle,                $   ; string
symsize    = symsize,                 $   ; value 
t3d        = keyword_set(t3d),        $   ;   
thick      = thick,                   $   ; value 
title      = title,                   $   ; string

xcharsize  = xcharsize,               $   ; value 
xgridstyle = xgridstyle,              $   ; 0:5
xlog       = keyword_set(xlog),       $   ;-
;xmargin    = xmargin,                 $   ; [left, right] 
xminor     = xminor,                  $   ; integer             +
xrange     = xrange,                  $   ; [min, max]          +
xstyle     = xstyle,                  $   ; value 
xthick     = xthick,                  $   ; value
xtick_get  = xtick_get,               $   ; variable 
xtickformat= nxtickformat,            $   ; string              +
xtickinterval = xtickinterval,        $   ; value
xticklayout= xticklayout,             $   ; scalar
xticklen   = nxticklen,               $   ; value               +
xtickname  = xtickname,               $   ; string_array 
xticks     = xticks,                  $   ; integer
xtickunits = xtickunits,              $   ; string
xtickv     = xtickv,                  $   ; array
xtitle     = xtitle,                  $   ; string

ycharsize  = ycharsize,               $   ; value 
ygridstyle = ygridstyle,              $   ; 0:5
ylog       = keyword_set(ylog),       $   ;-
;ymargin    = ymargin,                $   ; [left, right] 
yminor     = yminor,                  $   ; integer             +
ynozero    = keyword_set(ynozero),    $   ;- 
yrange     = yrange,                  $   ; [min, max]          +
ystyle     = ystyle,                  $   ; value 
ythick     = ythick,                  $   ; value
ytick_get  = ytick_get,               $   ; variable 
ytickformat= nytickformat,            $   ; string              +
ytickinterval = ytickinterval,        $   ; value
yticklayout= yticklayout,             $   ; scalar
yticklen   = nyticklen,               $   ; value               +
ytickname  = ytickname,               $   ; string_array 
yticks     = yticks,                  $   ; integer
ytickunits = ytickunits,              $   ; string
ytickv     = ytickv,                  $   ; array
ytitle     = ytitle,                  $   ; string

zcharsize  = zcharsize,               $   ; value 
zgridstyle = zgridstyle,              $   ; 0:5
;zmargin    = zmargin,                $   ; [left, right] 
zminor     = zminor,                  $   ; integer
zrange     = zrange,                  $   ; [min, max] 
zstyle     = zstyle,                  $   ; value 
zthick     = zthick,                  $   ; value
ztick_get  = ztick_get,               $   ; variable 
ztickformat= ztickformat,             $   ; string
ztickinterval = ztickinterval,        $   ; value
zticklayout= zticklayout,             $   ; scalar
zticklen   = ticklen,                 $   ; value
ztickname  = ztickname,               $   ; string_array 
zticks     = zticks,                  $   ; integer
ztickunits = ztickunits,              $   ; string
ztickv     = ztickv,                  $   ; array
ztitle     = ztitle,                  $   ; string

zvalue     = nzvalue                      ; {0 to 1}

; ---------------------
; determine format of x, y ticks
; x ticks
if (n_elements(xtickname) ne 0) then begin
   index = (n_elements(xtickname) < n_elements(xtick_get))
   xtkname = xtickname[index-1]
   xtkvalue= xtick_get[index-1]
endif else begin
   if (n_elements(xtickv) ne 0) then xtkv=xtickv else xtkv=xtick_get
   if (!x.type eq 0) then xsgn='normal' else xsgn='exponent'
   if (n_elements(xtickformat) ne 0) then begin
      if (xtickformat eq -1) then xsgn='tight' else xsgn='exponent'
   endif
   case xsgn of
      'normal'  : begin
         numxtk = n_elements(xtkv)
         strint = strarr(numxtk)
         strdec = strarr(numxtk)
         for i=0, numxtk-1 do begin
            str = strtrim(string(xtkv[i], format='(f15.5)'), 2)
            len = strlen(str)
            pd = strpos(str, '.')
            strint[i] = strmid(str, 0, pd)
            strdec[i] = strmid(str, pd+1, len-pd-1)
            lendec = strlen(strdec[i])
            while strmid(strdec[i], lendec-1, 1) eq '0' do begin
               lendec = lendec-1
               strdec[i] = strmid(strdec[i], 0, lendec)
            end
         endfor
         lendec = max(strlen(strdec))
         if (lendec eq 0) then $
            format='(i15)' else $
            format='(f15.'+string(lendec)+')'
         xtkname = strtrim(string(xtkv[numxtk-1], format=format), 2)
         xtkvalue= xtkv[numxtk-1]
      end
      'exponent': begin
         numxtk = n_elements(xtkv)
         if (xtkv[numxtk-1] eq 0) then begin
            xtkname = '0'
            xtkvalue= 0.0
         endif else begin
            strint = strarr(numxtk)
            strdec = strarr(numxtk)
            strnum = strarr(numxtk)
            strexp = strarr(numxtk)
            for i=0, numxtk-1 do begin
               str = strtrim(string(xtkv[i], format='(e15.5)'), 2)
               len = strlen(str)
               pd = strpos(str, '.')
               pe = strpos(str, 'e')
               strint[i] = strmid(str, 0, pd)
               strdec[i] = strmid(str, pd+1, pe-pd-2)
               strnum[i] = strmid(str, 0, pe-1)
               strexp[i] = strmid(str, pe+1, len-pe-1)
               strexp[i] = strtrim(string(fix(strexp[i])), 2)
               lendec = strlen(strdec[i])
               while strmid(strdec[i], lendec-1, 1) eq '0' do begin
                  lendec = lendec-1
                  strdec[i] = strmid(strdec[i], 0, lendec)
               end
            endfor
            lendec = max(strlen(strdec))
            intmax = max(fix(strint))
            if (lendec ne 0) then begin
               format = '(f'+string(lendec+2)+'.'+string(lendec)+')'
               dec = strtrim(string(float('0.'+strdec[numxtk-1]), format=format))
               xtkname = strint[numxtk-1]+'.'+strmid(dec, 2, lendec)+'!MX!X10!U'+strexp[numxtk-1]+'!N'
            endif else begin
               if (intmax gt 1) then $
                  xtkname = strint[numxtk-1]+'!MX!X10!U'+strexp[numxtk-1]+'!N' else $
                  xtkname = '10!U'+strexp[numxtk-1]+'!N'
            endelse
            xtkvalue= xtkv[numxtk-1]
         endelse
      end
      'tight'   : begin
         xtkname = string(xtkv[n_elements(xtkv)-1], format='(f15.5)')
         len  = strlen(xtkname)
         while strmid(xtkname, len-1, 1) eq '0' do begin
            len  = len-1
            xtkname = strmid(xtkname, 0, len)
         end
         if (strmid(xtkname, len-1, 1) eq '.') then xtkname = strmid(xtkname, 0, len-1)
         xtkname = strtrim(xtkname,2)
         xtkvalue = xtkv[numxtk-1]
      end
   endcase
endelse

; yticks
if (n_elements(ytickname) ne 0) then begin
   index = (n_elements(ytickname) < n_elements(ytick_get))
   len = 0
   for i=0, index-1 do begin
      tklen = strlen(ytickname[i])
      if (tklen gt len) then begin
         len = tklen
         ytkname = ytickname[i]
         ytkvalue= ytick_get[i]
      endif
   endfor
endif else begin
   if (n_elements(ytickv) ne 0) then ytkv=ytickv else ytkv=ytick_get
   if (!y.type eq 0) then ysgn='normal' else ysgn='exponent'
   if (n_elements(ytickformat) ne 0) then begin
      if (ytickformat eq -1) then ysgn='tight' else ysgn='exponent'
   endif
   case ysgn of
      'normal': begin
         numytk = n_elements(ytkv)
         strint = strarr(numytk)
         strdec = strarr(numytk)
         for i=0, numytk-1 do begin
            str = strtrim(string(ytkv[i], format='(f15.5)'), 2)
            len = strlen(str)
            pd = strpos(str, '.')
            strint[i] = strmid(str, 0, pd)
            strdec[i] = strmid(str, pd+1, len-pd-1)
            lendec = strlen(strdec[i])
            while strmid(strdec[i], lendec-1, 1) eq '0' do begin
               lendec = lendec-1
               strdec[i] = strmid(strdec[i], 0, lendec)
            end
         endfor
         lendec = max(strlen(strdec))
         if (lendec eq 0) then $
            format='(i15)' else $
            format='(f15.'+string(lendec)+')'
         lenint = max(strlen(strint), index)
         ytkname = strtrim(string(ytkv[index], format=format), 2) 
         ytkvalue= ytkv[index] 
      end
      'exponent': begin
         index  = where(ytkv ne 0)
         ytkv   = ytkv[index]
         numytk = n_elements(ytkv)
         strint = strarr(numytk)
         strdec = strarr(numytk)
         strnum = strarr(numytk)
         strexp = strarr(numytk)
         for i=0, numytk-1 do begin
            str = strtrim(string(ytkv[i], format='(e15.5)'), 2)
            len = strlen(str)
            pd = strpos(str, '.')
            pe = strpos(str, 'e')
            strint[i] = strmid(str, 0, pd)
            strdec[i] = strmid(str, pd+1, pe-pd-2)
            strnum[i] = strmid(str, 0, pe-1)
            strexp[i] = strmid(str, pe+1, len-pe-1)
            strexp[i] = strtrim(string(fix(strexp[i])), 2)
            lendec = strlen(strdec[i])
            while strmid(strdec[i], lendec-1, 1) eq '0' do begin
               lendec = lendec-1
               strdec[i] = strmid(strdec[i], 0, lendec)
            end
         endfor
         lendec = max(strlen(strdec))
         lenexp = max(strlen(strexp),index)
         intmax = max(fix(strint))
         if (lendec ne 0) then begin
            format = '(f'+string(lendec+2)+'.'+string(lendec)+')'
            dec = strtrim(string(float('0.'+strdec[index]), format=format))
            ytkname = strint[index]+'.'+strmid(dec, 2, lendec)+'!MX!X10!U'+strexp[index]+'!N'
         endif else begin
            if (intmax gt 1) then $
               ytkname = strint[index]+'!MX!X10!U'+strexp[index]+'!N' else $
               ytkname = '10!U'+strexp[index]+'!N'
         endelse
         ytkvalue= ytkv[index] 
      end
      'tight': begin
         numytk = n_elements(ytkv)
         str = strarr(numytk)
         for i=0, numytk-1 do begin
            str[i] = strtrim(string(ytkv[i], format='(f15.5)'), 2)
            len = strlen(str[i])
            while strmid(str[i], len-1, 1) eq '0' do begin
               len = len-1
               str[i] = strmid(str[i], 0, len)
            end
         endfor
         lenytk = max(strlen(str), index)
         ytkname = str[index]
         ytkvalue= ytkv[index] 
      end
   endcase
endelse

; get xright width
if keyword_set(xlog) then begin
   xyouts, xtkvalue, 10^(!y.crange[0]), xtkname, width=twidth, chars=charsize, /data, align=0.5
   xtpos = abs(alog10(xtkvalue)-!x.crange[0])/abs(!x.crange[0]-!x.crange[1])*(!x.window[1]-!x.window[0]) + !x.window[0]
endif else begin
   xyouts, xtkvalue, !y.crange[0], xtkname, width=twidth, chars=charsize, /data, align=0.5
   xtpos = abs(float(xtkvalue)-!x.crange[0])/abs(!x.crange[0]-!x.crange[1])*(!x.window[1]-!x.window[0]) + !x.window[0]
endelse   
if (xtpos+twidth/2.0 gt !x.window[1]) then xright=xright+xtpos+twidth/2.0-!x.window[1] 

; get xleft width
if keyword_set(xlog) then begin
   xyouts, 10^(!x.crange[0]), ytkvalue, ytkname, width=twidth, chars=charsize, /data, align=0.5 
endif else begin   
   xyouts, !x.crange[0], ytkvalue, ytkname, width=twidth, chars=charsize, /data, align=0.5
endelse
xleft = xleft+twidth

if (!d.name eq 'PS') then begin
   device, /close_file
   device, filename=info.filename+'.eps'
endif

; fig matrix [ml (rows), nl (cols)]
if (n_elements(figfmt) ne 0) then begin
   mf = figfmt[0]
   nf = figfmt[1]
endif 

common pos_info, apos
apos = {npos:mf*nf, mf:mf, nf:nf, pos:fltarr(4, mf*nf)}

if (n_elements(noaxis) ne 0) then begin
   xleft   = nmargin[0]
   xright  = nmargin[2]
   ybottom = nmargin[1]
   ytop    = nmargin[3]
endif else begin
   xleft   = xleft   + nmargin[0]
   xright  = xright  + nmargin[2]
   ybottom = ybottom + nmargin[1]
   ytop    = ytop    + nmargin[3]
endelse

if (n_elements(title) ne 0) then ytop=ytop+1.5*yspace

;if (n_elements(wall) ne 0) then begin
;   xwall = float(wall[0])
;   ywall = float(wall[1])
;endif
;xwall = xwall*xspace*2.0
;ywall = ywall*yspace*2.0

fwidth  = (1.0-xleft-xright-(nf-1)*xwall)/float(nf)
fheight = (1.0-ybottom-ytop-(mf-1)*ywall)/float(mf)
y0 = 1.0-ytop+ywall
for m=0, mf-1 do begin
   y1 = y0-ywall
   y0 = y1-fheight  
   x1 = xleft-xwall
   for n=0, nf-1 do begin
      x0 = x1+xwall
      x1 = x0+fwidth
      if keyword_set(vertical) then begin
          apos.pos[*, nf*mf-1-(n*mf+m)] = [x0,y0,x1,y1]
      endif else begin   
          apos.pos[*, mf*nf-1-(m*nf+n)] = [x0,y0,x1,y1]
      endelse      
   endfor 
endfor
apos.pos[0,mf*nf-1] = apos.pos[0,mf*nf-1]-xwall
apos.pos[2,mf*nf-1] = apos.pos[2,mf*nf-1]-xwall
apos.pos[1,mf*nf-1] = apos.pos[1,mf*nf-1]+ywall
apos.pos[3,mf*nf-1] = apos.pos[3,mf*nf-1]+ywall

endif 
  
; -----------------------------------------------------------------
 
; parameters x, y
case n_params() of
   0: begin 
         if (n_elements(xrange) eq 0) or (n_elements(yrange) eq 0) then begin
            print, 'xp: must input data or range'
            return
         endif
         nx = xrange 
         ny = yrange 
         nodata = 1
         if (n_elements(noerase) eq 0) then noerase=0
      end
   1: begin
         if (n_elements(x) eq 0) then begin
             print, 'xp: x is undefined!'
             return
         end 
         nx = findgen(n_elements(x))     
         ny = x
;         noerase = 0
      end
   2: begin
         if (n_elements(x) eq 0) then begin
             print, 'xp: x is undefined!'
             return
         end 
         if (n_elements(y) eq 0) then begin
             print, 'xp: y is undefined!'
             return
         end             
         nx = x      
         ny = y
      end
   else: begin 
         print, 'xp: parameter number error!' 
         return 
      end   
endcase

; figure size & axis position
if (n_elements(position) eq 4) then begin
      pos = position+nmargin 
endif else begin
   common pos_info, apos
   ; apos = {npos:mf*nf, mf:mf, nf:nf, pos:fltarr(4, mf*nf)}
   if (n_elements(apos) ne 0) then begin
      if (apos.npos gt 0) then begin
         apos.npos = apos.npos-1
         pos = apos.pos[*,apos.npos]
         if (apos.npos lt apos.mf*apos.nf-1) then noerase = 1
      endif else begin   
         pos = pos+nmargin 
      endelse
   endif else begin
      pos = pos+nmargin 
   endelse
endelse

if (n_elements(wall) ne 0) then begin
   pos[0] = pos[0]+xwall
   pos[2] = pos[2]+xwall
   pos[1] = pos[1]-ywall
   pos[3] = pos[3]-ywall
endif

if (n_elements(position) eq 1) then begin
;   tpos = string(pos, format='(f5.3)')
;   print, "pos=[",tpos[0],",",tpos[1],",",tpos[2],",",tpos[3],"]" 
   outpos = pos   
endif

device_win = 0      
if (n_elements(info) eq 0) then begin
   device_win = 1
endif else begin
   if (info.sign eq 0) then device_win=1
endelse
if (device_win eq 1) then begin   
   set_plot, 'WIN'
   device, decomposed=0
   device, set_character_size=[10,14]
   
   ; colortable for WIN
   ;       0    1     2     3     4      5     6     7      8
   red = [ 0,  255,    0,  255,    0,  255,    0,  255,  255,   0, 255, 112, 219, 127,   0, 255, 180] 
   grn = [ 0,  255,    0,    0,  255,    0,  255,  187,  255,   0, 127, 219, 112, 127, 163, 171, 180] 
   blu = [ 0,  255,  255,    0,    0,  255,  255,    0,    0, 115, 127, 147, 219, 127, 255, 127, 180]
   ;name=[black,white,blue, red,green,magenta,cyan,copper,yellow]
   tvlct, red, grn, blu
;   xsize = !d.x_vsize
;   ysize = !d.y_vsize
endif 

; grid
if (n_elements(grid) eq 0) then begin
    if (n_elements(xgrid) eq 0) then xgrid = 0
    if (n_elements(ygrid) eq 0) then ygrid = 0
endif else begin 
    if (n_elements(xgrid) eq 0) then xgrid = 1
    if (n_elements(ygrid) eq 0) then ygrid = 1
endelse

; ticklength 
if (n_elements(ticklen) ne 0) then begin
    if abs(ticklen+1.) le 0.001 then begin
        xticklen = -xtklen 
        yticklen = -ytklen 
    endif
    xtklen = ticklen*xtklen 
    ytklen = ticklen*ytklen 
endif
 
if (!d.name eq 'PS') then begin
   xsize = info.figsz[0]
   ysize = info.figsz[1]
endif else begin
   xsize = !d.x_vsize*0.01
   ysize = !d.y_vsize*0.01
endelse

nxticklen = xtklen / ((pos[3]-pos[1]) * ysize)
nyticklen = ytklen / ((pos[2]-pos[0]) * xsize)
if (n_elements(xticklen) ne 0) then begin
   if (xticklen lt -0.005) then nxticklen=-0.018 else nxticklen=xticklen
endif
if (n_elements(yticklen) ne 0) then begin
   if (yticklen lt -0.005) then nyticklen=-0.013 else nyticklen=yticklen
endif 

; x, y minortick interval
if (keyword_set(xlog) eq 0) then nxminor = xyminor[0]
if (n_elements(xminor) ne 0) then nxminor = xminor
if (keyword_set(ylog) eq 0) then nyminor = xyminor[1]
if (n_elements(yminor) ne 0) then nyminor = yminor 

; x, y title
if (n_elements(title) ne 0) then ntitle=textoidl(title)
if (n_elements(xtitle) ne 0) then nxtitle=textoidl(xtitle)
if (n_elements(ytitle) ne 0) then nytitle=textoidl(ytitle) 

; axis color
if (n_elements(color) eq 0) then begin
   ncolor = (!d.name eq 'WIN')
endif else begin
   ncolor = color
   if (n_elements(background) eq 0) then background=!p.background
   if (!d.name eq 'PS') and (color eq 1) then ncolor=0
   if (!d.name eq 'WIN') and (background le 1) and (color eq background) then ncolor=1-background
endelse

; -----------------------------------------------------------------
plot, nx, ny, $
background = background,              $   ; color_index
charsize   = charsize,                $   ; value 
charthick  = charthick,               $   ; integer
clip       = clip,                    $   ; [x0, y0, x1, y1] 
color      = ncolor,                  $   ; avoid returing
data       = keyword_set(data),       $   ; /               
device     = keyword_set(device),     $   ; /     
font       = font,                    $   ; integer 
isotropic  = keyword_set(isotropic),  $   ; /
linestyle  = linestyle,               $   ; 0:5
max_value  = max_value,               $   ; value
min_value  = min_value,               $   ; value
noclip     = keyword_set(noclip),     $   ; /                 
nodata     = keyword_set(nodata),     $   ; /
noerase    = keyword_set(noerase),    $   ; /
normal     = keyword_set(normal),     $   ; /          
nsum       = nsum,                    $   ;- value
polar      = keyword_set(polar),      $   ;- 
position   = pos,                     $   ; [x0, y0, x1, y1]   +
psym       = psym,                    $   ; 0:10
subtitle   = subtitle,                $   ; string
symsize    = symsize,                 $   ; value 
t3d        = keyword_set(t3d),        $   ;   
thick      = thick,                   $   ; value 
title      = ntitle,                  $   ; string

xcharsize  = xcharsize,               $   ; value 
xgridstyle = xgridstyle,              $   ; 0:5
xlog       = keyword_set(xlog),       $   ;-
;xmargin    = xmargin,                 $   ; [left, right] 
xminor     = nxminor,                 $   ; integer             +
xrange     = xrange,                  $   ; [min, max]          +
xstyle     = nxstyle,                 $   ; value 
xthick     = xthick,                  $   ; value
xtick_get  = xtick_get,               $   ; variable 
xtickformat= nxtickformat,            $   ; string              +
xtickinterval = xtickinterval,        $   ; value
xticklayout= xticklayout,             $   ; scalar
xticklen   = nxticklen,               $   ; value               +
xtickname  = xtickname,               $   ; string_array 
xticks     = xticks,                  $   ; integer
xtickunits = xtickunits,              $   ; string
xtickv     = xtickv,                  $   ; array
xtitle     = nxtitle,                 $   ; string

ycharsize  = ycharsize,               $   ; value 
ygridstyle = ygridstyle,              $   ; 0:5
ylog       = keyword_set(ylog),       $   ;-
;ymargin    = ymargin,                $   ; [left, right] 
yminor     = nyminor,                 $   ; integer             +
ynozero    = 1,                       $   ;- 
yrange     = yrange,                  $   ; [min, max]          +
ystyle     = nystyle,                 $   ; value 
ythick     = ythick,                  $   ; value
ytick_get  = ytick_get,               $   ; variable 
ytickformat= nytickformat,            $   ; string              +
ytickinterval = ytickinterval,        $   ; value
yticklayout= yticklayout,             $   ; scalar
yticklen   = nyticklen,               $   ; value               +
ytickname  = ytickname,               $   ; string_array 
yticks     = yticks,                  $   ; integer
ytickunits = ytickunits,              $   ; string
ytickv     = ytickv,                  $   ; array
ytitle     = nytitle,                 $   ; string

zcharsize  = zcharsize,               $   ; value 
zgridstyle = zgridstyle,              $   ; 0:5
;zmargin    = zmargin,                $   ; [left, right] 
zminor     = zminor,                  $   ; integer
zrange     = zrange,                  $   ; [min, max] 
zstyle     = zstyle,                  $   ; value 
zthick     = zthick,                  $   ; value
ztick_get  = ztick_get,               $   ; variable 
ztickformat= ztickformat,             $   ; string
ztickinterval = ztickinterval,        $   ; value
zticklayout= zticklayout,             $   ; scalar
zticklen   = ticklen,                 $   ; value
ztickname  = ztickname,               $   ; string_array 
zticks     = zticks,                  $   ; integer
ztickunits = ztickunits,              $   ; string
ztickv     = ztickv,                  $   ; array
ztitle     = ztitle,                  $   ; string

zvalue     = nzvalue                      ; {0 to 1}

; ---- grid
if (n_elements(apos) eq 0) then aposmf=1 else aposmf=apos.mf
if (n_elements(apos) eq 0) then aposnf=1 else aposnf=apos.nf
if (xgrid ne 0) then begin
    if (n_elements(nyticklen) eq 0) then begin
        nyticklen = 0.02
    endif else begin
        if (nyticklen lt 0) then nyticklen=0.0
    endelse
    nxtks = n_elements(xtick_get)
    if (!x.type eq 0) then $
        normxtv = !x.s[0]+!x.s[1]*xtick_get else $
        normxtv = !x.s[0]+!x.s[1]*alog10(xtick_get)
    for i=0, nxtks-1 do begin
        if ((abs(normxtv[i]-!x.window[0]) lt 0.01) or (abs(normxtv[i]-!x.window[1]) lt 0.01)) eq 0 then $
            plots, [normxtv[i], normxtv[i]], [!y.window[0]+nxticklen/aposmf, !y.window[1]-nxticklen/aposmf], /norm, $
            l=1, color=16, th=0.2
    ;         if ((abs(normxtv[i]-!x.window[0]) lt 0.01) or (abs(normxtv[i]-!x.window[1]) lt 0.01)) eq 0 then $
    ;            plots, [normxtv[i], normxtv[i]], [nyticklen, 1-nyticklen], /norm, $
    ;               l=1, color=16, th=0.2
    endfor
endif

if (ygrid ne 0) then begin
    if (n_elements(nxticklen) eq 0) then begin
        nxticklen = 0.02
    endif else begin
        if (nxticklen lt 0) then nxticklen=0.0
    endelse
    nytks = n_elements(ytick_get)
    if (!y.type eq 0) then $
        normytv = !y.s[0]+!y.s[1]*ytick_get else $
        normytv = !y.s[0]+!y.s[1]*alog10(ytick_get)
    for i=0, nytks-1 do begin
        if ((abs(normytv[i]-!y.window[0]) lt 0.01) or (abs(normytv[i]-!y.window[1]) lt 0.01)) eq 0 then $
            plots, [!x.window[0]+nyticklen/aposnf, !x.window[1]-nyticklen/aposnf], [normytv[i], normytv[i]], /norm, $
            l=1, color=16, th=0.2
    ;         if ((abs(normytv[i]-!y.window[0]) lt 0.01) or (abs(normytv[i]-!y.window[1]) lt 0.01)) eq 0 then $
    ;            plots, [nxticklen, 1-nxticklen], [normytv[i], normytv[i]], /norm, $
    ;               l=1, color=16, th=0.2
    endfor
endif

END
