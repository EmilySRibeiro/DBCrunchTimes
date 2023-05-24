-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 24-Maio-2023 às 06:20
-- Versão do servidor: 8.0.31
-- versão do PHP: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `crunchtimes`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `Chave` int NOT NULL AUTO_INCREMENT,
  `Entrada` char(25) DEFAULT NULL,
  `Data` date DEFAULT NULL,
  `Produto` char(25) DEFAULT NULL,
  `HDisp` double DEFAULT NULL,
  `QCs` int DEFAULT NULL,
  `AgTqFus` double DEFAULT NULL,
  `BatTQFus` int DEFAULT NULL,
  `BBFus` double DEFAULT NULL,
  `QSol` double DEFAULT NULL,
  `HHProg` double DEFAULT NULL,
  `AgTQMis` double DEFAULT NULL,
  `BatTQMis` int DEFAULT NULL,
  `BBMis` double DEFAULT NULL,
  `AgTqAli` double DEFAULT NULL,
  `BBAli` double DEFAULT NULL,
  `AccMaqForm` double DEFAULT NULL,
  `AccTransEstoc` double DEFAULT NULL,
  `QMFMax` double GENERATED ALWAYS AS ((`AccMaqForm` * 4)) STORED,
  `QMFReal` double DEFAULT NULL,
  `AprovQual` double(3,3) DEFAULT NULL,
  `Disponibilidade` double(3,3) GENERATED ALWAYS AS ((`AccTransEstoc` / `HHProg`)) STORED,
  `Performace` double(3,3) GENERATED ALWAYS AS ((`QMFReal` / `QMFMax`)) STORED,
  `OEE` double(3,3) GENERATED ALWAYS AS (((`AprovQual` * `Disponibilidade`) * `Performace`)) STORED,
  PRIMARY KEY (`Chave`)
) ENGINE=MyISAM AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `product`
--

