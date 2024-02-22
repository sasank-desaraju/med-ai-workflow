# Common Commands

## Here are common terminal commands for your use


### General Terminal
| Command | Desciption |
| ---------- | ---------- |
| `pwd` | **p**rint **w**orking **d**irectory returns where you are in the file system |
| `ls` | ls **l**i**s**ts the contents of the directory you are in. Directory is the same as folder |
| `cd` | **c**hange **d**irectory allows you to go to a different folder. `cd my_folder` goes from your current folder into the subfolder called "my_folder". Just entering `cd` will take you back to the home directory (`~`)! |
| `mv` | **m**o**v**e or rename a file. E.g. `mv old_name.png new_name.png`, `mv foo.txt my_folder/foo.txt` |

### Git/GitHub
- Git cheat sheets, [here](https://training.github.com/downloads/github-git-cheat-sheet.pdf), [here](https://education.github.com/git-cheat-sheet-education.pdf), and [here](https://www.atlassian.com/git/tutorials/atlassian-git-cheatsheet)
- Git official [documentation](https://git-scm.com/docs)


### HiPerGator

| Command | Desciption |
| ---------- | ---------- |
| `squeue -A [account]` | shows what jobs are running on a given account |
| `ShowAssoc -u [username]` | shows what HPG accounts a user has access to |
| `ShowQos -A [account]` | shows what resources (CPUs, GPUs) an account has |
| `sbatch foo.sh` | submits a properly formatted SLURM script to HPG to run |
| `scancel [job_id]` | cancels your job with a given job_id, which you can find using `squeue` |
