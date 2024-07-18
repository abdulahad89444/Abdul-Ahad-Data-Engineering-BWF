import pandas as pd

# Loading the dataset
file_path = 'G:/FELLOWSHIP/Data-Engineering-BWF/Task07/dataset.csv'
df = pd.read_csv(file_path)

# Tasks...

# Convert 'order_id' to integer
df['order_id'] = pd.to_numeric(df['order_id'], errors='coerce')
df = df.dropna(subset=['order_id'])
df['order_id'] = df['order_id'].astype(int)

# Remove rows where 'product_id' is 0
df = df[df['product_id'] != 0]

# Clip 'amount' to 1500
df['amount'] = df['amount'].clip(upper=1500)

# Remove rows where 'status' is null
df = df.dropna(subset=['status'])

# Remove duplicates
df = df.drop_duplicates()

# Display the final dataframe
print(df.head())

# Save the modified DataFrame to a new file
save_path = 'G:/FELLOWSHIP/Data-Engineering-BWF/Task07/modified_dataset.csv'
try:
    df.to_csv(save_path, index=False)
    print(f"File saved successfully to: {save_path}")
except Exception as e:
    print(f"Failed to save the file: {e}")

