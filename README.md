# ride-profiling
This is a small "framework" that allows to create a fast environment for profiling `RIDE` on a Windows machine.

## Requirements
Just `Microsoft Windows`, `Python 3` & `pip3`.

## Instructions
All Powershell scripts from `.\scripts\` should be executed from the root of the repository.

1. Run `.\scripts\0_setup_environment.ps1` to create a virtual environment (containing `RIDE` & `snakeviz`).
2. Run `.\scripts\1_generate_tests.ps1` to generate an example test suite.
3. Run `.\scripts\2_profile_ride.ps1` to start RIDE with profiling enabled.
4. Now try to trigger most likely by scrolling through with the mouse wheel (works often without expanding all suites).
5. After closing `RIDE`, `.\scripts\3_visualize_last_profile.ps1` visualizes the last created profile.

If the setting is too heavy, change the variables on top of the `.\scripts\1_generate_tests.ps1` script.
