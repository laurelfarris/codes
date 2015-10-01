#!/usr/bin/env python

# not compiled, execute with cl> python program_name.py
#   or cl> ./program_name.py IF you have the top line in your program
#     (must be the first line, literally)

# To allow import:
def main():
    # program statements
    print "hello world."
if __name__=="__main__":  # flexible way of running routines
    main()


# line continuation:
implicit continuation using expression in parentheses...?

# variables: not declared

# arrays
numpy.zeros(n,m)
numpy.array([[a,b,c,d][e,f,g]])
numpy.arrange(n)

# dynamic memory allocation

# structures
(dictionaries, see also lists)
var={'name':'test', ra:1.}
print var['name'], var['test']

# structure arrays
sarray = np.zeros(nelem,
 dtype=[('name','a12'),('ra','f4'),('dec','f4')])
sarray=np.zeros(nelem,
 dtype={'names': ('name', 'ra', 'dec'),
  'formats': ('S12','f4','f4')})

# operators (add, subtract, multiply, divide, exponent)
+,-,*,/,**,+=,-=,*=,/=,++,--
# bitwise operators (and, or, xor, not)
&,|,^,!
# string operators
+, str[i1:i2] (string slice, but string is immutable)

#matrix operations

# conditionals
if (condition):
    statements
else:
    statements
    (extent of conditional statements specified by indentation)

# Conditions (logical operators)
==, !=, >, >=, <, <=, and, or, not

# Looping
# for i in (list):
#    statements
for i in range(1,x):  # ~ for i=1,x

#Looping with condition
while (condition):
    statements

# Simple output
print 'characters', string, variable

# Formatted output
'{:8d}asdfad{:8.2f}'.format(i,f)
formats: {:nd},{:n.nf},{:ns} 
#    n-number, d-integer, f-float, s-string

# simple reading from terminal and file
terminal:
s=raw_input('prompt')
file:
f=open(file,'[rwa]') (read,write,append)
s=f.readline()
f.close(),
alternatively:
for line in f:
  print line

# higher level file reading routines
data = numpy.loadtxt(file, 
 dtype=[('name','a12'),('ra',f4),('dec','f4')])

 data = astropy.io.ascii(file)












