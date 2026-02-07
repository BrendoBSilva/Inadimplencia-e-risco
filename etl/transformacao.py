def tratar_dados(df):
    df["inadimplente"] = df["dias_atraso"].fillna(0).apply(
        lambda x: 1 if x > 30 else 0
    )

    df["score_ajustado"] = df["score_credito"] - (df["inadimplente"] * 100)

    def classificar_risco(score):
        if score >= 700:
            return "Baixo"
        elif score >= 500:
            return "Médio"
        else:
            return "Alto"

    df["nivel_risco"] = df["score_ajustado"].apply(classificar_risco)

    print(df.head())
    print(df.shape)

    return df

def exportar_csv(df):
    df.to_csv("dataset_final.csv", index=False)