INSERT INTO `product` (`Chave`, `Entrada`, `Data`, `Produto`, `HDisp`, `QCs`, `AgTqFus`, `BatTQFus`, `BBFus`, `QSol`, `HHProg`, `AgTQMis`, `BatTQMis`, `BBMis`, `AgTqAli`, `BBAli`, `AccMaqForm`, `AccTransEstoc`, `QMFReal`, `AprovQual`) VALUES
(1, 'Sem_9_1', '2023-02-27', 'Floco de Arroz', 20, 62, 20, 8, 20, 7.184, 24, 19, 23, 19, 19, 18, 18, 18, 65.3, 0.940),
(2, 'Sem_9_2', '2023-02-28', 'Floco de Arroz', 24, 82, 24, 11, 24, 9.441, 24, 24, 30, 24, 24, 24, 24, 24, 85.82, 0.970),
(3, 'Sem_9_3', '2023-03-01', 'Floco de Arroz', 24, 87, 24, 11, 24, 10.117, 24, 24, 32, 24, 24, 24, 24, 24, 91.97, 0.970),
(4, 'Sem_9_4', '2023-03-02', 'Floco de Arroz', 22, 79, 22, 10, 22, 9.124, 24, 21, 29, 21, 21, 21, 21, 21, 82.94, 0.860),
(5, 'Sem_9_5', '2023-03-03', 'Caramelo Crocante', 24, 75, 24, 10, 24, 6.418, 24, 22, 27, 22, 22, 22, 20, 20, 77.31, 0.990),
(6, 'Sem_9_6', '2023-03-04', 'Caramelo Crocante', 24, 79, 24, 10, 24, 6.763, 24, 24, 29, 24, 24, 24, 23.81, 23.52, 81.47, 0.870),
(7, 'Sem_9_7', '2023-03-05', 'Caramelo Crocante', 24, 57, 18, 8, 18, 4.882, 24, 18, 21, 17, 17, 17, 17, 17, 58.82, 0.870),
(8, 'Sem_10_1', '2023-03-06', 'Amendoim', 20, 70, 20, 9, 20, 11.988, 24, 20, 27, 19.5, 19.5, 19.5, 19.5, 19.5, 77.34, 0.960),
(9, 'Sem_10_2', '2023-03-07', 'Amendoim', 24, 78, 24, 10, 23.79, 13.457, 24, 23.49, 30, 23.2, 22.92, 22.64, 22.36, 22.08, 86.82, 0.900),
(10, 'Sem_10_3', '2023-03-08', 'Amendoim', 24, 71, 24, 9, 24, 12.185, 24, 24, 28, 24, 23.91, 23.62, 23.33, 23.04, 78.61, 0.940),
(11, 'Sem_10_4', '2023-03-09', 'Amendoim', 24, 79, 24, 10, 23.79, 13.608, 24, 23.49, 31, 23.2, 22.92, 22.64, 22.36, 22.08, 87.79, 0.910),
(12, 'Sem_10_5', '2023-03-10', 'Amendoim', 24, 41, 14, 6, 14, 6.994, 24, 13, 17, 13, 13, 13, 13, 13, 45.12, 0.900),
(13, 'Sem_10_6', '2023-03-11', 'Amendoim', 24, 77, 24, 10, 24, 13.259, 24, 24, 30, 24, 24, 24, 24, 23.76, 85.54, 0.940),
(14, 'Sem_10_7', '2023-03-12', 'Floco de Arroz', 24, 77, 24, 10, 24, 8.869, 24, 23.75, 28, 23.46, 23.17, 22.88, 22.6, 22.32, 80.62, 0.960),
(15, 'Sem_11_1', '2023-03-13', 'Floco de Arroz', 24, 85, 24, 11, 24, 9.808, 24, 24, 31, 23.71, 23.42, 23.13, 22.84, 22.56, 89.16, 0.870),
(16, 'Sem_11_2', '2023-03-14', 'Caramelo Crocante', 24, 86, 24, 11, 24, 7.36, 24, 24, 31, 24, 24, 24, 24, 23.76, 88.67, 0.890),
(17, 'Sem_11_3', '2023-03-15', 'Caramelo Crocante', 24, 84, 24, 11, 24, 7.196, 24, 24, 30, 24, 24, 24, 24, 24, 86.69, 0.980),
(18, 'Sem_11_4', '2023-03-16', 'Caramelo Crocante', 24, 81, 24, 11, 24, 6.935, 24, 24, 29, 24, 24, 24, 23.81, 23.52, 83.54, 0.970),
(19, 'Sem_11_5', '2023-03-17', 'Caramelo Crocante', 24, 76, 23.82, 10, 23.53, 6.512, 24, 23.24, 28, 22.95, 22.67, 22.39, 22.11, 21.84, 78.45, 0.910),
(20, 'Sem_11_6', '2023-03-18', 'Caramelo Crocante', 24, 82, 24, 11, 24, 6.965, 24, 24, 29, 24, 24, 24, 24, 24, 83.9, 0.920),
(21, 'Sem_11_7', '2023-03-19', 'Floco de Arroz', 9, 28, 9, 4, 9, 3.207, 24, 8, 11, 8, 8, 8, 8, 8, 29.15, 0.930),
(22, 'Sem_12_1', '2023-03-20', 'Floco de Arroz', 24, 79, 24, 10, 24, 9.135, 24, 24, 29, 24, 24, 24, 24, 24, 83.04, 0.940),
(23, 'Sem_12_2', '2023-03-21', 'Floco de Arroz', 24, 87, 24, 11, 24, 10.059, 24, 24, 32, 24, 24, 23.87, 23.57, 23.28, 91.44, 0.950),
(24, 'Sem_12_3', '2023-03-22', 'Floco de Arroz', 24, 77, 24, 10, 24, 8.871, 24, 24, 28, 24, 23.91, 23.62, 23.33, 23.04, 80.64, 0.920),
(25, 'Sem_12_4', '2023-03-23', 'Floco de Arroz', 23, 70, 23, 9, 23, 8.126, 24, 23, 26, 23, 23, 23, 22, 22, 73.87, 0.990),
(26, 'Sem_12_5', '2023-03-24', 'Amendoim', 24, 67, 24, 9, 24, 11.518, 24, 23, 26, 22, 22, 22, 22, 22, 74.3, 0.860),
(27, 'Sem_12_6', '2023-03-25', 'Amendoim', 24, 84, 24, 11, 24, 14.494, 24, 24, 33, 24, 24, 24, 24, 24, 93.5, 0.890),
(28, 'Sem_12_7', '2023-03-26', 'Caramelo Crocante', 22, 77, 22, 10, 22, 6.563, 24, 23, 28, 23, 23, 23, 23, 23, 79.06, 0.890),
(29, 'Sem_13_1', '2023-03-27', 'Caramelo Crocante', 24, 76, 24, 10, 24, 6.517, 24, 24, 28, 23.71, 23.42, 23.13, 22.84, 22.56, 78.51, 0.970),
(30, 'Sem_13_2', '2023-03-28', 'Caramelo Crocante', 24, 83, 24, 11, 24, 7.074, 24, 23, 30, 23, 23, 23, 23, 12, 85.23, 0.900),
(31, 'Sem_13_3', '2023-03-29', 'Floco de Arroz', 23, 81, 23, 11, 23, 9.4, 24, 23, 30, 23, 22.42, 22.14, 21.87, 21.6, 85.45, 0.980),
(32, 'Sem_13_4', '2023-03-30', 'Floco de Arroz', 20, 68, 20, 9, 20, 7.841, 24, 20, 25, 19, 19, 19, 19, 19, 71.28, 0.980),
(33, 'Sem_13_5', '2023-03-31', 'Floco de Arroz', 13.25, 44, 13.09, 6, 12.93, 5.011, 24, 12.77, 17, 12.61, 12.46, 12.3, 12.15, 12, 45.55, 0.900),
(34, 'Sem_13_6', '2023-04-01', 'Floco de Arroz', 24, 79, 24, 10, 24, 9.12, 24, 24, 29, 23.96, 23.67, 23.37, 23.09, 22.8, 82.9, 0.960),
(35, 'Sem_13_7', '2023-04-02', 'Caramelo Crocante', 24, 93, 24, 12, 24, 7.921, 24, 24, 33, 24, 24, 24, 24, 24, 95.42, 0.910),
(36, 'Sem_14_1', '2023-04-03', 'Amendoim', 24, 76, 24, 10, 24, 13.125, 24, 24, 30, 24, 24, 24, 24, 24, 84.67, 0.890),
(37, 'Sem_14_2', '2023-04-04', 'Amendoim', 24, 75, 24, 10, 24, 13.009, 24, 24, 29, 23.71, 23.42, 23.13, 22.84, 22.56, 83.92, 0.980),
(38, 'Sem_14_3', '2023-04-05', 'Amendoim', 24, 81, 24, 11, 24, 14.029, 24, 24, 32, 24, 24, 24, 23.81, 23.52, 90.5, 0.980),
(39, 'Sem_14_4', '2023-04-06', 'Amendoim', 23, 75, 23, 10, 23, 12.981, 24, 23, 29, 23, 22, 22, 22, 21, 83.75, 0.860),
(40, 'Sem_14_5', '2023-04-07', 'Amendoim', 24, 73, 24, 10, 24, 12.535, 24, 23, 28, 23, 22.5, 22.5, 22.3, 22.3, 80.87, 0.980),
(41, 'Sem_14_6', '2023-04-08', 'Amendoim', 24, 76, 24, 10, 23.79, 13.101, 24, 23.49, 30, 23.2, 22.92, 22.64, 22.36, 22.08, 84.52, 0.920),
(42, 'Sem_14_7', '2023-04-09', 'Amendoim', 24, 74, 24, 10, 24, 12.843, 24, 23.75, 29, 23.46, 23.17, 22.88, 22.6, 22.32, 82.85, 0.970),
(43, 'Sem_15_1', '2023-04-10', 'Amendoim', 24, 74, 24, 10, 23.79, 12.773, 24, 23.49, 29, 23.2, 22.92, 22.64, 22.36, 22.08, 82.4, 0.900),
(44, 'Sem_15_2', '2023-04-11', 'Amendoim', 24, 71, 23.82, 9, 23.53, 12.201, 24, 23.24, 28, 22.95, 22.67, 22.39, 22.11, 21.84, 78.71, 0.890),
(45, 'Sem_15_3', '2023-04-12', 'Caramelo Crocante', 24, 90, 24, 12, 24, 7.715, 24, 24, 32, 24, 24, 24, 23.81, 23.52, 92.95, 0.860),
(46, 'Sem_15_4', '2023-04-13', 'Caramelo Crocante', 24, 89, 24, 12, 24, 7.645, 24, 24, 32, 24, 24, 24, 23.81, 23.52, 92.1, 0.870),
(47, 'Sem_15_5', '2023-04-14', 'Caramelo Crocante', 24, 83, 24, 12, 24, 7.092, 24, 24, 30, 22.95, 22.67, 22.39, 22.11, 21.84, 85.44, 0.950),
(48, 'Sem_15_6', '2023-04-15', 'Caramelo Crocante', 23, 72, 23, 9, 23, 6.182, 24, 23, 26, 23, 23, 22, 22, 22, 74.48, 0.850),
(49, 'Sem_15_7', '2023-04-16', 'Caramelo Crocante', 24, 74, 24, 10, 24, 6.334, 24, 24, 27, 23.2, 22.92, 22.64, 22.36, 22.08, 76.31, 0.910),
(50, 'Sem_16_1', '2023-04-17', 'Caramelo Crocante', 24, 91, 24, 12, 24, 7.801, 24, 24, 33, 24, 24, 24, 23.81, 23.52, 93.99, 0.850),
(51, 'Sem_16_2', '2023-04-18', 'Floco de Arroz', 24, 79, 24, 10, 23.79, 9.123, 24, 23.49, 29, 23.2, 22.92, 22.64, 22.36, 22.08, 82.93, 0.980),
(52, 'Sem_16_3', '2023-04-19', 'Floco de Arroz', 24, 82, 24, 11, 24, 9.431, 24, 24, 30, 24, 24, 24, 24, 24, 85.73, 0.900),
(53, 'Sem_16_4', '2023-04-20', 'Floco de Arroz', 24, 83, 24, 11, 24, 9.611, 24, 24, 31, 24, 23.91, 23.62, 23.33, 23.04, 87.37, 0.900),
(54, 'Sem_16_5', '2023-04-21', 'Amendoim', 24, 74, 24, 10, 24, 12.71, 24, 24, 29, 22.7, 22, 22, 22, 22, 81.99, 0.920),
(55, 'Sem_16_6', '2023-04-22', 'Amendoim', 24, 70, 24, 9, 24, 12.016, 24, 24, 27, 23.71, 23.42, 23.13, 22.84, 22.56, 77.52, 0.860),
(56, 'Sem_16_7', '2023-04-23', 'Caramelo Crocante', 24, 84, 24, 11, 24, 7.214, 24, 24, 30, 24, 23.91, 23.62, 23.33, 23.04, 86.91, 0.930),
(57, 'Sem_17_1', '2023-04-24', 'Caramelo Crocante', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.000),
(58, 'Sem_17_2', '2023-04-25', 'Caramelo Crocante', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.000),
(59, 'Sem_17_3', '2023-04-26', 'Floco de Arroz', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.000),
(60, 'Sem_17_4', '2023-04-27', 'Floco de Arroz', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.000),
(61, 'Sem_17_5', '2023-04-28', 'Floco de Arroz', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.000),
(62, 'Sem_17_6', '2023-04-29', 'Amendoim', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.000),
(63, 'Sem_17_7', '2023-04-30', 'Amendoim', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.000);

