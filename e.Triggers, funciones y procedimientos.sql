-- TRIGGERS, FUNCIONES Y PROCEDIMIENTOS

/* 1. TRIGGER
Si se introduce un ingrediente con alérgenos (alergenos = TRUE),
se envía un mensaje para recordar meterlo en la tabla ingrediente_alergenos */

DELIMITER $$ 

CREATE TRIGGER trg_ingrediente_alergenos_check
AFTER INSERT ON Ingredientes
FOR EACH ROW
BEGIN
    IF NEW.alergenos = TRUE THEN
        IF NOT EXISTS (
            SELECT 1
            FROM ingrediente_alergenos
            WHERE codIngrediente = NEW.codIngrediente
        ) THEN
            SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'RECUERDE REGISTRAR este nuevo ingrediente en la tabla en ingrediente_alergenos.';
        END IF;
    END IF;
END;

DELIMITER ;

-- -------------------------------------------------

/* 2. FUNCIONES
Funcion obtener alergenos de cada comida*/

DELIMITER $$

CREATE FUNCTION f_obtenerAlergenos(codComida INT)
RETURNS VARCHAR(1000)
deterministic
BEGIN
    DECLARE listaAlergenos VARCHAR(1000);
    
    -- Definimos la búsqueda para obtener la lista de ingredientes con su tipo de alérgeno
    SELECT GROUP_CONCAT(CONCAT(i.nombre, ' - ', a.nombre) SEPARATOR '; ')
    INTO listaAlergenos
    FROM comida_ingredientes ci
    JOIN ingredientes i ON ci.codIngrediente = i.codIngrediente
    JOIN ingrediente_alergenos ia ON i.codIngrediente = ia.codIngrediente
    JOIN alergenos a ON a.codalergeno = ia.codalergeno
    WHERE ci.codComida = codComida AND i.alergenos = TRUE;
    
    -- Devolvemos la lista generada
    RETURN listaAlergenos;
END$$

DELIMITER ;

SELECT  F_obteneralergenos(1) AS Alergenos;

-- -----------------------------------------------------------

/* 3. PROCEDIMIENTOS
Procedimiento obtener alérgenos de cada comida*/

USE alimentacion;

DELIMITER $$
CREATE PROCEDURE sp_obtenerAlergenosComida(IN codComida INT)
BEGIN
    SELECT 
        c.nombre AS Comida, 
        i.nombre AS Ingrediente, 
        a.nombre AS Alergeno
    FROM 
        comidas c
    JOIN 
        comida_ingredientes ci ON ci.codcomida = c.codcomida
    JOIN 
        ingredientes i ON i.codIngrediente = ci.codIngrediente
    JOIN 
        ingrediente_alergenos ia ON ia.codIngrediente = i.codIngrediente
    JOIN 
        alergenos a ON a.codAlergeno = ia.codAlergeno
    WHERE 
        c.codcomida = codComida;
END$$
DELIMITER ;

-- Llamar al procedimiento
CALL sp_obtenerAlergenosComida(1);
