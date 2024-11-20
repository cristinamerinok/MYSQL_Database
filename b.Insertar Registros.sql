-- USE alimentación, si no estamos en la BDD correspondiente
/* Insertamos
INGREDIENTES INGREDIENTES INGREDIENTES INGREDIENTES INGREDIENTES INGREDIENTES INGREDIENTES */
INSERT INTO ingredientes (nombre, sabor, alergenos)
VALUES
('Espaguetis', 'Neutro', TRUE),
('Tomate', 'Ácido', FALSE),
('Carne picada', 'Salado', TRUE),
('Cebolla', 'Dulce', FALSE),
('Ajo', 'Picante', FALSE),
('Aceite de oliva', 'Graso', FALSE),
('Orégano', 'Aromático', FALSE),
('Sal', 'Salado', FALSE),
('Lechuga', 'Neutro', FALSE),
('Croutones', 'Crujiente', TRUE),
('Queso parmesano', 'Salado', TRUE),
('Aderezo César', 'Ácido', TRUE),
('Pollo', 'Salado', FALSE),
('Caldo de pollo', 'Salado', FALSE),
('Pan', 'Neutro', TRUE),
('Queso rallado', 'Salado', TRUE),
('Mantequilla', 'Graso', TRUE),
('Pimienta', 'Picante', FALSE),
('Garbanzos', 'Neutro', FALSE),
('Chorizo', 'Picante', TRUE),
('Morcilla', 'Salado', TRUE),
('Jamón', 'Salado', FALSE),
('Hueso de caña', 'Neutro', FALSE),
('Patatas', 'Neutro', FALSE),
('Zanahorias', 'Dulce', FALSE),
('Repollo', 'Amargo', FALSE),
('Pimientos del piquillo', 'Dulce', FALSE),
('Bacalao', 'Salado', TRUE),
('Harina', 'Neutro', TRUE),
('Leche', 'Neutro', TRUE),
('Huevos', 'Neutro', TRUE),
('Azúcar', 'Dulce', FALSE),
('Canela', 'Aromático', FALSE),
('Limón', 'Ácido', FALSE),
('Chocolate', 'Dulce', TRUE),
('Nueces', 'Amargo', TRUE),
('Vainilla', 'Dulce', FALSE),
('Caramelo líquido','Dulce', FALSE),
('Manzana', 'Dulce', FALSE),
('Plátano', 'Dulce', FALSE),
('Pera', 'Dulce', FALSE),
('Naranja', 'Ácido', FALSE),
('Fresa', 'Dulce', FALSE),
('Agua', 'Neutro', FALSE),
('Clara de huevo', 'Neutro', TRUE),
('Hielo', 'Neutro', FALSE),
('Café molido', 'Amargo', FALSE),
('Pepino', 'Neutro', FALSE),
('Pimiento verde', 'Amargo', FALSE),
('Vinagre', 'Ácido', TRUE),
('Boquerones', 'Salado', TRUE),
('Mero', 'Salado', TRUE),
('Cazón', 'Salado', TRUE),
('Perejil', 'Aromático', FALSE),
('Calabacín', 'Neutro', FALSE),
('Apio', 'Amargo', TRUE),
('Pasta', 'Neutro', TRUE),
('Pescado blanco', 'Salado', TRUE),
('Guisantes', 'Dulce', FALSE),
('Atún', 'Salado', TRUE),
('Mayonesa', 'Ácido', TRUE),
('Salmón', 'Salado', TRUE),
('Mango', 'Dulce', FALSE)
-- ON DUPLICATE KEY UPDATE nombre=VALUES(nombre);
;

/* Insertamos
 COMIDAS COMIDAS COMIDAS COMIDAS COMIDAS COMIDAS COMIDAS COMIDAS COMIDAS COMIDAS */
 
