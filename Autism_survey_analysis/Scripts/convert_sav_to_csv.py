import pandas as pd  # Shows use of DataFrames for data manipulation
import pyreadstat
import os

# File paths in the repo (using relative paths for reproducibility)
sav_file_path = "data/datasav.sav"
csv_file_path = "data/datasav.csv"

# Read the .sav file into a DataFrame
df, meta = pyreadstat.read_sav(sav_file_path)

# Inspect first few rows
print(df.head())

# Export to CSV
df.to_csv(csv_file_path, index=False)

print(f"CSV exported successfully as {csv_file_path}")
