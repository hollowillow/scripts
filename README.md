# INTRODUCTION
The following information pertains to the scripts located within this repository. 
None of the information found in this README is absolute and may vary based on the specifications, 
stages of development, and complexity of a script.

With that being said, these are some tips and tricks for utilising these scripts to their fullest.

## POSIX
Most of these scripts follow strict posix compliancy, are tested using dash (debian almquist shell),
and state any non-posix dependencies in their documentation.

While these scripts can work in any \*nix system, they are primarily made for Linux, certain scripts also
relying on either the Wayland or X11 display protocols for parts of their functionality out of the box.
For other systems, adjusting the scripts may be preferable or even necessary.

## SCRIPT DOCUMENTATION
At the top each script file is located a comment block that provides basic necessary information for using said script.
This same comment block may also be accessed as a help message using the "-h" flag with any of the scripts.

There may be some additional comments within the files for those looking to tinker and adjust these scripts.

## GENERAL SCRIPT USAGE
Make sure that the scripts you are using are located within your $PATH and have the correct permissions to be executable. 
After that it should be as easy as typing the name of the script with any desired flags and arguments and running it.

## FEEDBACK
At the end of the day, I am just an enthusiast writing scripts to make my life a little easier and because
I find some enjoyment doing so. I am acutely aware of the fact that a lot of the code in this repository can be classified as
spaghetti code that could use better documentation, and has little to no optimisation for performance. 

With that said, I greatly thank anyone who reaches out in an effort to improve these scripts.

I am also welcoming of any questions and will try to help to the best of my abilities.

Thanks for reading.
