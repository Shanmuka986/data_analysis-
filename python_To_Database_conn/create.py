import mysql.connector

conn = mysql.connector.connect(
    host="localhost",
    user="root",
    password="r00t1234",
    database="joins"
)
cursor = conn.cursor()

cursor.execute("""
CREATE TABLE std (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    department VARCHAR(50)
)
""")
print("Table 'students' created successfully.")
cursor.close()
conn.close()