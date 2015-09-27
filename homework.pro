; Possible things to include:
;	1. constants 
;	2. variables   
;	3. formulas
;	4. conversions


;; Constants
G = 6.67e-11		; Gravitational constant [SI]
Msun = 1.99e30		; Mass of sun [kg]
Rsun = 6.96e8		; Radius of sun [m]

h = 6.626e-34		; Plank's [J*s]
k = 1.138e-23		; Boltzmann's [J/K]
c = 3.0e8		; Speed of light [m/s]

e = EXP(1)		; Euler's number


;;----------------------Assignment------------------------;;

;PRO homework 

Vsun = (4./3.)*!PI*(Rsun)^3
rho_sun = Msun/Vsun
PRINT, 'Density of Sun: ', rho_sun, ' kg/m^3'

STOP

; Variables
T = 8000.
;lambda = 500.e-9
lambda = FLTARR(400) ;; should be able to set this up with range and increment
                     ;; ... and leave it out of FOR loop entirely
B = FLTARR(400)
lambda[0] = 300e-9

 FOR i=1,N_ELEMENTS(lambda)-1 DO BEGIN
  lambda[i] = lambda[i-1] + 1e-9
  ; Blackbody formula [W/m^2/sr/m(wavelength)]
  B[i] = ( 2*h*c^2 ) / ( lambda[i]^5 * (exp(h*c/(lambda[i]*k*T))-1) )
 ENDFOR
;; Can you just set B = lambda*(...)??? Since B=A*2 works, when A and B are both arrays.

;; Plotting

; Plot B as function of lambda
plot, lambda,B

; Reverse black and white (printable)
PLOT,x,y ; ,color=cgcolor('black'),background=cgcolor('white')

END
