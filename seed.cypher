CREATE
(u1:User {id: 1, name: "Ana"}),
(u2:User {id: 2, name: "Carlos"}),

(a1:Artist {name: "Coldplay"}),
(a2:Artist {name: "Imagine Dragons"}),

(g1:Genre {name: "Rock"}),
(g2:Genre {name: "Pop"}),

(m1:Music {title: "Fix You"}),
(m2:Music {title: "Believer"}),

(u1)-[:LISTENED]->(m1),
(u1)-[:LIKED]->(m1),
(u2)-[:LISTENED]->(m2),

(m1)-[:BY]->(a1),
(m2)-[:BY]->(a2),

(m1)-[:BELONGS_TO]->(g1),
(m2)-[:BELONGS_TO]->(g2);
