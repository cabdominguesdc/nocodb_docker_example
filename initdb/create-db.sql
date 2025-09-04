-- Criação de utilizador adicional para gestão
CREATE USER gestor WITH PASSWORD 'gestorpass';
-- Criar uma base de dados adicional para testes
CREATE DATABASE nocodb_test OWNER gestor;
-- Dar permissões ao utilizador "gestor" na base de dados principal
GRANT ALL PRIVILEGES ON DATABASE nocodb_main TO gestor;
-- Dar permissões ao utilizador "gestor" na base de dados de testes
GRANT ALL PRIVILEGES ON DATABASE nocodb_test TO gestor;
-- Exemplo: criar um schema específico para o gestor
\connect nocodb_main;
CREATE SCHEMA IF NOT EXISTS gestor_schema AUTHORIZATION gestor;
-- Dar permissões de uso no schema
GRANT ALL ON SCHEMA gestor_schema TO gestor;
