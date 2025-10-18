# Proyecto de Integración de Datos Federados con PostgreSQL

## Descripción
Este proyecto implementa una arquitectura de federación de datos usando PostgreSQL como fuente y federador, empleando `postgres_fdw` para integrar dos bases de datos (una simulando MySQL). Se utilizan vistas GAV y LAV, materialized views y controles de calidad.

## Estructura
- **pg_source** → Base fuente principal
- **pg_mysql_import** → Segunda base simulando MySQL
- **pg_federator** → Nodo federador con vistas y materialized views

## Ejecución
1. Clonar el repositorio:
   ```bash
   git clone https://github.com/usuario/federated-lab.git
   cd federated-lab
   
2. Levantar los servicios
   ```bash
   docker compose up -d
   
3. Acceder al federador
   ```bash
   docker exec -it pg_federator psql -U feduser -d globaldb

4. Ejecutar pruebas
   ```bash
   \i /sql/05_tests_y_consultas.sql

## IMPORTANTE
MySQL fue simulado con un segundo PostgreSQL por compatibilidad del entorno.
Todas las vistas globales y materializadas están definidas en /sql/04_views_globales.sql.

## Autor
Federico Robles
