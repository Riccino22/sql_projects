import sqlite3

connection = sqlite3.connect("database.db")
result = connection.execute("SELECT * FROM students")
print("result")