# TODO my verision of Manim on github
#docker run --rm -v /Users/skriloffn/devhelp/manim/manim/example_scenes/:/manim manimcommunity/manim manim basic.py SquareToCircle -qm
docker run --rm -v $PSScriptRoot/manim/example_scenes/:/manim manimcommunity/manim manim basic.py SquareToCircle -qm
#pipe the output of this to an object so you have the path available. 
open $PSScriptRoot/manim/example_scenes/media/videos/basic/720p30/SquareToCircle.mp4
