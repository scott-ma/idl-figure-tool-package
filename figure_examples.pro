PRO crm_ne, dat

fdir = filedir()
cd, fdir
    
    nne = 5
    npa = 13
    f   = 10.0^indgen(10)
    n_e = [1e16,1e17,1e18,1e19,1e20]
    l   = [0,1,2,3,5]
    co  = [1,2,3,4,5]
    xlb = 'Frequency (Hz)'
    xr  = [1e0, 1e9]
    tl  = [textoidl('10^{16}'),textoidl('10^{17}'),textoidl('10^{18}'),textoidl('10^{19}'),textoidl('10^{20}')]
    
    fsz = [9, 7]
    win = 1
    wdall
    
    xxx = textoidl('Electron density (m^{-3})')
    ylb = textoidl('Average emission (J/s/m^3/rad)')
    ; fig - average
    aver = fltarr(3, nne)
    for i=0, nne-1 do begin
        aver[0, i] = mean(dat[*,i*npa+7])
        aver[1, i] = mean(dat[*,i*npa+4])
        aver[2, i] = mean(dat[*,i*npa+1])
    end
    ymin = min(aver, max=ymax)
    yr = [0.95*ymin, 1.05*ymax]
    xx, win, f='fig01',s=fsz
    xp, /xlog, /ylog, mar=[0,0,0,0], xr=[1e16,1e20], yr=yr, xtit=xxx, ytit=ylb, tit='Average emission',$
        xtv=n_e,xts=4, xm=10
    xo, n_e, aver[0, *], l=0, ps=-5, co=1
    xo, n_e, aver[1, *], l=1, ps=-2, co=2
    xo, n_e, aver[2, *], l=2, ps=-4, co=3
    xt, 0.05, 0.92, textoidl('Te = 15 [eV]')
    xt, 0.05, 0.85, textoidl('n_e 2% sine wave [m^{-3}]')
    legend, ['667.8','706.5','728.1'], l=[0,1,2], ps=[-5,-2,-4], co=[1,2,3], pos=[0.05,0.8]
    xx
    
    ylb = textoidl('Absolute emission fluctuation (J/s/m^3/rad)')
    ; fig - d667
    ymin = min(dat[*,indgen(nne)*npa+8], max=ymax)
    yr = [0.95*ymin, 1.05*ymax]    
    xx, win, f='fig02',s=fsz
    xp, /xlog, /ylog, mar=[0,0,0,0], xr=xr, yr=yr, xtit=xlb, ytit=ylb, tit='He I 667.8 nm emission',$
        xts=9,xm=10
    for i=0, nne-1 do begin
        y = dat[*,i*npa+8]
        xo, f, y, l=l[i], co=co[i]
    end
    xt, 0.05, 0.92, textoidl('T_e = 15 eV')
    xt, 0.05, 0.85, textoidl('n_e 2% sine wave [m^{-3}]')
    legend, tl, l=l, co=co, pos=[0.05, 0.84]
    xx
    
    ; fig - d706
    ymin = min(dat[*,indgen(nne)*npa+5], max=ymax)
    yr = [0.95*ymin, 1.05*ymax]     
    xx, win, f='fig03',s=fsz
    xp, /xlog, /ylog, mar=[0,0,0,0], xr=xr, yr=yr, xtit=xlb, ytit=ylb, tit='He I 706.5 nm emission',$
        xts=9,xm=10
    for i=0, nne-1 do begin
        y = dat[*,i*npa+5]
        xo, f, y, l=l[i], co=co[i]
    end
    xt, 0.05, 0.92, textoidl('T_e = 15 eV')
    xt, 0.05, 0.85, textoidl('n_e 2% sine wave [m^{-3}]')
    legend, tl, l=l, co=co, pos=[0.05, 0.84]
    xx
    
    ; fig - d728
    ymin = min(dat[*,indgen(nne)*npa+2], max=ymax)
    yr = [0.95*ymin, 1.05*ymax]     
    xx, win, f='fig04',s=fsz
    xp, /xlog, /ylog, mar=[0,0,0,0], xr=xr, yr=yr, xtit=xlb, ytit=ylb, tit='He I 728.1 nm emission',$
        xts=9,xm=10
    for i=0, nne-1 do begin
        y = dat[*,i*npa+2]
        xo, f, y, l=l[i], co=co[i]
    end
    xt, 0.05, 0.92, textoidl('T_e = 15 eV')
    xt, 0.05, 0.85, textoidl('n_e 2% sine wave [m^{-3}]')
    legend, tl, l=l, co=co, pos=[0.05, 0.84]
    xx
         win = 0
         yr = [0, 2.2]
    ylb = textoidl('Relative emission fluctuation (%)')
    ; fig - relat d667/a667
    ymin = min(dat[*,indgen(nne)*npa+8]/dat[*,indgen(nne)*npa+7]* 100, max=ymax)
