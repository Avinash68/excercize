#!/usr/bin/env python
import matplotlib.pyplot as mp
from numpy import linspace, sin, exp, pi

def fact():
    # calculate 500 values for x and y without a for loop
    x = linspace(0, 10*pi, 500)
    y = sin(x) * exp(-x/10)
    # make diagrasm
    mp.plot(x,y)
    mp.show()

if __name__=="main":
    demo =fact()
