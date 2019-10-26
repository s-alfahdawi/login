A single bash script used to save and login multiple servers via SSH depending on server's name.

I f you have multiple servers and need to login eassy/quickly you can use this script 

After you clone it you can setup the list of your servers by thic command: 

# sh login.sh add

then add server namd,IP,port 

to use the script:

# sh login.sh NAME

to view the list of saved login information 

# sh login.sh list

to remove login

# sh login.sh remove
