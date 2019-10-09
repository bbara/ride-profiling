$SUITES=100
$TESTS_PER_SUITE=10

Remove-Item ".\tests\generated" -Recurse -Force -ErrorAction SilentlyContinue
New-Item -Path ".\tests\generated" -ItemType "directory" | Out-Null
For ($i=0; $i -le $SUITES; $i++) {
  New-Item -Path ".\tests\generated\Suite$i" -ItemType "directory" | Out-Null
  For ($j=0; $j -le $TESTS_PER_SUITE; $j++) {
  Copy-Item "tests\Test.robot" -Destination "tests\generated\Suite$i\Test$j.robot"
  }
}
