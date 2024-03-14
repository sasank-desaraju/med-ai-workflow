#!/bin/bash

# This loads the vscode module into your HPG session
ml vscode

# launch the tunnel
code tunnel
# I wanted to get the name to be the username followed by "_hpg" but `tunnel` can't take a name with a period in it like mine (albert.gator)
#code tunnel --name=${USER}_hpg
