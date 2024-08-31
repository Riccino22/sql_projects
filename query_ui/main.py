import streamlit as st
import sqlite3

st.title("QUERY")
connection = sqlite3.connect("database.db")
user_query = st.text_area("Your query")

if st.button("Execute"):
    st.code(language='sql', body=user_query)

    query = connection.execute(user_query)
    query



if  st.button("show tables"):

    tables = connection.execute("""                            
    SELECT name 
    FROM sqlite_master 
    WHERE type = 'table';
    """)
    
    for table in list(tables):
        table_str = connection.execute("SELECT * FROM {}".format(table[0]))
        table[0]
        table_str