# 📊 Análise de Tweets com Neo4j (NoSQL)

<br>

## 🚀 Tecnologias Utilizadas

<br>

<div>
  <img src="https://img.shields.io/badge/Database-NoSQL-blue">
  <img src="https://img.shields.io/badge/Neo4j-4.4.5-008CC1?logo=neo4j&logoColor=white">
  <img src="https://img.shields.io/badge/APOC-4.4.0.6-orange">
  <img src="https://img.shields.io/badge/Cypher-Query%20Language-green">
</div>

<br>
<br/>

---

## 📌 Sobre o Projeto

Este projeto NoSQL consiste na análise de dados de tweets do Twitter:

- Importação de dados JSON no Neo4j;
- Criação de estrutura de grafo com nós e relacionamentos;
- Utilização da linguagem Cypher para extrair informações relevantes;
- Manipulação do uso da biblioteca APOC em etapas específicas; 
- Geração de grafos com no mínimo 10 nós interligados;
- Inclusão de Identificador Individual.

---

## 📈 Objetivo da Análise e Resultados

A análise foi realizada com o objetivo de identificar padrões nos dados coletados, incluindo:

- As relações entre tweets e hashtags foram visualizadas em grafo, permitindo uma análise mais clara da estrutura dos dados. E a hashtag mais utilizada em tweets foi: **issoaglobonaomostra**

| ![image](https://raw.githubusercontent.com/Brunex-Alado/alterar para este local upado no github a imagem no asset: QUESTAO_02-TEMA_II.png) |


<br/>

- Usuário mais ativo identificado com base na quantidade de tweets publicados:

| ![image](https://raw.githubusercontent.com/Brunex-Alado/alterar para este local upado no github a imagem no asset: QUESTAO_03-TEMA_II.png) |

<br/>

---

## ⚙️ Configuração do Ambiente

Para executar este projeto corretamente, utilize as seguintes versões:

- Neo4j Desktop: 1.6.2  
- Banco de Dados Neo4j: 4.4.5  
- Biblioteca APOC: 4.4.0.6  

---

## 📁 Configuração do Neo4j

Na pasta **configuracao_neo4j**, você encontrará:

- Imagens com o passo a passo da configuração do ambiente  
- Arquivo **apoc.conf**, necessário para habilitar a importação dos arquivos JSON  

Siga as imagens dessa pasta para configurar corretamente o ambiente antes de executar as queries.

---

## 📥 Base de Dados

Os dados utilizados neste projeto estão na pasta:

tweets_coletados

Essa pasta contém arquivos JSON com tweets utilizados para análise dentro do Neo4j.

---

## 💻 Queries Cypher

As consultas desenvolvidas estão organizadas nos seguintes arquivos:

- questao01.cypher → Responsável pela importação dos dados JSON e criação dos nós e relacionamentos  
- questao02.cypher → Consulta para identificação da hashtag principal  
- questao03.cypher → Consulta para análise dos dados (usuário mais ativo)  

---