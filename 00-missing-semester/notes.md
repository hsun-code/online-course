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
- note0-10: use `./semester | grep -i "last-modified" | cut --delimiter=' ' -f 2-7`
- note-11: `/sys/class/thermal` is empty in my local Ubuntu-22 machine. Ignore
this.

# lec 2

## shebang

better to use `env`

`#!/usr/bin/bash`

## cut command


how to run shell on command?
not in script file...

## difference between `'` and `"` delimiter

```sh
foo=bar
echo "$foo"
# prints bar
echo '$foo'
# prints $foo
```

ref: https://tldp.org/LDP/abs/html/special-chars.html

## tldr pages


## fd-find
macos
/opt/homebrew/bin/fd
ubuntu
ln -s $(which fdfind) ~/.local/bin/fd
how about fedora???

## locate

## ripgrep

## autojump