;    yr = [0.95*ymin, 1.05*ymax]     
    xx, win, f='fig05',s=fsz
    xp, /xlog, mar=[0,0,0,0], xr=xr, yr=yr, xtit=xlb, ytit=ylb, tit='He I 667.8 nm emission',$
        xts=9, xm=10, ym=5, xtl=1.0, ytl=1.0
    for i=0, nne-1 do begin
        y = dat[*,i*npa+8]/dat[*,i*npa+7] * 100
        xo, f, y, l=l[i], co=co[i]
    end
    xt, 0.05, 0.38, textoidl('T_e = 15 eV')
    xt, 0.05, 0.31, textoidl('n_e 2% sine wave [m^{-3}]')
    legend, tl, l=l, co=co, pos=[0.05, 0.3]
    xx
    
    ; fig - relat d706/a706
    ymin = min(dat[*,indgen(nne)*npa+5]/dat[*,indgen(nne)*npa+4]* 100, max=ymax)
;    yr = [0.95*ymin, 1.05*ymax]    
    xx, win, f='fig06',s=fsz
    xp, /xlog, mar=[0,0,0,0], xr=xr, yr=yr, xtit=xlb, ytit=ylb, tit='He I 706.5 nm emission',$
        xts=9, xm=10, ym=5, xtl=1.0, ytl=1.0
    for i=0, nne-1 do begin
        y = dat[*,i*npa+5]/dat[*,i*npa+4] * 100
        xo, f, y, l=l[i], co=co[i]
    end
    xt, 0.05, 0.38, textoidl('T_e = 15 eV')
    xt, 0.05, 0.31, textoidl('n_e 2% sine wave [m^{-3}]')
    legend, tl, l=l, co=co, pos=[0.05, 0.3]
    xx
    
    ; fig - relat d728/a728
    ymin = min(dat[*,indgen(nne)*npa+2]/dat[*,indgen(nne)*npa+1]* 100, max=ymax)
