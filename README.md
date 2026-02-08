# Sistema de Inadimplência e Risco Bancário

##  Visão Geral
Este projeto integra **SQL, Python e Power BI** para construir um **sistema completo de análise de inadimplência e risco bancário**.  
O objetivo é monitorar clientes críticos, calcular métricas de risco, e fornecer **insights estratégicos** para decisões de crédito.

---

##  Objetivos do Projeto
- Identificar clientes com maior risco de inadimplência
- Calcular métricas financeiras e score comportamental
- Classificar clientes em níveis de risco (Baixo, Médio, Alto)
- Gerar datasets analíticos para visualização executiva
- Construir dashboards que apoiem decisões de crédito e cobrança

---

##  Arquitetura da Solução
MySQL (Workbench) → Python (ETL + Score + Risco) → CSV → Power BI (Dashboard)

---

##  Modelagem SQL
O banco de dados contém:

- Tabela de clientes  
- Tabela de empréstimos  
- Tabela de pagamentos  

Com informações necessárias para **análise de inadimplência e risco**.  
O script SQL está disponível em:
banco.sql


##  Pipeline em Python
O Python é responsável por:

- Extrair dados do MySQL
- Criar flag de inadimplência
- Calcular score ajustado
- Classificar clientes por nível de risco
- Exportar dataset final para CSV

Arquivos principais:
banco.py
etl/
main.py
dataset_final.csv

## Métricas e Indicadores
- Taxa de inadimplência
- Valor em risco
- Clientes críticos por nível de risco
- Score ajustado x atraso
- Limite total concedido

Essas métricas permitem **monitoramento e decisões estratégicas**.

---

## Estrutura do Projeto

Inadimplencia_Risco/
├── banco.sql
├── banco.py
├── etl/
│ ├── extracao.py
│ ├── transformacao.py
│ └── carga.py
├── main.py
├── dataset_final.csv
├── README.md
└── .gitignore


---
Competências Demonstradas
Modelagem de dados bancários
Pipeline ETL em Python
Análise de risco e inadimplência
Storytelling executivo em dashboards
Integração SQL → Python → Power BI


<img width="1459" height="842" alt="Sistema de previsão e monitoramento de inadimplência pdf e mais 6 páginas - Perfil 1 — Microsoft​ Edge 07_02_2026 21_50_37" src="https://github.com/user-attachments/assets/52541626-103f-41d4-9df4-43a5918f8896" />


Brendo Barbosa Silva
Projeto desenvolvido para portfólio e aprendizado profissional em análise de dados bancários.

