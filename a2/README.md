Create Command Log Command : createcmdlog.sh

This command creates a command log for you automatically.

It asks for your chosen command file name, how many previous commands you want, and if you want only one specific command from the
number of commands specified.

If you wish to add more commands previously from your history log, you can type in the same file name and type in how many more 
commands back you want to go.


It will also remove any duplicate history commands if you try putting the same command history number.


This command is useful when you want to explain to somebody how you were able to accomplish a task quickly.

EG: 

reatecmdslog.sh 
input your preferred file name
cmdslog
How many previous commands would you like to include in your log file?
5
Do you want any specific commands from the number of previous commands speified? type no if no commands
no
reatecmdslog.sh 
input your preferred file name
cmdslog
How many previous commands would you like to include in your log file?
10
Do you want any specific commands from the number of previous commands speified? type no if no commands
no

**CMDS FILE WILL LOOK LIKE THIS**

 1261  cd ..
 1262  cd home
 1263  cd asthanatanuj/
 1264  cd cs131/
 1265  cd a2
 1266  ls
 1267  vim createcmdslog.sh
 1268  vim README.md
 1269  createcmdslog.sh
 1269  createcmdslog.sh
 1270  rm cmdslog
 1270  rm cmdslog
 1271  createcmdslog.sh cmdslog
 1271  createcmdslog.sh cmdslog
 1272  ls
 1272  ls
 1273  createcmdslog.sh
 1273  createcmdslog.sh
 1274  rm 10
 1275  createcmdslog.sh                           



