# Product Catalog Maintenance (MySQL)

## Objetivo
Simular el ciclo de vida completo de una base de datos: creación, carga inicial, migraciones de esquema y actualización de datos.

## Funcionalidades
- Creación de base de datos y tabla Productos
- Inserción de datos iniciales
- Migración de esquema con ALTER TABLE
- Actualización de precios mediante reglas de negocio

## Estructura
schema.sql      → definición inicial
seed.sql        → datos de ejemplo
migrations.sql  → cambios estructurales
updates.sql     → modificaciones de datos

## Uso
mysql -u root -p < schema.sql
mysql -u root -p < seed.sql
mysql -u root -p < migrations.sql
mysql -u root -p < updates.sql

## Documentación
memoria.pdf → informe académico detallado del caso práctico
