# Common Commands

#### Here are common terminal commands for your use


### General Terminal Commands :computer:

| Command | Description | Example | Notes |
| ---------- | ---------- | ---------- | ---------- |
| `pwd` | **p**rint **w**orking **d**irectory returns where you are in the file system | `pwd` | Use this anywhere to show where you are in the file system |
| `ls` | ls **l**i**s**ts the contents of the directory you are in. Directory is the same as folder | `ls` | Use `ls -a` to show "hidden" files and directories (those that start with a period like ".config") |
| `cd` | **c**hange **d**irectory allows you to go to a different folder. `cd my_folder` goes from your current folder into the subfolder called "my_folder". Just entering `cd` will take you back to the home directory (`~`)! | `cd my_folder` | Use `cd ..` to go up one directory |
| `mv` | **m**o**v**e or rename a file. | `mv old_name.png new_name.png`, `mv foo.txt my_folder/foo.txt` |  Use `mv` to rename a file or move it to a different directory |
| `cp` | **c**o**p**y a file. | `cp foo.txt my_folder/foo.txt` | Use `cp -r` to copy a directory |
| `rm` | **r**e**m**ove a file. | `rm foo.txt` | Use `rm -r` to remove a directory |
| `mkdir` | **m**a**k**e **dir**ectory. | `mkdir my_folder` | Use `mkdir -p` to make a directory and any parent directories that don't exist |
| `rmdir` | **r**e**m**ove **dir**ectory. | `rmdir my_folder` | Use `rmdir -p` to remove a directory and any parent directories that are empty |
| `touch` | creates an empty file | `touch foo.txt` | |
| `cat` | **cat**enate and print files. | `cat foo.txt` | Use `cat` to print the contents of a file to the terminal |

### Text Editors :pencil:
| Command | Description | Example | Notes |
| ---------- | ---------- | ---------- | ---------- |
| `nano` | a simple terminal text editor | `nano foo.txt` | |
| `vim` | a more advanced terminal text editor | `vim foo.txt` | |

### File Permissions :lock:

| Command | Description | Example | Notes |
| ---------- | ---------- | ---------- | ---------- |
| `chmod` | **ch**ange **mod**e of a file or directory | `chmod +x foo.txt` to allow the file to be e**x**ecuted | Use `chmod` to change the permissions of a file or directory |
| `chown` | **ch**ange **own**er of a file or directory | `chown user:group foo.txt` | Use `chown` to change the owner of a file or directory |

### Conda :snake:

| Command | Description | Example | Notes |
| ---------- | ---------- | ---------- | ---------- |
| `conda create` | create a new conda environment | `conda create -n my_env python=3.8` | |
| `conda activate` | activate a conda environment | `conda activate my_env` | |
| `conda deactivate` | deactivate the current conda environment | `conda deactivate` | |
| `conda list` | list all packages in the current conda environment | `conda list` | |
| `conda install` | install a package into the current conda environment | `conda install numpy -c anaconda` | Specify the "channel" you use with the `-c` flag. Find the channel why youf search it. E.g., searching "numpy conda" will show that numpy is from the anaconda channel |
| `conda remove` | remove a package from the current conda environment | `conda remove numpy` | |
| `mamba install` | a faster alternative to `conda install` | `mamba install numpy` | Please install mamba as one of the first things you install and then use `mamba install` instead of `conda install` |

### Git/GitHub :octocat:
- Git cheat sheets, [here](https://training.github.com/downloads/github-git-cheat-sheet.pdf), [here](https://education.github.com/git-cheat-sheet-education.pdf), and [here](https://www.atlassian.com/git/tutorials/atlassian-git-cheatsheet)
- Git official [documentation](https://git-scm.com/docs)

| Command | Description | Example | Notes |
| ---------- | ---------- | ---------- | ---------- |
| `git clone` | clone a repository into a new directory | `git clone git@github.com:sasank-desaraju/med-ai-workflow.git` | What you use to "get" a git repository |
| `git status` | show the working tree status | `git status` | |
| `git pull` | fetch from and integrate with another repository or a local branch | `git pull` | run this whenever you start working |
| `git add` | add file contents to the index | `git add foo.txt`, `git add -A` | first step to saving your changes on GitHub, `git add -A` adds everything in the repo |
| `git commit` | record changes to the repository | `git commit -m "Added a new feature"` | second step |
| `git push` | update remote refs along with associated objects | `git push` | third and final step |
| `git branch` | list, create, or delete branches | `git branch`, `git branch new_feature` | |
| `git checkout` | switch branches or restore working tree files | `git checkout new_feature` | |
| `git diff` | show changes between commits, commit and working tree, etc | `git diff` | |


### HiPerGator :rocket:
This is a SLURM-based system, so you'll need to use SLURM commands to submit jobs. Here are some common commands:

| Command | Description | Example | Notes |
| ---------- | ---------- | ---------- | ---------- |
| `ssh` | **s**ecure **sh**ell. Connect to a remote computer using SSH | `ssh albert.gator@hpg.rc.ufl.edu` | Use `ssh` to connect to HiPerGator |
| `sbatch` | submit a job to the cluster | `sbatch foo.sh` | Use `sbatch` followed by a bash script (foo.sh) to submit a job to the cluster |
| `squeue` | shows the state of the jobs in the queue | `squeue` | Use `squeuemine` to show only your jobs |
| `scancel` | cancel a job | `scancel 12345` | Use `scancel [job_id]` to cancel a job |
| `ShowAssoc` | show what HPG accounts a user has access to | `ShowAssoc -u albert.gator` | The username is your username to learn about yourself |
| `ShowQos` | show what resources (CPUs, GPUs) an account has | `ShowQos -A my_account` | The account is usually your PI's HPG username or the class you're in |
| `srun` | run a command on the cluster | `srun -N 1 -t 1:00:00 echo "Hello, world!"` | Use `srun` to run a command on the cluster |
| `sinfo` | shows the state of the nodes and partitions on the cluster | `sinfo` | Use `sinfo -N` to show the nodes and their states |
| `salloc` | allocate resources for an interactive job | `salloc -N 1 -t 1:00:00` | Use `salloc` to allocate resources for an interactive job |





### File Transfer :inbox_tray: :outbox_tray:
| Command | Description | Example | Notes |
| ---------- | ---------- | ---------- | ---------- |
| `sftp` | **s**ecure **f**ile **t**ransfer **p**rotocol. Securely transfer files between computers using SSH | `sftp user@remote_host` | Use `sftp` to transfer files between computers |
| `scp` | **s**ecure **c**o**p**y. Copy files between computers using SSH | `scp foo.txt user@remote_host:/remote/directory` | Use `scp` to copy files between computers |
| `rsync` | a fast, versatile, remote (and local) file-copying tool | `rsync -avz foo.txt user@remote_host:/remote/directory` | Use `rsync` to copy files between computers or directories |
