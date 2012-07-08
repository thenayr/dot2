#Fix clipboard OSX
set -g default-command "reattach-to-user-namespace -l /bin/bash"
set -g default-terminal "screen-256color"
setw -g mode-mouse off
set -g prefix C-a
unbind C-b
set -sg escape-time 1
set -g base-index 1
setw -g pane-base-index 1

#Fast reloading
bind r source-file ~/.tmux.conf \; display "RELOADED!"

#Easier splitting
bind | split-window -h
bind - split-window -v

#Window selections
bind -r C-H select-window -t :-
bind -r C-L select-window -t :+

#Movement for panes
unbind-key j
bind-key j select-pane -D
unbind-key k
bind-key k select-pane -U
unbind-key h
bind-key h select-pane -L
unbind-key l
bind-key l select-pane -R

#Resizing of panes
bind -r H resize-pane -L 5
bind -r J resize-pane -D 5
bind -r K resize-pane -U 5
bind -r L resize-pane -R 5

#Colors
#setw -g window-status-fg cyan
#setw -g window-status-bg default
#setw -g window-status-attr dim
#setw -g window-status-current-attr bright
#setw -g window-status-current-bg red
#setw -g window-status-current-fg white
#set -g pane-border-fg green
#set -g pane-border-bg black
#set -g pane-active-border-fg white
#set -g pane-active-border-bg yellow

## set status bar
set-option -g status-utf8 on
set-option -g status-bg colour11
set-option -g status-fg colour8

#set-option -g status-left '⣿'
#set-option -g status-right '⡇ #[bold]❐ #S:#I#[default] ⡇ #[bold]#(whoami) ● #H#[default] '
#set-option -g status-right '⡇ ❐ #S ⡇ ❖ #(rvm tools identifier) ⡇ #(whoami) ● #H '
set-option -g status-left '⣿ #[bold]❐ #S#[default] ⡇'
set-option -g status-right '#[bold]#(whoami) ● #H#[default] '

set-option -g status-right-length 60
set-option -g status-left-length 60

## highlight active window
set-window-option -g window-status-current-bg colour166
set-window-option -g window-status-current-fg colour15
set-window-option -g window-status-current-attr bold
set-window-option -g window-status-current-format ' #I #W '

## pane border and colors
set-option -g pane-active-border-fg yellow
set-option -g pane-border-fg white

#Visual que
setw -g monitor-activity on
setw -g visual-activity on
setw -g mode-keys vi

#Clipboard please
bind-key Y run-shell "tmux save-buffer - | reattach-to-user-namespace pbcopy"
