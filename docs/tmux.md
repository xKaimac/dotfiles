# tmux Configuration and Scripts Documentation

This document provides an overview and explanation of the tmux-related scripts and configuration files in this dotfiles repository.
Big thanks to [ThePrimeAgen](https://github.com/ThePrimeagen/.dotfiles/blob/602019e902634188ab06ea31251c01c1a43d1621/bin/.local/scripts/tmux-sessionizer#L4) for this one.

## Table of Contents
1. [tmux-cht.sh](#tmux-chtsh)
2. [.tmux-cht-languages](#tmux-cht-languages)
3. [.tmux-cht-command](#tmux-cht-command)
4. [tmux-sessioniser](#tmux-sessioniser)

## tmux-cht.sh

### Overview
This Bash script provides a convenient way to search for programming language syntax or command usage using the cht.sh service within a tmux session.

### Functionality
1. The script uses `fzf` to allow the user to select a programming language or command from predefined lists stored in `~/.tmux-cht-languages` and `~/.tmux-cht-command`.
2. After selection, it prompts the user to enter a query.
3. Depending on whether the selection is a language or a command, it opens a new tmux window and curls the cht.sh service with the appropriate parameters.

### Usage
1. Run the script.
2. Select a language or command using fzf.
3. Enter your query when prompted.
4. A new tmux window will open with the results from cht.sh.

### Dependencies
- tmux
- fzf
- curl
- cht.sh service

### Files Used
- `~/.tmux-cht-languages`: List of programming languages
- `~/.tmux-cht-command`: List of commands

### Note
The script keeps the window open indefinitely for language queries, allowing for continued viewing. For command queries, it uses `less` for easy navigation of the results.

## .tmux-cht-languages

### Overview
This file contains a list of programming languages that can be queried using the tmux-cht.sh script.

### Contents
The file includes the following programming languages:

1. nodejs
2. javascript
3. tmux
4. typescript
5. cpp
6. c
7. lua
8. python
9. bash
10. css
11. html

### Usage
This file is read by the tmux-cht.sh script to provide options for language-specific queries to cht.sh. Any languages can be added by changing this file.

## .tmux-cht-command

### Overview
This file contains a list of command-line tools and utilities that can be queried using the tmux-cht.sh script.

### Contents
The file includes a variety of common Unix/Linux commands and tools, such as:

1. find
2. man
3. tldr
4. sed
5. awk
6. tr
7. cp
8. ls
9. grep
10. xargs
... (and many more)

### Usage
This file is read by the tmux-cht.sh script to provide options for command-specific queries to cht.sh. Any commands can be added by editing this file.

## tmux-sessioniser

### Overview
This Bash script simplifies the process of creating or attaching to tmux sessions based on directory selection. It's particularly useful for quickly setting up development environments.

### Functionality
1. If given an argument, it uses that as the selected directory. Otherwise, it uses `fzf` to allow the user to select a directory from `~/Documents`.
2. Creates a new tmux session named after the selected directory (with dots replaced by underscores).
3. If tmux is not running, it starts a new session, runs `npm start`, detaches, and exits.
4. If tmux is running but the session doesn't exist, it creates a new detached session and runs `npm start`.
5. If the session already exists, it notifies the user.
6. Finally, it attaches to the session.

### Usage
1. Run the script, optionally with a directory path as an argument.
2. If no argument is provided, select a directory using fzf.
3. The script will create a new tmux session (if needed) and attach to it.

### Dependencies
- tmux
- fzf
- npm (assumed, as the script runs `npm start`)

### Note
This script assumes that the selected directories are npm projects, as it automatically runs `npm start` in new sessions. You may need to modify this behavior if you use it with non-npm projects.
