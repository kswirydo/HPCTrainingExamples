#!/bin/bash

module purge

module load miniconda3

conda create -n env_for_test numpy pandas

conda activate env_for_test

conda info --envs

conda deactivate 

conda remove -n env_for_test --all

module unload miniconda3
