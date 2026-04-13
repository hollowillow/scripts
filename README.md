# INTRODUCTION
[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)
![GitHub top language](https://img.shields.io/github/languages/top/hollowillow/scripts)
![GitHub Repo stars](https://img.shields.io/github/stars/hollowillow/scripts)

All scripts in this repository are published and licensed under the [GPLv3 License](./LICENSE), contribution and/or
usage that falls under the terms of this license is welcome and encouraged.

> [!WARNING]
> This repository is currently undergoing a massive change in code structure and readability. The following documentation
> applies only to the specified scripts bellow
> - fmenu
> - term-menu
> - wp

## USAGE
Clone the scripts within this repository into your $PATH and make sure the files have the necessary permissions for execution.

```
git clone https://github.com/hollowillow/scripts
cd scripts
chmod u+x .
```

> [!CAUTION]
> It is highly advised that you understand the code of any script you find online before running it on your system. 

### POSIX
These scripts try to follow the posix standard as defined by 
[The Open Group Base Specifications Issue 8](https://pubs.opengroup.org/onlinepubs/9799919799/), and are tested on
NixOS using dash (debian almquist shell). Any external dependencies are stated in their documentation.

### VARIABLES
Some of these scripts can use variables provided by [XDG Base Directory Specification](https://specifications.freedesktop.org/basedir-spec/latest/),
and [XDG User Dirs](https://www.freedesktop.org/wiki/Software/xdg-user-dirs/) if applicable.

Any other variables that may be set to globally edit the behaviour of scripts will be specified in their documentation.

## DOCUMENTATION
At the start each script file is a comment block that provides basic necessary information for using said script.
This same comment block may also be printed to the terminal by using the `-h` or `--help` flag the script.

### EXIT CODES
| exit code | meaning |
| - | - |
| 0 | successful execution (including no selection) |
| 1 | error |