-- --------------------------------------------------------

--
-- Estrutura da tabela `sem9`
--

DROP TABLE IF EXISTS `sem9`;
CREATE TABLE IF NOT EXISTS `sem9` (
  `Chave` int NOT NULL AUTO_INCREMENT,
  `Entrada` char(25) DEFAULT NULL,
  `Data` date DEFAULT NULL,
  `Produto` char(25) DEFAULT NULL,
  `HDisp` double DEFAULT NULL,
  `QCs` int DEFAULT NULL,
  `AgTqFus` double DEFAULT NULL,
  `BatTQFus` int DEFAULT NULL,
  `BBFus` double DEFAULT NULL,
  `QSol` double DEFAULT NULL,
  `HHProg` double DEFAULT NULL,
  `AgTQMis` double DEFAULT NULL,
  `BatTQMis` int DEFAULT NULL,
  `BBMis` double DEFAULT NULL,
  `AgTqAli` double DEFAULT NULL,
  `BBAli` double DEFAULT NULL,
  `AccMaqForm` double DEFAULT NULL,
  `AccTransEstoc` double DEFAULT NULL,
  `QMFMax` double GENERATED ALWAYS AS ((`AccMaqForm` * 4)) STORED,
  `QMFReal` double DEFAULT NULL,
  `AprovQual` double(3,3) DEFAULT NULL,
  `Disponibilidade` double(3,3) GENERATED ALWAYS AS ((`AccTransEstoc` / `HHProg`)) STORED,
  `Performace` double(3,3) GENERATED ALWAYS AS ((`QMFReal` / `QMFMax`)) STORED,
  `OEE` double(3,3) GENERATED ALWAYS AS (((`AprovQual` * `Disponibilidade`) * `Performace`)) STORED,
  PRIMARY KEY (`Chave`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `email` char(35) DEFAULT NULL,
  `Passwords` char(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`email`, `Passwords`) VALUES
('ger-process@sugarhigh.ind.br', 'SH33ct125');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
