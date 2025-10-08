# lec 1: shell

## Most Important Bash Keyboard Shortcuts

Ref: https://www.linux.org/threads/popular-keyboard-shortcuts-for-the-gnu-bash-shell.44645/

Note: `Alt` is `Option` in macos

```sh
# navigation
Ctrl+a      to jump to start of the line
Ctrl+e      to jump to end of the line
Alt+b
Alt+<       to jump to the left word of the line
Alt+f
Alt+>       to jump to the right word of the line
# edit
Ctrl+w      to cut the word before the cursor
Alt+d       to cut the word after the cursor
Ctrl+u      to cut the text from cursor to the begining
Ctrl+k      to cut the text from cursor to the end
Ctrl+y      to paste the last cut text
# histry
Ctrl+l      clear the screen
Ctrl+r      search the command histroy
# process control
Ctrl+c      send SIGINT signal, usually resulting in termination
Ctrl+z      send SIGTSTP signal, suspending the exectution
fg          resume a suspended process in the foreground
```

## Exercises

- note-1: use `echo $SHELL` to check which shell you're using.
- note-9: use `chmod 764 semester` to add `execute` premission.
- note-10: use `./semester | grep "^last-modified:" | cut -d' ' -f2-`
- note-11: `/sys/class/thermal` is empty in my local Ubuntu-22 machine. Ignore
this.

# lec 2

Interesting shell specical variables:

```sh
!! # the last command
$_ # the last arg of the last command
   # esc + .
```

## test

check file types and compare values

`[` is a synonym for `test` in almost all shell.
`[` is a program.

```sh
$ which [
/bin/[
```

`[[` is a new and improved version. It's only a keyword rather than a program.

better to use `[[` rather than `[`. See http://mywiki.wooledge.org/BashFAQ/031

## shell globbing

https://tldp.org/LDP/abs/html/globbingref.html

## shebang

better to use `env`

`#!/usr/bin/bash` --> `#!/usr/bin/env bash`

## tldr pages

A brief output than `man`.

## find with exec

```sh
# Delete all files with .tmp extension
find . -name '*.tmp' -exec rm {} \;
```

## useful tools

`fd-find, riggrep, autojump`

## Exercises

- note-2: See `marco.sh`
- note-3: run `bash 3.sh`
- note-4: use `find ./4-mock/ -type f -name "*.html" -print0 | xargs -0 zip target.zip`
