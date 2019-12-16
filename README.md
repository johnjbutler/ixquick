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
$ sudo ix-update
```

or
```
$ sudo su
$ ix-update
```

---

# Available Commands

## General Operation
*The following a general system commands which will serve useful*

### qwerty

Simple test function...
Confirms that your installation is working correctly!

```
$ qwerty
```

### ixhelp

Displays the relevant parts of the README

```
$ ixhelp <command>
```

### ix-update

Updates ixquick to the latest version

*Note: `sudo` must be used if updating `/ixquick`*

*Run `sudo su` followed by `ix-update` on certain systems (such as Raspberry Pi)*

```
# Default base directory is /ixquick

$ ix-update [-d <Base directory>]
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

### LoadApp

Loads application onto attached iOS device for testing
```
$ LoadApp <ApplicationFile.ipa>
```

### LogApp (coming soon)

Starts a SysLog and touches a LogFile to report application runtime information for use during Debugging.
```
$ LogApp
```

### Obfuscate (coming soon)

Obfuscates input IPA file with iXGuard configuration file. Outputs Obfuscatedd IPA with specified file name.
```
$ Obfuscate <File1.IPA> <NewFileName.IPA>
```

### FindConfigKey (coming soon)

Locates your config key.
```
$ (coming soon)
```

### FindBitMach (coming soon)

Dumps application Bitcode and Machine Code for Manual Review. Useful in many cases!
```
$ FindBitMach
```
