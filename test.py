from numpy import arange
import matplotlib.pyplot as plt

x1 = arange(0,10,0.5)
y1 = x1**2
y2 = x1**3
'''
plt.plot(x,x**2)
plt.title("A lovely plot")
plt.ylabel("$y=x^2$")
matplotlib2tikz('test.tex')
plt.savefig('test.png')

plt.plot(x1, y1, 'bo', label='sampled')
plt.plot(x1, y2, ':k', label='continuous')
plt.legend()
plt.show()
'''
plt.plot(x1,y1,x1,y2)
plt.show()
