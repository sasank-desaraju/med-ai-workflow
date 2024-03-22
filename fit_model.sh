#!/bin/bash
#SBATCH --job-name=TestJob
#SBATCH --mail-user=albert.gator@ufl.edu  # CHANGE
#SBATCH --mail-type=END,FAIL
#SBATCH --output ./slurm/logs/my_job-%j.log
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=16gb
#SBATCH --time=12:00:00
#SBATCH --partition=gpu
#SBATCH --gres=gpu:a100:1
#SBATCH --account=[ACCOUNT]   # CHANGE
#SBATCH --qos=[QOS NAME]    # CHANGE
echo "Date      = $(date)"
echo "host      = $(hostname -s)"
echo "Directory = $(pwd)"


# Load compiler
module load gcc
echo "gcc version is $(gcc --version)"

# Load the Conda environment
# HPG actually recommends prepending the path to the environment instead of loading it.
export PATH=/path/to/conda/env/name/bin:$PATH
# e.g. export PATH=/blue/banks/sasank.desaraju/conda_envs/envs/fist/bin:$PATH
export LD_LIBRARY_PATH=/path/to/conda/env/name/lib:$LD_LIBRARY_PATH
# e.g. export LD_LIBRARY_PATH=/blue/banks/sasank.desaraju/conda_envs/envs/fist/lib/:$LD_LIBRARY_PATH

echo "PATH is "
echo PATH $PATH /$PATH

# Code to run
python /path/to/code.py
# e.g. python /blue/weishao/sasank.desaraju/Fistula_AI/Fistula-Segmentation/scripts/fit.py hpg
