// USUÁRIOS MAIS ATIVOS
MATCH (u:User)-[:POSTOU]->(t:Tweet)
WITH u, COUNT(t) AS totalTweets
ORDER BY totalTweets DESC
LIMIT 1

// GERAR GRAFO
MATCH (u)-[:POSTOU]->(t:Tweet)
MATCH (ru:RU {RU: "RU-4961408"})
RETURN u, t, ru
LIMIT 15;