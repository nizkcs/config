alias fetch '/home/ryan/.local/bin/fm6000 -nd -f /home/ryan/.local/bin/arch.txt'

# Check if fish is running in a terminal and is interactive
if status is-interactive
    # Commands to run in interactive sessions can go here
    set fish_greeting
    starship init fish | source # Prompt
    fetch
end

if test -f ~/.cache/ags/user/generated/terminal/sequences.txt # Apply terminal colorscheme
    cat ~/.cache/ags/user/generated/terminal/sequences.txt
end

# == Terminal shortcut or "Abbreviation"
# - Handy change dir shortcuts
abbr .. 'cd ..'
abbr .2 'cd ../..'
abbr .3 'cd ../../..'
abbr .4 'cd ../../../..'
abbr .5 'cd ../../../../..'

# - Always mkdir a path (this doesn't inhibit functionality to make a single dir)
abbr mkdir 'mkdir -p'

# Alias 
alias l='eza -lh  --icons=auto' # long list
alias ls='eza -1   --icons=auto' # short list
alias ll='eza -lha --icons=auto --sort=name --group-directories-first' # long list all
alias ld='eza -lhD --icons=auto' # long list dirs
alias lt='eza --icons=auto --tree' # list folder as tree
