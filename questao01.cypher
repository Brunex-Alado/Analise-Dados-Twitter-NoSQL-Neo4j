// LIMPAR BANCO
MATCH (n)
DETACH DELETE n;

// IDENTIFICAÇÃO DO ALUNO - BRUNO DE SOUSA SILVA - RU 461408
MERGE (ru:RU {RU: "RU-4961408"});

// CARREGAR ARQUIVOS JSON
CALL apoc.load.directory("*.json") YIELD value
WITH value AS arquivo

CALL apoc.load.json(arquivo) YIELD value
UNWIND value.data AS tweet

// USUÁRIO
MERGE (u:User {id: tweet.author_id})

// TWEET
MERGE (t:Tweet {id: tweet.id})
SET t.texto = tweet.text, t.data = tweet.created_at, t.lang = tweet.lang

// RELAÇÃO USER -> TWEET
MERGE (u)-[:POSTOU]->(t)

// HASHTAGS
FOREACH (h IN tweet.entities.hashtags |
  MERGE (tag:Hashtag {tag: toLower(h.tag)})
  MERGE (t)-[:POSSUI]->(tag)
  MERGE (u)-[:USOU]->(tag)
)

// REFERÊNCIAS (RETWEET / REPLY / QUOTE)
FOREACH (r IN tweet.referenced_tweets |
  SET t.tipo_ref = coalesce(t.tipo_ref, []) + [r.type]
);