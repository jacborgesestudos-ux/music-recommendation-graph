MATCH (u:User {name: "Ana"})-[:LIKED]->(:Music)-[:BELONGS_TO]->(g:Genre)<-[:BELONGS_TO]-(rec:Music)
WHERE NOT (u)-[:LISTENED]->(rec)
RETURN DISTINCT rec.title AS recommendation;
