$fileToRun = 'example2.py'
$methodToRun = 'Example2'
docker run --rm -v ${PSScriptRoot}:/manim manimcommunity/manim manim $fileToRun $methodToRun -qm
#open $PSScriptRoot/manim/example_scenes/media/videos/basic/720p30/SquareToCircle.mp4

#On mac.  Notice the "/" at the end of example_scenes.  and ":" /manim.  NOT MAINIM
# docker run --rm -v "$PWD/manim/example_scenes/:/manim" manimcommunity/manim manim basic.py SquareToCircle -qm
$fileName = "$methodToRun.mp4"
$pathToMp4 = Split-Path (Get-ChildItem -Path . -Recurse -Name $fileName)
Start-Process -FilePath $fileName -WorkingDirectory $pathToMp4
