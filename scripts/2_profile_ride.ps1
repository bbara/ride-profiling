.\environment\Scripts\activate.ps1
New-Item -Path ".\profiles" -ItemType "directory" -Force | Out-Null
python -m cProfile -o ".\profiles\$(Get-Date -Format "MM-dd-yyyy_HH-mm").prof" -m ride .\tests\generated\
