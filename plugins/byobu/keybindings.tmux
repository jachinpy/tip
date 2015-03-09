set -g prefix ^A
unbind-key -n C-a
bind a send-prefix

unbind '"'
bind - splitw -v
unbind %
#bind | splitw -h
bind \ splitw -h

bind k selectp -U
bind j selectp -D
bind h selectp -L
bind l selectp -R
