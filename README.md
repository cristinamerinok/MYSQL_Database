# MYSQL_Database
Pequeña base de datos de comida en MySQL / Small MySQL food database

--- ( ESPAÑOL ) ---

1. DESCRIPCIÓN GENERAL

La base de datos Alimentación gestiona información sobre comidas, ingredientes y alérgenos.
Registra también las relaciones entre ellos.
Está diseñada para facilitar información útil a usuarios con alergias alimentarias, 
o para trabajadores del sector gastronómico 


2. ESTRUCTURA DE LA BASE DE DATOS

Tablas principales:
· Ingredientes: Información de ingredientes (nombre, sabor, presencia de alérgenos).
· Comidas: Registro de platos, incluyendo su tipo, descripción y origen.
· Alergenos: Lista de posibles alérgenos alimenticios.
· Comida_Ingredientes: Relación entre comidas y sus ingredientes.
· Ingrediente_Alergenos: Relación entre ingredientes y alérgenos.


3. DEPENDENCIAS ENTRE TABLAS

Relaciones clave:
· Comida_Ingredientes enlaza Comidas e Ingredientes.
· Ingrediente_Alergenos enlaza Ingredientes y Alergenos.


4. SCRIPTS INCLUIDOS

  a. Crear BDD
  Define y crea la estructura de la base de datos.

  b. Insertar Registros
  Carga los datos iniciales.

  c. Vistas Relevantes
  Incluye vistas para consultas que pueden ser recurrentes. Ejemplo:
    - Comidas sin ciertos alérgenos (vw_alergicos_gluten y vw_alergicos_huevo).
    - Relación de comidas y alérgenos (vw_comidas_alergenos).

  d. Búsquedas Relevantes
  Incluye ejemplos de consultas avanzadas:
    - Ingredientes relacionados con alérgenos.
    - Comidas por tipo o contenido específico.
    - Filtrado de postres sin huevo o comidas sin gluten.

  e. Triggers, Funciones y Procedimientos
  Incluye código para realizar automatizaciones:
    - Trigger para flashear al usuario un nuevo ingrediente con alérgenos
    - Función para listar alérgenos de una comida.
    - Procedimiento para obtener ingredientes y alérgenos asociados a un plato.


5. REQUISITOS DEL ENTORNO

Sistema Gestor de Bases de Datos: MySQL.
Versión recomendada: ≥ 8.0.
Configuración regional: UTF-8 para soporte multilingüe.


6. USO Y EJECUCIÓN

  1.Crear la base de datos:
    Ejecutar a.Crear BDD.sql para definir las tablas.

  2.Insertar registros iniciales:
    Ejecutar b.Insertar Registros.sql para cargar los registros.

  3.Crear vistas:
    Ejecutar c.Vistas relevantes.sql para crear consultas predefinidas.

  4.Consultas avanzadas:
    Consultar y aplicar ejemplos con d.Búsquedas relevantes.sql.

  5.Probar funciones, procedimientos y triggers:
    Ejecutar e.Triggers, funciones y procedimientos.sql para implementar
    y consultar los códigos disponibles.


7. EJEMPLO DE CONSULTA

- Obtener todas las ensaladas
  SELECT * FROM comidas WHERE tipo = 'Ensalada';


- Consultar la vista de comidas aptas para alérgicos al gluten:
  SELECT * FROM vw_alergicos_gluten;


- Llamar al procedimiento para listar alérgenos de una comida específica:
  CALL sp_obtenerAlergenosComida(1); -- (Cambiar "1" por el código de comida deseado)


8. ELECCIÓN DE LOS TIPOS DE DATOS UTILIZADOS

- Por criterio personal, todas las tablas tienen una clave primaria numérica autoincremental.
- Los datos se han definido con SMALLINT en lugar de INT, permita más de 32.000 registros 
  distintos, más que suficientes para una pequeña base de datos.
- Los campos de las tablas se han definido sin tilde
- Los datos se han definido con tildes
- Por criterio personal, las relaciones entre tablas se han definido:
  · On update cascade
  · On delete null


9. POSIBLES IMPLEMENTACIONES FUTURAS
Añadir vistas de comidas clasificadas por continentes y países de origen.
Expandir vistas para filtros basados en tipo de comida.
Integrar soporte para diferentes idiomas en nombres y descripciones.


--- ( ENGLISH ) ---
1. GENERAL DESCRIPTION

The Food database manages information about foods, ingredients and allergens.
It also records the relationships between them.
It is designed to provide useful information to users with food allergies,
or to specialists in the gastronomy sector.

2. DATABASE STRUCTURE

Main tables:
· Ingredientes: Information on ingredients (name, flavour, presence of allergens).
· Comidas: Record of dishes, including their type, description and origin.
· Alergenos: List of possible food allergens.
· Comida_ingredientes: Relationship between foods and their ingredients.
· Ingrediente_Alergenos: Relationship between ingredients and allergens.

3. DEPENDENCIES BETWEEN TABLES

Key relationships:
· Comida_ingredientes links Meals and Ingredients.
· Ingrediente_alergenos links Ingredients and Allergens.

4. INCLUDED SCRIPTS

a.Crear BDD
Defines and creates the database structure.

b.Insertar registros
Loads the initial data.

c.Vistas Relevantes
Includes views for queries that can be recurring. Example:
- Foods without certain allergens (vw_allergicos_gluten and vw_alergicos_huevo).
- List of foods and allergens (vw_comidas_alergenos).

d.Búsquedas relevantes
Includes examples of advanced queries:
- Ingredients related to allergens.
- Foods by type or specific content.
- Filtering for egg-free desserts or gluten-free foods.

e. Triggers, Funciones y Procedimientos
Includes code to perform automations:
- Trigger to flash a new ingredient with allergens to the user
- Function to list allergens for a meal.
- Procedure to obtain ingredients and allergens associated with a dish.

5. ENVIRONMENT REQUIREMENTS

Database Management System: MySQL.
Recommended version: ≥ 8.0.
Regional configuration: UTF-8 for multilingual support.

6. USE AND EXECUTION

1. Create the database:
Run a.Crear BDD.sql to define the tables.

2. Insert initial records:
Run b.Insertar registros.sql to load the records.

3. Create views:
Run c.Vistas relevantes.sql to create predefined queries.

4. Advanced queries:
Consult and apply examples with d.Búsquedas relevantes.sql.

5. Test functions, procedures and triggers:
Execute e.Triggers, functiones y procedimientos.sql to implement
and consult the available codes.

7. QUERY EXAMPLE

- Obtain all salads
SELECT * FROM comidas WHERE tipo = 'Ensalada';

- Query the view of meals suitable for gluten allergy sufferers:
SELECT * FROM vw_alergicos_gluten;

- Call the procedure to list allergens for a specific meal:
CALL sp_obtenerAlergenosComida(1); -- (Change "1" for the desired meal code)

8. CHOOSING THE TYPES OF DATA USED

- Based on personal criteria, all tables have an auto-incremental numeric primary key.
- Data has been defined with SMALLINT instead of INT, allowing for more than 32,000 distinct records,
more than enough for a small database.
- Table fields have been defined without accents
- Data has been defined with accents
- Based on personal criteria, relationships between tables have been defined:
· On update cascade
· On delete null

9. POSSIBLE FUTURE IMPLEMENTATIONS
Add food views classified by continents and countries of origin.
Expand views for filters based on food type.
Integrate support for different languages ​​in names and descriptions.
