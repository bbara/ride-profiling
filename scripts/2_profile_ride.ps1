.\environment\Scripts\activate.ps1
New-Item -Path ".\profiles" -ItemType "directory" -Force | Out-Null
python -m cProfile -o ".\profiles\$(Get-Date -Format "yyyy-MM-dd_HH-mm-ss").prof" -m ride .\tests\generated\
