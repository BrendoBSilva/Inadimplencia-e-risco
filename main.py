from etl.extracao import extrair_dados
from etl.transformacao import tratar_dados, exportar_csv


def executar_pipeline():
    df = extrair_dados()
    df_tratado = tratar_dados(df)
    exportar_csv(df_tratado)
    print("✅ Pipeline executada com sucesso!")

if __name__ == '__main__':
    executar_pipeline()

