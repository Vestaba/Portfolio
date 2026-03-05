import pyreadstat
import os

sav_filename = "datasav.sav"


desktop_path = os.path.join(os.path.expanduser("~"), "Desktop")
sav_file_path = os.path.join(desktop_path, sav_filename)

csv_file_path = os.path.join(desktop_path, sav_filename.replace(".sav", ".csv"))


df, meta = pyreadstat.read_sav(sav_file_path)


df.to_csv(csv_file_path, index=False)

print(f"CSV exported successfully as {csv_file_path}")