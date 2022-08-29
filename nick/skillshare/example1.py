# https://www.skillshare.com/classes/Create-Math-Animations-Like-3Blue1Brown-using-Manim/534176482/projects
from tkinter import W
from manim import *
import numpy as np

# Use the manim library to make some text and write it
# manim -pql quickStart.py MakeTextWithManim
class MakeTextWithManim(Scene):
    def construct(self):
        t1 = Tex("Insert some text")
        self.play(Write(t1))

