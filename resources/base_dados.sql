-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           8.0.30 - MySQL Community Server - GPL
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para loja_api
DROP DATABASE IF EXISTS `loja_api`;
CREATE DATABASE IF NOT EXISTS `loja_api` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `loja_api`;

-- Copiando estrutura para tabela loja_api.clientes
DROP TABLE IF EXISTS `clientes`;
CREATE TABLE IF NOT EXISTS `clientes` (
  `ID_cliente` int unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `telefone` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`ID_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela loja_api.clientes: ~2 rows (aproximadamente)
INSERT INTO `clientes` (`ID_cliente`, `nome`, `email`, `telefone`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 'Charles', 'charles@email.com', '82999999999', '2025-04-09 15:13:30', '2025-04-09 15:13:35', NULL),
	(2, 'Aluno', 'aluno@email.com', '82988888888', '2025-04-09 15:14:30', '2025-04-09 15:14:31', NULL);

-- Copiando estrutura para tabela loja_api.produtos
DROP TABLE IF EXISTS `produtos`;
CREATE TABLE IF NOT EXISTS `produtos` (
  `ID_produto` int unsigned NOT NULL AUTO_INCREMENT,
  `produto` varchar(50) DEFAULT NULL,
  `quantidade` int DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`ID_produto`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela loja_api.produtos: ~3 rows (aproximadamente)
INSERT INTO `produtos` (`ID_produto`, `produto`, `quantidade`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 'pregos', 100, '2025-04-09 15:15:21', '2025-04-09 15:15:22', NULL),
	(2, 'parafusos', 200, '2025-04-09 15:15:37', '2025-04-09 15:15:38', NULL),
	(3, 'alfinetes', 350, '2025-04-09 15:15:56', '2025-04-09 15:15:57', NULL);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
