# -*- coding: utf-8 -*-
"""
Created on Sat Nov  5 14:01:04 2016

@author: prem
"""
import numpy as np
p2=4.49
p3=1.79
p4=12.74
p5=6.23
p1=5.244
e=7.13*3.14/180
a=10*3.14/180
cos=np.cos
sin=np.sin
cl=((p5-p2)*cos(a-e)+(p4-p3)*cos(a+e))/(1.4*1.96**2*p1*cos(e))
cd=(-(p5-p2)*sin(a-e)-(p4-p3)*sin(a+e))/(1.4*1.96**2*p1*cos(e))
print cl
print cd
 

 