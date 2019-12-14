# iXQuick: Seamless Command Syntax for iXGuard

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

*It is recommended to go through each file to see how it works. The scripts are all commented and short!*


## ixconfirm

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


## ixgap

Inserts a gap between standard out statements using echo

```
$ ixgap [blank_lines_before] [text_to_output] [blank_lines_after]
```


## ixgit

Installs a github repository based on shortcuts defined in `/ixquick/etc/ixgit.conf`

*Note: this is not currently used or maintained*

```
$ pgit <github-shortcut>
```


## ixhelp

Displays the relevant parts of the README

```
$ phelp <command>
```

## ixtype

Outputs variable type as a string
Possible outputs: int, string

```
$ ptype $VAR
```

## ixtest

A test to confirm operational executables in $PATH.

```
$ ixtest
```

## ixquick-update

Updates ixquick-tools to the latest version

*Note: `sudo` must be used if updating `/ixquick`*

*Run `sudo su` followed by `ixquick-update` on certain systems (such as Raspberry Pi)*

```
# Default base directory is /ixquick

$ ixquick-update [-d <Base directory>]
```
