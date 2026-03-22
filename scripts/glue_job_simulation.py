import pandas as pd

# Read raw data (simulate S3 input)
df = pd.read_csv('s3/netflix-raw/netflix_titles.csv')

# Basic cleaning
df['director'] = df['director'].fillna('Unknown')
df['country'] = df['country'].fillna('Unknown')

# Save processed data (simulate S3 output)
df.to_csv('s3/netflix-processed/netflix_cleaned.csv', index=False)

print("Data processing completed!")