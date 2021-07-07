#!/bin/bash
echo "<---setting up tilix quake in $HOME" 
cd $HOME
chmod u+w . 
touch .xbindkeysrc
echo '"tilix --quake"' >> .xbindkeysrc 
echo "F8" >> .xbindkeysrc
xbindkeys --poll-rc
echo "finished tilix setup--->"