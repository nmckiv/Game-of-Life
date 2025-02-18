#!/bin/bash
module load cuda/11.7.0
nvcc ../src/gpu/gpu_global.cu -O3 -o gpu_global
./gpu_global 5000 5000 /scratch/$USER/gpu_global.correctness.5000.txt
./gpu_global 5000 5000 /scratch/$USER/gpu_global.correctness.5000.txt
./gpu_global 5000 5000 /scratch/$USER/gpu_global.correctness.5000.txt
./gpu_global 10000 5000 /scratch/$USER/gpu_global.correctness.10000.txt
./gpu_global 10000 5000 /scratch/$USER/gpu_global.correctness.10000.txt
./gpu_global 10000 5000 /scratch/$USER/gpu_global.correctness.10000.txt
rm gpu_global
nvcc ../src/gpu/gpu_shared.cu -O3 -o gpu_shared
./gpu_shared 5000 5000 /scratch/$USER/gpu_shared.correctness.5000.txt
./gpu_shared 5000 5000 /scratch/$USER/gpu_shared.correctness.5000.txt
./gpu_shared 5000 5000 /scratch/$USER/gpu_shared.correctness.5000.txt
./gpu_shared 10000 5000 /scratch/$USER/gpu_shared.correctness.10000.txt
./gpu_shared 10000 5000 /scratch/$USER/gpu_shared.correctness.10000.txt
./gpu_shared 10000 5000 /scratch/$USER/gpu_shared.correctness.10000.txt
rm gpu_shared
nvcc ../src/gpu/gpu_paper.cu -O3 -o gpu_paper
./gpu_paper 5000 5000 /scratch/$USER/gpu_paper.correctness.5000.txt
./gpu_paper 5000 5000 /scratch/$USER/gpu_paper.correctness.5000.txt
./gpu_paper 5000 5000 /scratch/$USER/gpu_paper.correctness.5000.txt
./gpu_paper 10000 5000 /scratch/$USER/gpu_paper.correctness.10000.txt
./gpu_paper 10000 5000 /scratch/$USER/gpu_paper.correctness.10000.txt
./gpu_paper 10000 5000 /scratch/$USER/gpu_paper.correctness.10000.txt
rm gpu_paper
