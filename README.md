# LiRUL: A Physics-Constrained and Lightweight Learning Framework for Edge-Based RUL Prediction (MATLAB)

MATLAB implementation + dataset for **LiRUL**, a physics-constrained lightweight framework for lithium-ion battery RUL prediction under edge constraints.

## Paper
Results in Engineering (2026), Article 109537  
DOI: https://doi.org/10.1016/j.rineng.2026.109537

## What this repo contains
- `src/` MATLAB source code
- `data/DataSource/` LG M50 dataset (included)
- `scripts/` reproducibility scripts
- `results/` example outputs (figures/tables)

## Requirements
See `requirements.md`.

## Quickstart
1) Open MATLAB in the repository root  
2) Add code to path:
```matlab
addpath(genpath('src'));