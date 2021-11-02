import matplotlib.pyplot as plt
import numpy as np
import math
#https://numpy.org/doc/stable/reference/generated/numpy.arange.html

x=np.arange(0, 4*np.pi, 0.1) #Start, Stop, Step

y=np.sin(x)
z=np.cos(x)
plt.ylabel('Magnitude')
plt.xlabel('Time')
plt.plot(x,y,x,z)
#plt.plot([x,y],[x,z])
plt.show()
