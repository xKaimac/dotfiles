# Bash Configuration Documentation

## Table of Contents
1. [.bashrc](#bashrc)
2. [.inputrc](#inputrc)

## .bashrc

The `.bashrc` file is executed for interactive non-login shells. It sets up various environment variables, aliases, and functions to make the `bash` experience better.

### Global Definitions

```bash
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi
```

This section sources the system-wide bashrc file if it exists.

### PATH Configuration

```bash
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH
```

This adds `~/.local/bin` and `~/bin` to the PATH if they're not already there.

### Additional Configuration Files

```bash
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc
```

This section sources all files in the `~/.bashrc.d/` directory, allowing for modular configuration.

### NVM (Node Version Manager) Configuration

```bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
```

This sets up NVM and its bash completion.

### Lua Path Configuration

```bash
export LUA_PATH="./?.lua;./?/init.lua;./lua/?/init.lua;;"
```

This configures the Lua path for finding Lua modules.

### Dotfiles Management Alias

```bash
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
```

This alias allows for managing dotfiles using git. (It's a bare repo)

### Custom Functions and Key Bindings

1. **fzf_cd**: Allows directory navigation using fzf (Ctrl+F)
   ```bash
   fzf_cd() {
     cd $(find * -type d | fzf)
   }
   bind -x '"\C-f": fzf_cd'
   ```

2. **swap_audio_output**: Toggles between headphones and speakers (Ctrl+O)
   ```bash
   swap_audio_output() {
     # Function body omitted for brevity
   }
   bind -x '"\C-o": swap_audio_output'
   ```

3. **tmux_sessioniser**: Opens tmux-sessioniser (Ctrl+T)
   ```bash
   tmux_sessioniser() {
     ~/.local/bin/tmux-sessioniser
   }
   bind -x '"\C-t": tmux_sessioniser'
   ```

## .inputrc

The `.inputrc` file configures the readline library, which is used by bash for line editing.

```
set completion-ignore-case on
set show-all-if-ambiguous on
```

- `completion-ignore-case on`: Makes tab completion case-insensitive.
- `show-all-if-ambiguous on`: Shows all possible completions immediately instead of ringing the bell when the completion is ambiguous.
