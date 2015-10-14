; PLOTTING

!P.background = 'FFFFFF'X
loadct, 39 ;Rainbow: color=0 (black), =255 (red)
;background=255, color=0,$ ;black plot, white background
; This doesn't work for some reason... need to load color table?

charsize=1.25
plot,x,y,xtitle='title',charsize=charsize ;make axis labels bigger!

;Options (all preceeded with [xyz])

; LEARN TO DO THESE!
;TEXT ;add text on top of plot
; Greek symbols, superscripts/subscripts, etc. in axis labels

;IDL> WRITE_JPEG, 'figname.jpg', TVRD(), QUALITY=25
;IDL> WRITE_PNG, 'figname.png', TVRD(/TRUE)

;range=[min,max],$ ;idl likes to round! prevent this by setting:
;style=1,$ ;Force exact axis range
;style=2,$ ; extend axis range
;style=4,$ ;suppress entire axis
;style=8,$ ;suppress box-style axis
;style=16,$ ;inhibit setting y-axis min = 0
;thick=1,$ ; default: thickness of plot lines
;tick_get = v,$; returns values of tick marks for designated axis into
;  variable 'v'
;margin=[left/bottom, right/top],$ ;dep. on whether setting x or y
;xmargin=[10,3],$ ;default - 10 characters to the left, 3 to the right
;ymargin=[4,2],$  ;default - 4 character on bottom, 2 on top
;minor=0,$ ;default
;minor=1,$ ;supress minor tick marks
;minor=n,$; n intervals ~ n-l minor tick MARKS
;ticks=1 ,$; supress major tick marks
;tickformat='(F6.2)',$ 
;tickinterval=n,$ ;interval bet. major tick marks
;                     (overrides 'ticks' option)
;ticklayout = 0 or 1 or 2, $
;ticklen
;tickname
;ticks
;tickunits
;position = [x_o,y_o,x_1,y_1] ,$ ; puts plot in corner or something
;psym = 1(+),2(*),3(.),4(diamond),5(triangle),6(square),7(x)




