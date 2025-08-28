# INTRODUCTION
[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)
![GitHub top language](https://img.shields.io/github/languages/top/hollowillow/scripts)
![GitHub Repo stars](https://img.shields.io/github/stars/hollowillow/scripts)

All scripts contained within this repository are published and licensed under the [GPLv3 License](./LICENSE). 
All forms of contribution or usage that falls under this license is welcome and encouraged.

## USAGE
Clone the scripts within this repository into your PATH and make sure the files have the necessary permissions for execution.

`git clone https://github.com/hollowillow/scripts`

I highly advise that you carefully read the code of any scripts you plan to use, to understand at least the basics of how
they function before you ever try to run them on your system.

### POSIX
Most of these scripts try to follow POSIX compliancy, are tested on Arch Linux using Dash (Debian Almquist Shell),
and state their dependencies in their documentation.

### DOCUMENTATION
At the top each script file is located a comment block that provides basic necessary information for using said script.
This same comment block may also be viewed as a help message using the `-h` flag with any of the scripts.

Additional comments may appear within the files for added context and reasoning,
for those looking to adapt these scripts to their workflow.

## SYNTAX GUIDELINES
The following is a list of certain syntax guidelines that I try to generally stick to.
This section can be useful for those trying to orient themselves in the scripts.
Not all of the scripts strictly follow this guideline, or may still be in the process of
being converted to it.

### HELP MESSAGES
All help messages should be located at the top of a script file as a comment block after the shebang, leaving one line
between the shebang empty.

The help message has to contain:
- A simple summary of the script
- A link to this repository
- And a usage description, as per POSIX specifications

The help message may also contain:
- A list of options if the script has any
- A description further explaining general functionality of the script
- A list of dependencies
    - Optional dependencies need to specify they are optional, and/or the context in which they are required (example: wayland/x11)

Here is a code block to use as a template for the formatting, paste directly after shebang:
```sh
#
# summary:
# repository: https://github.com/hollowillow/scripts
#
# usage:
# options:
#       -e      example options
#
# description:
#       
#       example description text
#       second line of description text
# 
# dependencies:

```

The comment block can then be printed as a help message using the following code:
```sh
# create help message from comment block at the head of file
if [ "$1" = "-h" ]; then
        sed "1,2d;s/^# //;s/^#$/ /;/^$/ q" "$0"; exit 0
fi
```

### COMMENTS
All comments should only explain WHY not HOW, with the exception of hard to read syntax such as sed arguments.

### VARIABLES
All variables that pertain to files or directories on the system should be specified 
using [XDG Base Directory Specification](https://specifications.freedesktop.org/basedir-spec/latest/).

All variable names should be written in full caps, using underscore as a substitute for space.

All variables should be as verbose as possible.

### FUNCTIONS
All functions should be named verbosely using camel case.

### EXITS AND ERROR MESSAGES
All error messages should be piped to stderr, followed by an immediate exit of the script.

- Exit code 0 always means successful execution
- Exit code 1 can be error or no selection, depending on the script
- Exit code 2 is always error

### MISC
- All find commands should exclude .git subdirectories
- All files parsed by a command should support # comments anywhere in the file
- All scripts should be possible to be run non interactively
