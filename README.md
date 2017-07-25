# Bubble

A game development framework for ANS-compliant Forth systems.  (Currently only SwiftForth/Windows is supported.)

## Requirements
- SwiftForth for Windows
- Windows 7 and up


## Getting Started
1. Install SwiftForth.  Add it's bin\ folder to your PATH.
1. (OPTIONAL) Install Komodo Edit.  The included .komodoproject is set up to start SwiftForth and load dev.f when you press F5.
1. dev.f is the entry point during development.  INCLUDE this file to bring up the framework, or press F5 with the komodoproject open in Komodo Edit.
1. If it exists, autoexec.f will be loaded by dev.f.  This is the place to put all your project-specific startup actions.  (Like loading source.)
1. To start the in-game IDE type GO.  Alt-Enter toggles fullscreen.

## Notes

- All number literals are converted to 20.12 fixed-point unless prefixed with # or you explicitly say DECIMAL.  (FIXED to go back.)  You can think of these numbers as scalars.
- Some words are redefined to use fixed-point numbers.  Others such as ALLOT are unchanged so make sure to be aware of the format of any literals passed to these.
