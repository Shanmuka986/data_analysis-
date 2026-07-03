import mysql.connector

conn = mysql.connector.connect(
    host="localhost",
    user="root",
    password="r00t1234"
)

cursor = conn.cursor()

# Show all databases
cursor.execute("SHOW DATABASES")
print("Databases:")
for db in cursor:
    print(db[0])

# Select a database
database_name = "joins"
cursor.execute(f"USE {database_name}")

# Show all tables in the selected database
cursor.execute("SHOW TABLES")
print("\nTables:")
for table in cursor:
    print(table[0])

cursor.close()
conn.close()