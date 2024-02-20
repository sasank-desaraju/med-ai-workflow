# HiPerGator (HPG)

This guide assumes you are already [set up](initial_setup.md) and are using HPG for development and training.

In AI, development is writing code that, well, runs.
The goal is correctly loading your data, feeding it through the model, computing your loss function, etc.
If we can get it to run for one iteration, then we've passed this step.

Model training, on the other hand, is the computationally expensive stage of running through several (often hundreds) epochs to progressively train a model.
This is the part where we need a lot of GPUs.


## Code Development

- Use notebooks to test chunks of code (data loading, for example)
- When feeling good, assemble the code together and run the whole thing for 1 epoch
    - If using PyTorch Lighting, consider setting `fast_dev_run=True` in the Trainer object


[Here](https://help.rc.ufl.edu/doc/VS_Code_Remote_Development) is UF HPG's official guide on using VSCode for remote development from HPG.


1. SSH in to HPG (e.g. `ssh your.name@hpg.rc.ufl.edu`)
    - (MacOS and Linux) You can create a shortcup so it's just `ssh hpg` if you have your SSH config set up
    - See [this guide](https://help.rc.ufl.edu/doc/SSH_Multiplexing)
2. Change your login node to a number that you always choose (e.g. `ssh login7`)
3. (optional but usually needed) Begin an interactive session (i.e. `bash interactive.sh` or `./interactive.sh`)
    - This is if you need GPUs (or other computing resources beyond what is provided on login nodes).
    - See [this](https://help.rc.ufl.edu/doc/Development_and_Testing) for more on when to use login nodes vs using an interactive session
4. (optional) Start tmux (`tmux`)
    - This is (fun) wizardry. Not needed but p cool. See Sasank for more.
5. Start a vscode tunnel (`bash vscode_development.sh` or `./vscode_development.sh`)
6. Open VSCode on you local computer and go to the "Remote Explorer". This is a button on the left side bar that looks like a computer screen with a circle at the bottom right.
7. In the menu that comes on the left side bar, you should see your session under REMOTES/Tunnels. Click on the arrow on the right side of your session to connect.
8. Congrats! You're now connected to HiPerGator.

9. Make sure you are using your environment.
    - If you are using a notebook (something.ipynb), check your "kernel" at the top right to make sure it's using the conda environment you want.
    - If you are running a Python script directly, make sure you have the right conda environment loaded.


## Model Training
