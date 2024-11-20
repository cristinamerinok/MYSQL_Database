-- CREAR Vista comidas aptas para alérgicos al gluten
CREATE VIEW vw_alergicos_gluten AS
SELECT DISTINCT c.nombre AS comida
FROM Comidas c
WHERE c.codComida NOT IN (
    SELECT ci.codComida
    FROM comida_ingredientes ci
    JOIN ingrediente_alergenos ia ON ci.codIngrediente = ia.codIngrediente
    JOIN alergenos a ON ia.codAlergeno = a.codAlergeno
    WHERE a.nombre = 'Gluten' 
); 
-- VER vista:  
SELECT * FROM vw_alergicos_gluten;



-- Vista comidas aptas para alérgicos al huevo
CREATE VIEW vw_alergicos_huevo AS
SELECT DISTINCT c.nombre AS comida
FROM Comidas c
WHERE c.codComida NOT IN (
    SELECT ci.codComida
    FROM comida_ingredientes ci
    JOIN ingrediente_alergenos ia ON ci.codIngrediente = ia.codIngrediente
    JOIN alergenos a ON ia.codAlergeno = a.codAlergeno
    WHERE a.nombre = 'Huevo' 
);


-- VER vista:  
SELECT * FROM vw_alergicos_huevo;

-- Vista comidas y sus alérgenos
CREATE VIEW vw_comidas_alergenos AS
SELECT DISTINCT
    c.nombre AS comida,
    a.nombre AS alergeno
FROM Comidas c
JOIN comida_ingredientes ci ON c.codComida = ci.codComida
JOIN ingrediente_alergenos ia ON ci.codIngrediente = ia.codIngrediente
JOIN alergenos a ON ia.codAlergeno = a.codAlergeno
ORDER BY c.nombre, a.nombre;
-- VER vista:  
select * from vw_comidas_alergenos;
