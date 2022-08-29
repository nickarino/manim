# TODO my verision of Manim on github
#docker run --rm -v /Users/skriloffn/devhelp/manim/manim/example_scenes/:/manim manimcommunity/manim manim basic.py SquareToCircle -qm
docker run --rm -v ${PSScriptRoot}/example_scenes/:/manim manimcommunity/manim manim basic.py SquareToCircle -qm
#pipe the output of this to an object so you have the path available. 
#open $PSScriptRoot/manim/example_scenes/media/videos/basic/720p30/SquareToCircle.mp4

#On mac.  Notice the "/" at the end of example_scenes.  and ":" /manim.  NOT MAINIM
# docker run --rm -v "$PWD/manim/example_scenes/:/manim" manimcommunity/manim manim basic.py SquareToCircle -qm
$fileName = "SquareToCircle.mp4"
$pathToMp4 = Split-Path (Get-ChildItem -Path . -Recurse -Name $fileName)
Start-Process -FilePath $fileName -WorkingDirectory $pathToMp4
