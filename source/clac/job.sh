#!/bin/bash
#SBATCH --job-name=test
#SBATCH --partition=v6_384
#SBATCH -n 1
#SBATCH -c 12
#SBATCH -t 14400
#SBATCH --output=%j.out
#SBATCH --error=%j.err

source /public1/soft/modules/module.sh

srun -n 1 zdem push.py
srun -n 1 zdem2jpg --dir=./data
