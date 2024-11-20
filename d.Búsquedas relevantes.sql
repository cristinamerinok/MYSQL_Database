-- Comidas con tomate
SELECT * FROM comidas c
JOIN comida_ingredientes ci
on ci.codcomida = c.codcomida
JOIN ingredientes i 
ON i.codingrediente = ci.codingrediente
WHERE i.nombre in ('tomate');

-- Comidas con pescado
SELECT * FROM comidas c
JOIN comida_ingredientes ci
on ci.codcomida = c.codcomida
JOIN ingredientes i 
ON i.codingrediente = ci.codingrediente
JOIN ingrediente_alergenos ia
ON ia.codingrediente = i.codingrediente
JOIN alergenos a
ON a.codalergeno = ia.codalergeno
WHERE a.nombre in ('pescado');

-- Ingrediente > Alérgeno
SELECT i.nombre AS ingrediente, a.nombre AS alergeno
FROM ingrediente_alergenos ia
JOIN ingredientes i ON ia.codIngrediente = i.codIngrediente
JOIN alergenos a ON ia.codAlergeno = a.codAlergeno;


-- Comida > ingrediente > alérgeno
SELECT c.nombre AS Comida, i.nombre AS Ingrediente, a.nombre AS Alergeno
FROM comidas c
JOIN comida_ingredientes ci ON ci.codcomida = c.codcomida
JOIN ingredientes i ON i.codIngrediente = ci.codIngrediente
JOIN ingrediente_alergenos ia ON ia.codIngrediente = i.codIngrediente
JOIN alergenos a ON a.codAlergeno = ia.codAlergeno
WHERE c.codcomida = 1;

-- Postres sin huevo
SELECT DISTINCT c.nombre AS Postre
FROM Comidas c
JOIN comida_ingredientes ci ON c.codComida = ci.codComida
WHERE c.tipo = 'Postre'
  AND c.codComida NOT IN (
    SELECT ci.codComida
    FROM comida_ingredientes ci
    JOIN ingrediente_alergenos ia ON ci.codIngrediente = ia.codIngrediente
    WHERE ia.codAlergeno = 2
  );
  
  -- Comidas sin gluten
SELECT DISTINCT c.nombre AS Comida
FROM Comidas c
WHERE c.codComida NOT IN (
    SELECT ci.codComida
    FROM comida_ingredientes ci
    JOIN ingrediente_alergenos ia ON ci.codIngrediente = ia.codIngrediente
    JOIN alergenos a ON ia.codAlergeno = a.codAlergeno
    WHERE a.nombre = 'Gluten'
);

-- Bebidas con azúcar
SELECT c.nombre AS Bebida
FROM Comidas c
JOIN comida_ingredientes ci ON c.codComida = ci.codComida
JOIN Ingredientes i ON ci.codIngrediente = i.codIngrediente
WHERE c.tipo = 'Bebida' AND i.nombre = 'Azúcar';

-- Comidas con tomate
SELECT DISTINCT c.nombre AS Comida
FROM Comidas c
JOIN comida_ingredientes ci ON c.codComida = ci.codComida
JOIN Ingredientes i ON ci.codIngrediente = i.codIngrediente
WHERE i.nombre = 'Tomate';

