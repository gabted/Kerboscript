#!/bin/bash

ssh -tt -R 5411:120.0.0.1:5411 gabriele@quaversoft.com &
ssh -tt -R 5410:120.0.0.1:5410 gabriele@quaversoft.com &
java GitAutoUpdater /Users/marulli/Desktop/COSE/SteamLibrary/steamapps/common/Kerbal\ Space\ Program/Ships/Script  