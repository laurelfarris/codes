;!P.background='FFFFFF'X
loadct= 39
thick=3

x = fltarr(50)
plot, x, color=0, thick=thick, yrange=[0,255],ystyle=1

for i=1,255,1 do begin

	oplot, x+i, color=i, thick=thick

endfor


END
