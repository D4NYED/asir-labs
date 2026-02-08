# Inventory Management SQL (MySQL)

## Objetivo
Diseñar e implementar una base de datos relacional para gestionar el inventario de una empresa de electrodomésticos, aplicando buenas prácticas de integridad y validación de datos.

## Tecnologías
- MySQL / MariaDB
- SQL (DDL + DML + Queries)

## Funcionalidades implementadas
- Creación de base de datos y tablas
- Clave primaria AUTO_INCREMENT
- Restricciones de integridad:
  - NOT NULL
  - UNIQUE
  - CHECK (valores no negativos)
- Inserción de datos de prueba
- Consultas de análisis de inventario
- Cálculo de métricas de negocio (stock bajo, valor total)

## Estructura del proyecto
schema.sql → estructura de la base de datos
seed.sql → datos de ejemplo
queries.sql → consultas de análisis

## Esquema de la tabla Articulos

| Campo        | Tipo           | Restricciones |
|--------------|----------------|---------------|
| Codarticulo  | INT            | PK, AUTO_INCREMENT |
| Descripcion  | VARCHAR(100)   | UNIQUE, NOT NULL |
| Precio       | DECIMAL(10,2)  | CHECK >= 0 |
| Inventario   | INT            | CHECK >= 0 |

## Uso
mysql -u root -p < schema.sql
mysql -u root -p < seed.sql
