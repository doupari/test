#!/bin/bash
#SBATCH --job-name=testrun
#SBATCH --nodes=1
#SBATCH --gres=gpu:0
#SBATCH --time=0-12:00:00
#SBATCH --mem=6400MB
#SBATCH --cpus-per-task=1
#SBATCH --output=%A_out.log
#SBATCH --error=%A_err.log
#SBATCH --nodelist=n01

source ~/data/.bashrc
source ~/data/miniconda3/etc/profile.d/conda.sh

srun python test.py