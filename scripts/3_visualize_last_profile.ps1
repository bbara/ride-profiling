.\environment\Scripts\activate.ps1
snakeviz ".\profiles\$(Get-ChildItem ".\profiles" | Sort-Object {$_.LastWriteTime} | Select-Object -Last 1)"
