import pandas as pd
from db.conexao import conectar

def extrair_dados():
    conn = conectar()

    query = """
    SELECT
        c.id_cliente,
        c.nome,
        c.renda_mensal,
        c.score_credito,
        c.limite_credito,
        e.id_emprestimo,
        e.valor_emprestimo,
        p.dias_atraso
    FROM clientes c
    LEFT JOIN emprestimos e ON c.id_cliente = e.id_cliente
    LEFT JOIN pagamentos p ON e.id_emprestimo = p.id_emprestimo
    """

    df = pd.read_sql(query, conn)
    conn.close()
    return df