INSERT INTO comidas (nombre, tipo, descripcion, origen, alergenos)
VALUES
('Espaguetis a la boloñesa', 'Pasta', 'Pasta con salsa de tomate y carne.','Italia', TRUE),
('Ensalada César', 'Ensalada', 'Lechuga con croutones, pollo y aderezo César.','México', TRUE),
('Sopa de cebolla', 'Sopa', 'Sopa de cebolla gratinada con pan y queso.','Francia', TRUE),
('Cocido madrileño', 'Guiso', 'Estofado con garbanzos, carne y verduras.','España', FALSE),
('Pimientos del piquillo rellenos de bacalao', 'Entrante', 'Pimientos rellenos de crema de bacalao.','España', TRUE),
('Torrijas', 'Postre', 'Pan empapado en leche, frito y azucarado.','Francia; España; Inglaterra', TRUE),
('Brownie', 'Postre', 'Bizcocho de chocolate con nueces.', 'Estados Unidos', TRUE),
('Flan de pan', 'Postre', 'Flan hecho con pan, leche y caramelo.', 'Venezuela', TRUE),
('Macedonia', 'Postre', 'Mezcla de frutas frescas.', 'Común', FALSE),
('Sorbete de limón', 'Postre', 'Helado de limón suave.', 'China', FALSE),
('Limonada', 'Bebida', 'Bebida refrescante de limón.', 'Egipto', FALSE),
('Café', 'Bebida', 'Bebida caliente hecha de café molido.','Italia; Colombia', FALSE),
('Gazpacho andaluz', 'Entrante', 'Sopa fría de tomate, pepino y pan.', 'España', TRUE),
('Boquerones en vinagre', 'Entrante', 'Boquerones marinados en vinagre con ajo y perejil.', 
'Mediterráneo', TRUE),
('Mero a la plancha al ajillo', 'Plato principal', 'Mero cocinado a la plancha con ajo y aceite.',
'Mediterráneo', TRUE),
('Cazón en adobo', 'Entrante', 'Pescado adobado con especias y frito.','España', TRUE),
('Lubina al horno con verduras', 'Plato principal', 'Lubina cocinada al horno con verduras frescas.',
'Mediterráneo', TRUE),
('Sopa minestrone', 'Sopa', 'Sopa italiana con verduras y pasta.','Italia', TRUE),
('Sopa de pescado', 'Sopa', 'Sopa de pescado blanco con tomate y verduras.','Mediterráneo', TRUE),
('Ensaladilla rusa', 'Entrante', 'Ensalada fría de patatas, zanahorias y mayonesa.','Rusia', TRUE),
('Ensalada de salmón y mango', 'Ensalada', 'Ensalada fresca con salmón, mango y cebolla.', 'Grecia', TRUE);

/* Insertamos 
COMIDAS INGREDIENTES COMIDAS INGREDIENTES COMIDAS INGREDIENTES COMIDAS INGREDIENTES*/
INSERT INTO comida_ingredientes (codComida, codIngrediente, cantidad)
VALUES 
-- Espaguetis a la boloñesa
(1, 1, '200 gramos'), (1, 2, '100 gramos'), (1, 3, '150 gramos'),
(1, 4, '50 gramos'), (1, 5, '1 diente'), (1, 6, '2 cucharadas'),
(1, 7, '1 cucharadita'), (1, 8, 'Al gusto'), (1, 16, 'Al gusto'),

-- Ensalada César
(2, 9, '1 unidad'), (2, 10, '50 gramos'), (2, 11, '30 gramos'), 
(2, 12, '2 cucharadas'), (2, 13, '150 gramos'), (2, 6, '1 cucharada'), 
(2, 8, 'Al gusto'), 

-- Sopa de cebolla
(3, 4, '300 gramos'), (3, 14, '500 ml'), (3, 15, '2 rebanadas'),
(3, 16, '50 gramos'), (3, 17, '1 cucharada'), (3, 6, '1 cucharada'), 
(3, 8, 'Al gusto'), (3, 18, 'Al gusto'), 

-- Cocido madrileño
(4, 19, '200 gramos'), (4, 20, '1 unidad'), (4, 21, '1 unidad'), 
(4, 13, '200 gramos'), (4, 22, '100 gramos'), (4, 23, '1 unidad'), 
(4, 24, '300 gramos'), (4, 25, '150 gramos'), (4, 26, '150 gramos'), 

-- Pimientos del piquillo rellenos de bacalao
(5, 27, '10 unidades'), (5, 28, '200 gramos'), (5, 4, '50 gramos'), 
(5, 29, '1 cucharada'), (5, 30, '100 ml'), (5, 17, '1 cucharada'), 
(5, 6, '1 cucharada'), 

-- Torrijas
(6, 15, '4 rebanadas'), (6, 30, '500 ml'), (6, 31, '2 unidades'), 
(6, 32, '100 gramos'), (6, 33, '1 cucharadita'), (6, 34, '1 unidad'), 
(6, 6, 'Al gusto'), 

-- Brownie
(7, 35, '200 gramos'), (7, 17, '100 gramos'), (7, 29, '150 gramos'), 
(7, 32, '200 gramos'), (7, 31, '2 unidades'), (7, 36, '50 gramos'), 
(7, 8, 'Al gusto'), 

-- Flan de pan
(8, 15, '4 rebanadas'), (8, 30, '500 ml'), (8, 32, '100 gramos'), 
(8, 31, '3 unidades'), (8, 37, '1 cucharadita'), (8, 38, '50 ml'), 

-- Macedonia
(9, 39, '1 unidad'), (9, 40, '1 unidad'), (9, 41, '1 unidad'), 
(9, 42, '1 unidad'), (9, 43, '100 gramos'), 

-- Sorbete de limón
(10, 34, '2 unidades'), (10, 32, '100 gramos'), (10, 44, '500 ml'), 
(10, 31, '1 unidad'), 

-- Limonada
(11, 34, '2 unidades'), (11, 32, '50 gramos'), (11, 44, '500 ml'), 
(11, 45, '100 gramos'), 

-- Café
(12, 46, '10 gramos'), (12, 44, '200 ml'), (12, 32, 'Al gusto'), 

