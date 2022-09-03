
from manim import *

import numpy as np

class Example2(Scene):
    def construct(self):
        t1 = Tex("Here is a way of realizing Euler's numbers:", color=GOLD_B).to_corner(UP)
        self.play(Write(t1))

        t2= Tex("Consider the graph of the function", color=BLUE).shift(UP * 2.5)
        t2.to_corner(LEFT)
        self.play(Write(t2))

        t3 = MathTex(r"f : \mathbb{R}_+ \to \mathbb{R}, \ f(x) = \frac{1}{x}", color= RED_B).next_to(t2, RIGHT)
        self.play(Write(t3))

        ax = Axes(
            x_range=[0, 6, 1],
            y_range=[-2, 3, 1],
            tips=False,
            axis_config={"include_numbers": True},
            y_axis_config={"scaling": LogBase(custom_labels=True)},
            color = GOLD_B
        )

        # x_min must be > 0 because log is undefined at 0.
        graph = ax.plot(lambda x: x ** 2, x_range=[0.001, 10], use_smoothing=False)
        self.add(ax, graph)
        
        vertLine = ax.get_vertical_lines_to_graph(graph,[1,6],5)

        self.play(Write(graph))


