#!/bin/bash

#session=whatever
session=my_session
window=${session}:0
pane=${window}.4

# exprimentation
# #tmux new-session -d -s my_session 'ruby run.rb'
# tmux new-session -d -s my_session './.acpi.sh'
# #itmux new-session -d -s htop-session 'htop';  # start new detached tmux session, run htop
# tmux split-window;                             # split the detached tmux session
# #tmux send 'htop -t' ENTER;                    # send 2nd command 'htop -t' to 2nd pane. I believe there's a `--target` option to target specific pane.
# tmux send 'htop' ENTER;                        # send 2nd command 'htop -t' to 2nd pane. I believe there's a `--target` option to target specific pane.
# tmux a;                                        # open (attach) tmux session.
# 
# #tmux send-keys -t "$pane" C-z './.acpi.sh' Enter
# #tmux send-keys -t "$pane" C-z 'some -new command' Enter
# tmux select-pane -t "$pane"
# tmux select-window -t "$window"
# tmux attach-session -t "$session"

tmux new-session -d -s my_session
#tmux rename-window 'main'
tmux split-window -h;                                # split the detached tmux session
tmux send 'htop' ENTER; 	                  # send 2nd command 'htop -t' to 2nd pane. I believe there's a `--target` option to target specific pane.
tmux split-window;                             # split the detached tmux session
tmux send './.acpi.sh' ENTER;                     # send 2nd command 'htop -t' to 2nd pane. I believe there's a `--target` option to target specific pane.
tmux selectp -t 0
tmux a;                                        # open (attach) tmux session.