-- Gazpacho andaluz
(13, 2, '500 gramos'), (13, 47, '100 gramos'), (13, 48, '100 gramos'), 
(13, 5, '1 diente'), (13, 15, '1 rebanada'), (13, 49, '1 cucharada'),
(13, 6, '2 cucharadas'), (13, 44, '200 ml'), (13, 8, 'Al gusto'), 

-- Boquerones en vinagre
(14, 50, '200 gramos'), (14, 5, '2 dientes'), (14, 48, '50 ml'), 
(14, 51, 'Al gusto'), (14, 6, '2 cucharadas'), (14, 8, 'Al gusto'), 

-- Mero a la plancha al ajillo
(15, 52, '300 gramos'), (15, 5, '1 diente'), (15, 6, '1 cucharada'), 
(15, 8, 'Al gusto'), 

-- Cazón en adobo
(16, 53, '300 gramos'), (16, 5, '2 dientes'), (16, 7, '1 cucharadita'), 
(16, 48, '50 ml'), (16, 7, '1 cucharadita'), (16, 29, '50 gramos'), 
(16, 8, 'Al gusto'),

-- Lubina al horno con verduras
(17, 54, '400 gramos'), (17, 4, '100 gramos'), (17, 47, '100 gramos'), 
(17, 25, '100 gramos'), (17, 6, '2 cucharadas'), (17, 8, 'Al gusto'), 

-- Sopa minestrone
(18, 55, '100 gramos'), (18, 25, '50 gramos'), (18, 56, '50 gramos'), 
(18, 2, '100 gramos'), (18, 4, '50 gramos'), (18, 57, '50 gramos'), 
(18, 14, '500 ml'), (18, 8, 'Al gusto'), 

-- Sopa de pescado
(19, 58, '200 gramos'), (19, 2, '100 gramos'), (19, 4, '50 gramos'), 
(19, 25, '50 gramos'), (19, 6, '2 cucharadas'), (19, 8, 'Al gusto'), 

-- Ensaladilla rusa
(20, 24, '200 gramos'), (20, 25, '100 gramos'), (20, 59, '50 gramos'), 
(20, 60, '100 gramos'), (20, 31, '1 unidad'), 
(20, 8, 'Al gusto'), (20, 61, '100 gramos'),

-- Ensalada de salmón y mango
(21, 9, '100 gramos'), (21, 61, '100 gramos'), (21, 62, '100 gramos'), 
(21, 4, '50 gramos'), (21, 6, '2 cucharadas'), (21, 8, 'Al gusto');

/* Insertamos
ALÉRGENOS ALÉRGENOS ALERGENOS ALERGENOS ALERGENOS ALÉRGENOS ALÉRGENOS ALÉRGENOS ALÉRGENOS*/
INSERT INTO alergenos (nombre)
VALUES 
('Gluten'), 
('Huevo'), 
('Lácteos'), 
('Soja'), 
('Cacahuetes'),
('Frutos con cáscara'), 
('Apio'), 
('Pescado'), 
('Mostaza'), 
('Sésamo'), 
('Sulfitos'), 
('Altramuces'), 
('Crustáceos'), 
('Moluscos')
-- ON DUPLICATE KEY UPDATE nombre=VALUES(nombre)
;


/* Insertamos
INGREDIENTES Y ALERGENOS INGREDIENTES Y ALERGENOS INGREDIENTES Y ALERGENOS*/
INSERT INTO ingrediente_alergenos (codIngrediente, codAlergeno)
VALUES
-- Gluten (1)
(29, 1), -- Harina
(15, 1), -- Pan
(57, 1), -- Pasta
(10, 1),
(1, 1), -- Espaguetis

-- Huevo (2)
(31, 2), -- Huevos
(61, 2), -- Mayonesa
(45, 2), -- Clara de huevo
(12, 2), -- Aderezo César

-- Leche (3)
(30, 3), -- Leche
(17, 3), -- Mantequilla
(11, 3), -- Queso parmesano
(16, 3), -- Queso rallado
(12, 3), -- Aderezo César
(35, 3), -- Chocolate

-- Soja (4)
-- Cacahuetes (5)

-- Frutos de cáscara (6)
(36, 6), -- Nueces
(35, 6), -- Chocolate

-- Apio (7)
(56, 7), -- Apio

-- Pescado (8)
(51, 8), -- Boquerones
(52, 8), -- Mero
(53, 8), -- Cazón
(58, 8), -- Pescado blanco
(28, 8), -- Bacalao
(60, 8), -- Atún
(62, 8), -- Salmón
(12, 8), -- Aderezo césar

-- Mostaza (9)
-- Sésamo (10)

-- Sulfitos (11)
(50, 11), -- Vinagre
(3, 11), -- Carne picada
(20, 11), -- Chorizo
(21, 11); -- Morcilla

-- Altramuces (12)
-- Crustáceos (13)
-- Moluscos (14)