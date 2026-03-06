import os
import pyreadstat
import pandas as pd

# set working directory to script location
os.chdir(os.path.dirname(__file__))

# read SPSS file
df, meta = pyreadstat.read_sav("datasav.sav")

# replace coded values with labels
for col, labels in meta.variable_value_labels.items():
    df[col] = df[col].map(labels)

# export to csv
df.to_csv("datasav_labeled.csv", index=False)

print("Conversion complete.")