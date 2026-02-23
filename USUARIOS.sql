
-- Apartado 1.2.2

-- EJEMPLO 2

-- Creamos la base de datos prestashop
 DROP DATABASE IF EXISTS prestashop;
 CREATE DATABASE prestashop CHARACTER SET utf8mb4;
USE prestashop;

-- Creamos un usuario y le asignamos todos los persisos
DROP USER IF EXISTS 'user'@'localhost';
 CREATE USER 'user'@'localhost' IDENTIFIED BY 'password';
 GRANT ALL PRIVILEGES ON prestashop.* TO 'user'@'localhost';
 
-- Refrescamos los privilegios si queremos que se apliquen los cambiosinmediatamente
 FLUSH PRIVILEGES;

-- EJEMPLO 3

-- Creamos la base de datos prestashop
 DROP DATABASE IF EXISTS prestashop;
 CREATE DATABASE prestashop CHARACTER SET utf8mb4;
USE prestashop;

 -- Creamos un usuario y le asignamos todos los persisos
 DROP USER IF EXISTS 'user'@'localhost';
 CREATE USER 'user'@'localhost' IDENTIFIED BY 'password';
 GRANT SELECT, INSERT, UPDATE, DELETE ON prestashop.* TO 'user'@'localhost';

 -- Refrescamos los privilegios si queremos que se apliquen los cambios inmediatamente
 FLUSH PRIVILEGES;

-- EJEMPLO 4
  -- Creamos la base de datos prestashop
 DROP DATABASE IF EXISTS prestashop;
CREATE DATABASE prestashop CHARACTER SET utf8mb4;
 USE prestashop;

 -- Creamos un usuario y le asignamos todos los persisos
 DROP USER IF EXISTS 'user'@'localhost';
CREATE USER 'user'@'localhost' IDENTIFIED BY 'password';
 GRANT ALL PRIVILEGES ON prestashop.* TO 'user'@'localhost' WITH GRANT OPTION;

 -- Refrescamos los privilegios si queremos que se apliquen los cambios inmediatamente
 FLUSH PRIVILEGES;
 
-- EJEMPLO 5

GRANT SELECT ON prestashop.customer TO 'user'@'localhost' WITH GRANT OPTION;

-- Apartado 1.2.3 

-- EJEMPLO 
REVOKE INSERT, UPDATE, DELETE ON prestashop.* FROM 'user'@'localhost';
FLUSH PRIVILEGES;

-- Apartado 1.3

-- EJEMPLO
DROP ROLE IF EXISTS 'rol_lectura_escritura', 'rol_lectura', 'rol_escritura';
CREATE ROLE 'rol_lectura_escritura', 'rol_lectura', 'rol_escritura';
 GRANT ALL ON base_de_datos.* TO 'rol_lectura_escritura';
 GRANT SELECT ON base_de_datos.* TO 'rol_lectura';
 GRANT INSERT, UPDATE, DELETE ON base_de_datos.* TO 'rol_escritura';

 -- Creamos los usuarios
 DROP USER IF EXISTS admin;
 CREATE USER admin@'localhost' IDENTIFIED BY 'password1';
 DROP USER IF EXISTS usuario_lectura_1;
 CREATE USER usuario_lectura_1@'localhost' IDENTIFIED BY 'password2';
 DROP USER IF EXISTS usuario_lectura_2;
CREATE USER usuario_lectura_2@'localhost' IDENTIFIED BY 'password3';
 DROP USER IF EXISTS usuario_escritura_1;
 CREATE USER usuario_escritura_1@'localhost' IDENTIFIED BY 'password4';
 DROP USER IF EXISTS usuario_escritura_2;
 CREATE USER usuario_escritura_2@'localhost' IDENTIFIED BY 'password5';
 -- Asignamos los roles a los usuarios
 GRANT 'rol_lectura_escritura' TO admin@'localhost';
 GRANT 'rol_lectura' TO usuario_lectura_1@'localhost', usuario_lectura_2@'localhost';
 GRANT 'rol_escritura' TO usuario_escritura_1@'localhost', usuario_escritura_2@'localhost';





