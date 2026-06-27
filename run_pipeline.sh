#!/bin/bash

echo "==================================================="
echo " INICICIATING END-TO-END - SPARK ML PIPELINE"
echo " Project: NYC Taxi Tip Detection"
echo "==================================================="

# Use of the correct conda environment
source ~/anaconda3/etc/profile.d/conda.sh
conda activate taxi_env

echo "-> Executing Stage 1 (Ingestion)..."
jupyter nbconvert --to notebook --execute --inplace notebooks/01_Stage_Ingestion.ipynb

echo "-> Executing Stage 2 y 3 (Cleaning & Schema)..."
jupyter nbconvert --to notebook --execute --inplace notebooks/02_Stage_Cleaning_Schema.ipynb

echo "-> Executing  Stage 4 (SQL Knowledge Extraction)..."
jupyter nbconvert --to notebook --execute --inplace notebooks/03_Stage_SQL.ipynb

echo "-> Executing Stage 5 (Train/Val/Test Split)..."
jupyter nbconvert --to notebook --execute --inplace notebooks/04_Stage_Split.ipynb

echo "-> Executing  Stage 6 (Preprocessing Pipeline)..."
jupyter nbconvert --to notebook --execute --inplace notebooks/05_Stage_Pipeline.ipynb

echo "-> Executing Stage 7 (Classification Tuning)..."
jupyter nbconvert --to notebook --execute --inplace notebooks/06_Stage_Classification.ipynb

echo "-> Executing Stage 7b (Regression Tuning)..."
jupyter nbconvert --to notebook --execute --inplace notebooks/07_Stage_Regression.ipynb

echo "-> Executing Stage 8 (Evaluation & Analysis)..."
jupyter nbconvert --to notebook --execute --inplace notebooks/08_Stage_Evaluation.ipynb

echo "==================================================="
echo " EXECUTION OF THE PIPELINE COMPLETED SUCCESSFULLY."
echo " All models and data are saved to disk."
echo "==================================================="