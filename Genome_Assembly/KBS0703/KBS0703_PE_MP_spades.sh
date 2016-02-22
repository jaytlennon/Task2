#!/bin/bash
#PBS -k o
#PBS -l nodes=1:ppn=8,vmem=100gb,walltime=10:00:00
#PBS -M wrshoema@indiana.edu
#PBS -m abe
#PBS -j oe
module load java
module load bioperl
module load python
module load gcc
module load spades

cd /N/dc2/projects/muri2/Task2

spades.py --careful \
    --mp1-1 ./GSF966/KBS0703/GSF966-1-Arthro-6k_S1_R1_001_Q30_U15_UN10.fastq.gz \
    --mp1-2 ./GSF966/KBS0703/GSF966-1-Arthro-6k_S1_R2_001_Q30_U15_UN10.fastq.gz \
    --mp2-1 ./GSF966/KBS0703/GSF966-2-Arthro-13k_S2_R1_001_Q30_U15_UN10.fastq.gz \
    --mp2-2 ./GSF966/KBS0703/GSF966-2-Arthro-13k_S2_R2_001_Q30_U15_UN10.fastq.gz \
    --pe1-1 ./GSF-911/KBS0703/GSF911-Ar_S10_L001_R1_001_Q30_U15_UN20.fastq.gz \
    --pe1-2 ./GSF-911/KBS0703/GSF911-Ar_S10_L001_R2_001_Q30_U15_UN20.fastq.gz \
    -o ./reference_assemblies/Arthrobacter_sp_KBS0703/KBS0703_6kMP_13kMP_PE