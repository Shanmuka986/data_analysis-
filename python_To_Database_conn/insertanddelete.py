"""
import mysql.connector

conn = mysql.connector.connect(
    host="localhost",
    user="root",
    password="r00t1234",
    database="joins"
)

cursor = conn.cursor()

insert_into = "INSERT INTO std (name, age, department) VALUES (%s, %s, %s)"
values = [
    ("kumar", 20, "Computer Science"),
    ("tharun", 21, "Mechanical"),
    ("sumanth", 19, "Electronics")
]

cursor.executemany(insert_into, values)
conn.commit()

print(cursor.rowcount, "records inserted.")

cursor.close()
conn.close()
"""

#Retrive all the records 
"""
import mysql.connector

conn = mysql.connector.connect(
    host="localhost",
    user="root",
    password="r00t1234",
    database="joins"
)

cursor = conn.cursor()

# Retrieve all records
cursor.execute("SELECT * FROM std")

rows = cursor.fetchall()

print("Student Records:")
for row in rows:
    print(row)

cursor.close()
conn.close()
"""

#Delete the records

import mysql.connector

conn = mysql.connector.connect(
    host="localhost",
    user="root",
    password="r00t1234",
    database="joins"
)

cursor = conn.cursor()

delete_Item = "DELETE FROM std WHERE id = %s"
value = (2,)   # Deletes the student with id = 2

cursor.execute(delete_Item, value)
conn.commit()

print(cursor.rowcount, "record deleted.")

cursor.close()
conn.close()