;    yr = [0.95*ymin, 1.05*ymax]    
    xx, win, f='fig07',s=fsz
    xp, /xlog, mar=[0,0,0,0], xr=xr, yr=yr, xtit=xlb, ytit=ylb, tit='He I 728.1 nm emission',$
        xts=9, xm=10, ym=5, xtl=1.0, ytl=1.0
    for i=0, nne-1 do begin
        y = dat[*,i*npa+2]/dat[*,i*npa+1] * 100
        xo, f, y, l=l[i], co=co[i]
    end
    xt, 0.05, 0.38, textoidl('T_e = 15 eV')
    xt, 0.05, 0.31, textoidl('n_e 2% sine wave [m^{-3}]')
    legend, tl, l=l, co=co, pos=[0.05, 0.3]
    xx
    
    win = 1
    ylb = textoidl('Average emission ratio')
    ; fig - average
    aver = fltarr(2, nne)
    for i=0, nne-1 do begin
        aver[0, i] = mean(dat[*,i*npa+9])
        aver[1, i] = mean(dat[*,i*npa+11])
    end
    ymin = min(aver, max=ymax)
    yr = [0.95*ymin, 1.05*ymax]    
    xx, win, f='fig08',s=fsz
    xp, /xlog, mar=[0,0,0,0], xr=[1e16,1e20], yr=yr, xtit=xxx, ytit=ylb, tit='Average emission ratio'
    xo, n_e, aver[0, *], l=0, ps=-5, co=2
    xo, n_e, aver[1, *], l=2, ps=-4, co=3
    xo, n_e, 1.0/aver[1, *], l=1, ps=-4, co=1
    xt, 0.6, 0.32, textoidl('T_e = 15 eV')
    xt, 0.6, 0.25, textoidl('n_e 2% sine wave [m^{-3}]')
    legend, ['667.8 / 728.1','728.1 / 706.5','706.5 / 728.1'], l=[0,2,1], ps=[-5,-4,-4], co=[2,3,1], pos=[0.6, 0.22]
    xx
    
    ylb = textoidl('Absolute emission ratio fluctuation')
    ; fig - ratio d667_728
    ymin = min(dat[*,indgen(nne)*npa+10], max=ymax)
    yr = [0.95*ymin, 1.05*ymax]     
    xx, win, f='fig09',s=fsz
    xp, /xlog, mar=[0,0,0,0], xr=xr, yr=yr, xtit=xlb, ytit=ylb, tit='He I 667.8 / 728.1 emission ratio',$
        xts=9, xm=10, xtl=1, ytl=1
    for i=0, nne-1 do begin
        y = dat[*,i*npa+10]
        xo, f, y, l=l[i], co=co[i]
    end
    xt, 0.1, 0.88, textoidl('T_e = 15 eV')
    xt, 0.1, 0.81, textoidl('n_e 2% sine wave [m^{-3}]')
    legend, tl, l=l, co=co, pos=[0.1, 0.8]
    xx
    
    ; fig - ratio d728_706
    ymin = min(dat[*,indgen(nne)*npa+12], max=ymax)
    yr = [0.95*ymin, 1.05*ymax]    
    xx, win, f='fig10',s=fsz
    xp, /xlog, mar=[0,0,0,0], xr=xr, yr=yr, xtit=xlb, ytit=ylb, tit='He I 728.1 / 706.5 emission ratio',$
        xts=9, xm=10, xtl=1, ytl=1
    for i=0, nne-1 do begin
        y = dat[*,i*npa+12]
        xo, f, y, l=l[i], co=co[i]
    end
    xt, 0.1, 0.88, textoidl('T_e = 15 eV')
    xt, 0.1, 0.81, textoidl('n_e 2% sine wave [m^{-3}]')
    legend, tl, l=l, co=co, pos=[0.1, 0.8]
    xx
    
