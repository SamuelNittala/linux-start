#!/bin/bash

#quake 
echo "Setting up tilix quake in $HOME" 

echo -ne '>>>                       [20%]\r'
cd $HOME
sleep 1

echo -ne '>>>>>>>                   [40%]\r'
chmod u+w . 
sleep 1

echo -ne '>>>>>>>>>>>>>>            [60%]\r'
touch .xbindkeysrc
sleep 1

echo -ne '>>>>>>>>>>>>>>>>>>>>>>>   [80%]\r'
echo '"tilix --quake"' >> .xbindkeysrc 
echo "F8" >> .xbindkeysrc
sleep 1

echo -ne '>>>>>>>>>>>>>>>>>>>>>>>>>>[100%]\r'
xbindkeys --poll-rc
echo -ne '\n'
echo "Finished tilix setup"