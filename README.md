# iX-Quick: Seamless Command-Line Integration Tool

The tools and configuration files for custom ixquick scripts.

To install:

```
$ sudo git clone https://github.com/johnjbutler/ixquick /ixquick
$ sudo bash /ixquick/install.sh
$ source ~/.bashrc
```

To update:
```
$ sudo ixquick-update
```

or
```
$ sudo su
$ ixquick-update
```

---

# Available Commands

## General Operation
*The following a general system commands which will serve useful*

### qwerty

Simple test function...
Confirms that your installation is working correctly!

```
$ ixhelp <command>
```

### ixhelp

Displays the relevant parts of the README

```
$ ixhelp <command>
```

### ixquick-update

Updates ixquick to the latest version

*Note: `sudo` must be used if updating `/ixquick`*

*Run `sudo su` followed by `ixquick-update` on certain systems (such as Raspberry Pi)*

```
# Default base directory is /ixquick

$ ixquick-update [-d <Base directory>]
```

### ixconfirm

Confirms a user action

```
# Usage:

$ pconfirm [-y | -Y <Confirmation message>] [-n | -N <Rejection message>] [-q <Question>]



Flags
--------------
-y  Display default confirmation message when the user confirms
-Y  Display custom <Confirmation message> when the user confirms
-n  Display default rejection message when the user does not confirm
-N  Display custom <Rejection message> when the user does not confirm
-q  Ask a user-defined confirmation question


Default Values
--------------
<Confirmation message>  "Operation confirmed"
<Rejection message>     "Operation cancelled"
<Question>              "Are you sure?"
```
## iXQuick Related Functions

*The following functions help automate use-cases within iXGuard*

###LoadApp

Loads application onto attached iOS device for testing
```
$ LoadApp <ApplicationFile>
```