;    ylb = textoidl('Relative emission ratio fluctuation (%)')
;    ; fig - ratio d667_728/a667_728
;    ymin = min(dat[*,indgen(nne)*npa+10]/dat[*,indgen(nne)*npa+9] * 100, max=ymax)
;    yr = [0.95*ymin, 1.05*ymax]    
;    xx, win, f='nd_a667_728',s=fsz
;    xp, /xlog, mar=[0,0,0,0], xr=xr, yr=yr, xtit=xlb, ytit=ylb, tit='He I 667.8 / 728.1 emission ratio',$
;        xts=9, xm=10, xtl=1, ytl=1
;    for i=0, nne-1 do begin
;        y = dat[*,i*npa+10]/dat[*,i*npa+9] * 100
;        xo, f, y, l=l[i], co=co[i]
;    end
;    xt, 0.51, 0.92, textoidl('T_e = 15 eV,')
;    xt, 0.68, 0.92, textoidl('n_e 2% sine wave [m^{-3}]')
;    legend, tl, l=l, co=co, pos=[0.75, 0.91]
;    xx
;    
;    ; fig - ratio d728_706/a728_706
;    ymin = min(dat[*,indgen(nne)*npa+12]/dat[*,indgen(nne)*npa+11] * 100, max=ymax)
;    yr = [0.95*ymin, 1.05*ymax]    
;    xx, win, f='nd_a728_706',s=fsz
;    xp, /xlog, mar=[0,0,0,0], xr=xr, yr=yr, xtit=xlb, ytit=ylb, tit='He I 728.1 / 706.5 emission ratio',$
;        xts=9, xm=10, xtl=1, ytl=1
;    for i=0, nne-1 do begin
;        y = dat[*,i*npa+12]/dat[*,i*npa+11] * 100
;        xo, f, y, l=l[i], co=co[i]
;    end
;    xt, 0.51, 0.92, textoidl('T_e = 15 eV,')
;    xt, 0.68, 0.92, textoidl('n_e 2% sine wave [m^{-3}]')
;    legend, tl, l=l, co=co, pos=[0.75, 0.91]
;    xx
;    
;    
;    ylb = textoidl('Relative emission fluctuation amplitude ratio')
;    ; fig - ratio d667_728/a667_728
;    ymin = min(dat[*,indgen(nne)*npa+8]/dat[*,indgen(nne)*npa+2]/aver[0, indgen(nne)], max=ymax)
;    yr = [0.95*ymin, 1.05*ymax]     
;    xx, win, f='nrr667_728', s=fsz
;    xp, /xlog, mar=[0,0,0,0], xr=xr, yr=yr, xtit=xlb, ytit=ylb, tit='He I 667.8 / 728.1 emission fluctuation ratio',$
;        xts=9, xm=10, xtl=1, ytl=1
;    for i=0, nne-1 do begin
;        y = dat[*,i*npa+8]/dat[*,i*npa+2]/aver[0, i]
;        xo, f, y, l=l[i], co=co[i]
;    end
;    xt, 0.05, 0.90, textoidl('T_e = 15 eV')
;    xt, 0.05, 0.85, textoidl('n_e 2% sine wave [m^{-3}]')
;    legend, tl, l=l, co=co, pos=[0.05, 0.75]
;    xx
;
;    ymin = min(dat[*,indgen(nne)*npa+2]/dat[*,indgen(nne)*npa+5]/aver[1, indgen(nne)], max=ymax)
;    yr = [0.95*ymin*ymin, 1.05*ymax]     
;    xx, win, f='nrr728_706', s=fsz
;    xp, /xlog, mar=[0,0,0,0], xr=xr, yr=yr, xtit=xlb, ytit=ylb, tit='He I 728.1 / 706.5 emission fluctuation ratio',$
;        xts=9, xm=10, xtl=1, ytl=1
;    for i=0, nne-1 do begin
;        y = dat[*,i*npa+2]/dat[*,i*npa+5]/aver[1, i]
;        xo, f, y, l=l[i], co=co[i]
;    end
;    xt, 0.05, 0.90, textoidl('T_e = 15 eV')
;    xt, 0.05, 0.85, textoidl('n_e 2% sine wave [m^{-3}]')
;    legend, tl, l=l, co=co, pos=[0.05, 0.73]
;    xx
;    
;    
;    ylb = textoidl('Absolute emission fluctuation amplitude ratio')
;    ; fig - ratio d667_728/a667_728
;    xx, win, f='nar667_728', s=fsz
;    xp, /xlog, mar=[0,0,0,0], xr=xr, yr=yr, xtit=xlb, ytit=ylb, tit='He I 667.8 / 728.1 emission fluctuation ratio',$
;        xts=9, xm=10, xtl=1, ytl=1
;    for i=0, nne-1 do begin
;        y = dat[*,i*npa+8]/dat[*,i*npa+2]
;        xo, f, y, l=l[i], co=co[i]
;    end
;    xt, 0.05, 0.90, textoidl('T_e = 15 eV')
;    xt, 0.05, 0.85, textoidl('n_e 2% sine wave [m^{-3}]')
;    legend, tl, l=l, co=co, pos=[0.05, 0.68]
;    xx
;    
;    xx, win, f='nar728_706', s=fsz
;    xp, /xlog, mar=[0,0,0,0], xr=xr, yr=yr, xtit=xlb, ytit=ylb, tit='He I 728.1 / 706.5 emission fluctuation ratio',$
;        xts=9, xm=10, xtl=1, ytl=1
;    for i=0, nne-1 do begin
;        y = dat[*,i*npa+2]/dat[*,i*npa+5]
;        xo, f, y, l=l[i], co=co[i]
;    end
;    xt, 0.05, 0.90, textoidl('T_e = 15 eV')
;    xt, 0.05, 0.85, textoidl('n_e 2% sine wave [m^{-3}]')
;    legend, tl, l=l, co=co, pos=[0.05, 0.7]
;    xx
    
      win = 0
      yr = [-0.05, 0.25]
    ps = [1,2,4,5,6]
    ; fig - phase p667
    ylb = textoidl('Phase difference Delta t \times f')
    ymin = min(dat[*,indgen(nne)*npa+6]*f, max=ymax)
