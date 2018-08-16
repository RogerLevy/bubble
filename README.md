**THIS PROJECT IS DEPRECATED.**

Bubble has been superceded by [AllegroForthKit](https://github.com/RogerLevy/AllegroForthKit) which is the foundation for the game engine [RAMEN](https://github.com/RogerLevy/ramen)

# Bubble

A game development framework for ANS-compliant Forth systems.  (Currently only SwiftForth/Windows is supported.)

This serves as the basis for Lantern, an experimental game engine. https://github.com/RogerLevy/lantern

## Requirements
- SwiftForth for Windows
- Windows 7 and up


## Getting Started
1. Install SwiftForth.  Add it's bin\ folder to your PATH.
1. (OPTIONAL) Install Komodo Edit.  The included Komodo tools are useful for starting Bubble from SwiftForth.   F5 loads it normally, and F7 loads it without the graphical IDE.
1. dev.f is the kickoff point during development.  INCLUDE this file to bring up the framework, or press F5 with the komodoproject open in Komodo Edit.
1. If envconfig.f exists it will be loaded first by dev.f . You can create this file and put your project and system-specific settings in here.
1. If it exists, autoexec.f will be loaded by dev.f.  This is the place to put all your project-specific startup actions.  (Like loading source.)
1. Depending on if HOST-IDE is defined, the graphical IDE will start.  You can define it in envconfig.f or use the F7 tool as mentioned above.


## Notes

- All number literals are converted to 20.12 fixed-point unless prefixed with # or you explicitly say DECIMAL.  (FIXED to go back.)  You can think of these numbers as scalars.
- Some words are redefined to use fixed-point numbers.  Others such as ALLOT are unchanged so make sure to be aware of the format of any literals passed to these.
