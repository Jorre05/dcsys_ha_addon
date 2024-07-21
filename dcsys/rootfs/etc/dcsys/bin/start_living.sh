#!/bin/bash
(sleep 1;echo Living power 1;sleep 1;echo "Living playlist play http://icecast.vrtcdn.be/klara-high.mp3";sleep 1;echo exit) |telnet 10.0.0.1 9090
