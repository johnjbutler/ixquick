# ixQuick - Custom Command Syntax for iXGuard

iXQuick is a wrapper designed to simply the process of using iXGuard. 
The tools and configuration files that support this can be found immediately below.


# To Install:

/// Run each command at  the Terminal, sequentially.

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

$ ixconfirm [-y | -Y <Confirmation message>] [-n | -N <Rejection message>] [-q <Question>]



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
$ ixgit <github-shortcut>
```


## ixhelp

Displays the relevant parts of the README

```
$ ixhelp <command>
```
 
 
## ixtype

Outputs variable type as a string
Possible outputs: int, string

```
$ ixtype $VAR
```


## ixguard-update

Updates ixguard-tools to the latest version

*Note: `sudo` must be used if updating `/ixquick`*

*Run `sudo su` followed by `ixguard-update` on certain systems (such as Raspberry Pi)*

```
# Default base directory is /ixquick

$ ixquick-update [-d <Base directory>]
```


