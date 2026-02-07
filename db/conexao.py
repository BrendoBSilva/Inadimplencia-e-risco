import mysql.connector

def conectar():
    return mysql.connector.connect(
        host="localhost",
        user="root",
        password="I6x8h5c9@",
        database="monitoramento_risco"

    )