;    yr = [0.95*ymin, 1.05*ymax]       
    xx, win, f='fig11',s=fsz
    xp, /xlog, mar=[0,0,0,0], xr=xr, yr=yr, xtit=xlb, ytit=ylb, tit='He I 667.8 phase difference', $
        xts=9, xm=10, xtl=1.0, ytl=1.0
    for i=0, nne-1 do begin
        y = dat[*,i*npa+6]
        xo, f, y*f, l=l[i], co=co[i]
    end
    xo, [1e0, 1e9], [0,0], l=1, co=1, th=0.5
    xt, 0.10, 0.88, textoidl('T_e = 15 eV')
    xt, 0.10, 0.81, textoidl('n_e 2% sine wave [m^{-3}]')
    legend, tl, l=l, co=co, pos=[0.1, 0.78]
    xx
    
    ; fig - phase p706
    ymin = min(dat[*,indgen(nne)*npa+3]*f, max=ymax)
;    yr = [0.95*ymin, 1.05*ymax]     
    xx, win, f='fig12',s=fsz
    xp, /xlog, mar=[0,0,0,0], xr=xr, yr=yr, xtit=xlb, ytit=ylb, tit='He I 706.5 phase difference', $
        xts=9, xm=10, xtl=1.0, ytl=1.0
    for i=0, nne-1 do begin
        y = dat[*,i*npa+3]
        xo, f, y*f, l=l[i], co=co[i]
    end
    xo, [1e0, 1e9], [0,0], l=1, co=1, th=0.5
    xt, 0.10, 0.88, textoidl('T_e = 15 eV')
    xt, 0.10, 0.81, textoidl('n_e 2% sine wave [m^{-3}]')
    legend, tl, l=l, co=co, pos=[0.1, 0.78]
    xx
    
    ; fig - phase p728
    ymin = min(dat[*,indgen(nne)*npa+0]*f, max=ymax)
;    yr = [0.95*ymin, 1.05*ymax]     
    xx, win, f='fig13',s=fsz
    xp, /xlog, mar=[0,0,0,0], xr=xr, yr=yr, xtit=xlb, ytit=ylb, tit='He I 728.1 phase difference', $
        xts=9, xm=10, xtl=1.0, ytl=1.0
    for i=0, nne-1 do begin
        y = dat[*,i*npa+0]
        xo, f, y*f, l=l[i], co=co[i]
    end
    xo, [1e0, 1e9], [0,0], l=1, co=1, th=0.5
    xt, 0.10, 0.88, textoidl('T_e = 15 eV')
    xt, 0.10, 0.81, textoidl('n_e 2% sine wave [m^{-3}]')
    legend, tl, l=l, co=co, pos=[0.1, 0.78]
    xx
    
;    ; fig - phase p667-p728
;    ylb = textoidl('Phase difference Delta t \times f')
;    xx, win, f='np728_667',s=fsz
;    xp, /xlog, mar=[0,0,0,0], xr=xr, yr=yr, xtit=xlb, ytit=ylb, tit='He I 728.1-667.8 phase difference', $
;        xts=9, xm=10, xtl=1.0, ytl=1.0
;    for i=0, nne-1 do begin
;        y = dat[*,i*npa+0]-dat[*,i*npa+6]
;        xo, f, y*f, l=l[i], co=co[i]
;    end
;    xo, [1e0, 1e9], [0,0], l=1, co=1, th=0.5
;    xt, 0.10, 0.91, textoidl('T_e = 15 eV')
;    xt, 0.10, 0.84, textoidl('n_e 2% sine wave [m^{-3}]')
;    legend, tl, l=l, co=co, pos=[0.1, 0.81]
;    xx
;    
;    ; fig - phase p706-p728
;    ylb = textoidl('Phase difference Delta t \times f')
;    xx, win, f='np728_706',s=fsz
;    xp, /xlog, mar=[0,0,0,0], xr=xr, yr=yr, xtit=xlb, ytit=ylb, tit='He I 728.1-706.5 phase difference', $
;        xts=9, xm=10, xtl=1.0, ytl=1.0
;    for i=0, nne-1 do begin
;        y = dat[*,i*npa+0]-dat[*,i*npa+3]
;        xo, f, y*f, l=l[i], co=co[i]
;    end
;    xo, [1e0, 1e9], [0,0], l=1, co=1, th=0.5
;    xt, 0.10, 0.91, textoidl('T_e = 15 eV')
;    xt, 0.10, 0.84, textoidl('n_e 2% sine wave [m^{-3}]')
;    legend, tl, l=l, co=co, pos=[0.1, 0.81]
;    xx 
    
;stop
END

