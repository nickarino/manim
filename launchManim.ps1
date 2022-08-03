# TODO my verision of Manim on github
#docker run --rm -v /Users/skriloffn/devhelp/manim/manim/example_scenes/:/manim manimcommunity/manim manim basic.py SquareToCircle -qm
docker run --rm -v $PSScriptRoot/example_scenes/:/manim manimcommunity/manim manim basic.py SquareToCircle -qm
#pipe the output of this to an object so you have the path available. 
$pathToMp4 =(Get-ChildItem -Path . -Recurse -Name SquareToCircle.mp4)
Start-Process -FilePath $pathToMp4

