-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 21-Set-2021 às 23:49
-- Versão do servidor: 10.4.20-MariaDB
-- versão do PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `db_pi`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_desenvolvedoras`
--

CREATE TABLE `tb_desenvolvedoras` (
  `dev_cod_dev` int(11) NOT NULL,
  `dev_nome` varchar(100) NOT NULL,
  `dev_email` varchar(50) NOT NULL,
  `dev_idioma` varchar(50) DEFAULT NULL,
  `dev_cpf` varchar(14) NOT NULL,
  `dev_datnasc` date NOT NULL,
  `dev_areaatuacao` varchar(250) NOT NULL,
  `dev_condicaoespecial` varchar(250) DEFAULT NULL,
  `dev_formacaoacademica` varchar(250) NOT NULL,
  `dev_senha` varchar(32) NOT NULL,
  `dev_nac_codigonacionalidade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_desenvolvedoras`
--

INSERT INTO `tb_desenvolvedoras` (`dev_cod_dev`, `dev_nome`, `dev_email`, `dev_idioma`, `dev_cpf`, `dev_datnasc`, `dev_areaatuacao`, `dev_condicaoespecial`, `dev_formacaoacademica`, `dev_senha`, `dev_nac_codigonacionalidade`) VALUES
(1, 'julia soares', 'ju@ju.com', 'português, alemão', '875136', '2021-09-21', 'front, ux', 'não', 'BTI', '3464368a2951e7dca08671b24bdc0b63', 2),
(2, 'testeinfo', 'teste2@teste.com', 'portuga', '874568', '2021-09-21', 'front', 'nao', 'si', 'caf1a3dfb505ffed0d024130f58c5cfa', 1),
(3, 'teste2', 'teste2@teste.com', 'kjhgftdr', '548653', '2021-09-28', 'oijuhygtfr', 'oiuytr', 'kljhgf', '250cf8b51c773f3f8dc8b4be867a9a02', 1),
(4, 'teste3', 'teste3@teste.com', 'ingles', '213456', '2021-09-22', 'front', 'nao', 'si', '9e3cfc48eccf81a0d57663e129aef3cb', 2),
(5, 'ja', 'j@j.com', 'sdfgfd', '54879', '2021-09-29', 'cfvghbjnkjm,', 'não', 'sdfghjk', '3b29ba53c507b00a745ca7e2cbfd6acf', 1),
(6, 'leandra', 'le@le.com', 'fgbhgf', '5849645', '2021-09-23', 'v', 'não', 'a', 'a5755ca3df3bbe5623e9453c6b108cfc', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_empresas`
--

CREATE TABLE `tb_empresas` (
  `emp_codigoempresa` int(11) NOT NULL,
  `emp_cnpj` int(11) NOT NULL,
  `emp_email` varchar(45) NOT NULL,
  `emp_nome` varchar(100) NOT NULL,
  `emp_plataforma_apresentacao` varchar(45) NOT NULL,
  `emp_are_atuacao` varchar(45) NOT NULL,
  `emp_senha` varchar(32) NOT NULL,
  `emp_pai_codigopais` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_empresas`
--

INSERT INTO `tb_empresas` (`emp_codigoempresa`, `emp_cnpj`, `emp_email`, `emp_nome`, `emp_plataforma_apresentacao`, `emp_are_atuacao`, `emp_senha`, `emp_pai_codigopais`) VALUES
(1, 6525689, 'emp1@emp.com', 'LP Soluções', 'lpsolucoes.com', 'front', '0314ee502c6f4e284128ad14e84e37d5', 3),
(2, 25865, 'teste@teste.com', 'testelink', 'teste', 'front', 'aa1bf4646de67fd9086cf6c79007026c', 4),
(3, 54879654, 'ju@emp.com', 'jujuba software ', 'juteste.com', 'hgftdt', '11f3a9ec5f44acf60c7030b02394f460', 8);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_linguagem_das_desenvolvedoras`
--

CREATE TABLE `tb_linguagem_das_desenvolvedoras` (
  `lin_dev_cod_dev` int(11) NOT NULL,
  `lin_lig_codigolinguagem` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_linguagem_das_desenvolvedoras`
--

INSERT INTO `tb_linguagem_das_desenvolvedoras` (`lin_dev_cod_dev`, `lin_lig_codigolinguagem`) VALUES
(1, 2),
(1, 3),
(2, 1),
(3, 1),
(4, 2),
(4, 5),
(4, 6),
(5, 4),
(6, 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_linguagem_programacao`
--

CREATE TABLE `tb_linguagem_programacao` (
  `lig_codigolinguagem` int(11) NOT NULL,
  `lig_linguagemprogramacao` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_linguagem_programacao`
--

INSERT INTO `tb_linguagem_programacao` (`lig_codigolinguagem`, `lig_linguagemprogramacao`) VALUES
(1, 'Python'),
(2, 'Java'),
(3, 'C++'),
(4, 'JavaScript HTML CSS'),
(5, 'Ruby'),
(6, 'C#');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_nacionalidades`
--

CREATE TABLE `tb_nacionalidades` (
  `nac_codigonacionalidade` int(11) NOT NULL,
  `nac_nacionalidade` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_nacionalidades`
--

INSERT INTO `tb_nacionalidades` (`nac_codigonacionalidade`, `nac_nacionalidade`) VALUES
(1, 'Brasileira'),
(2, 'Estrangeira'),
(3, 'Dupla nacionalidade');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_paisessede`
--

CREATE TABLE `tb_paisessede` (
  `pai_codigopais` int(11) NOT NULL,
  `pai_paissede` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_paisessede`
--

INSERT INTO `tb_paisessede` (`pai_codigopais`, `pai_paissede`) VALUES
(1, 'Alemanha'),
(2, 'Brasil'),
(3, 'Canadá'),
(4, 'EUA'),
(5, 'Inglaterra'),
(6, 'Irlanda'),
(7, 'Polônia'),
(8, 'Suécia');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `tb_desenvolvedoras`
--
ALTER TABLE `tb_desenvolvedoras`
  ADD PRIMARY KEY (`dev_cod_dev`),
  ADD KEY `dev_nac_codigonacionalidade` (`dev_nac_codigonacionalidade`);

--
-- Índices para tabela `tb_empresas`
--
ALTER TABLE `tb_empresas`
  ADD PRIMARY KEY (`emp_codigoempresa`),
  ADD KEY `emp_pai_codigopais` (`emp_pai_codigopais`);

--
-- Índices para tabela `tb_linguagem_das_desenvolvedoras`
--
ALTER TABLE `tb_linguagem_das_desenvolvedoras`
  ADD PRIMARY KEY (`lin_dev_cod_dev`,`lin_lig_codigolinguagem`),
  ADD KEY `lin_lig_codigolinguagem` (`lin_lig_codigolinguagem`);

--
-- Índices para tabela `tb_linguagem_programacao`
--
ALTER TABLE `tb_linguagem_programacao`
  ADD PRIMARY KEY (`lig_codigolinguagem`);

--
-- Índices para tabela `tb_nacionalidades`
--
ALTER TABLE `tb_nacionalidades`
  ADD PRIMARY KEY (`nac_codigonacionalidade`);

--
-- Índices para tabela `tb_paisessede`
--
ALTER TABLE `tb_paisessede`
  ADD PRIMARY KEY (`pai_codigopais`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tb_desenvolvedoras`
--
ALTER TABLE `tb_desenvolvedoras`
  MODIFY `dev_cod_dev` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `tb_empresas`
--
ALTER TABLE `tb_empresas`
  MODIFY `emp_codigoempresa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `tb_linguagem_das_desenvolvedoras`
--
ALTER TABLE `tb_linguagem_das_desenvolvedoras`
  MODIFY `lin_dev_cod_dev` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `tb_linguagem_programacao`
--
ALTER TABLE `tb_linguagem_programacao`
  MODIFY `lig_codigolinguagem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `tb_nacionalidades`
--
ALTER TABLE `tb_nacionalidades`
  MODIFY `nac_codigonacionalidade` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `tb_paisessede`
--
ALTER TABLE `tb_paisessede`
  MODIFY `pai_codigopais` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `tb_desenvolvedoras`
--
ALTER TABLE `tb_desenvolvedoras`
  ADD CONSTRAINT `tb_desenvolvedoras_ibfk_1` FOREIGN KEY (`dev_nac_codigonacionalidade`) REFERENCES `tb_nacionalidades` (`nac_codigonacionalidade`);

--
-- Limitadores para a tabela `tb_empresas`
--
ALTER TABLE `tb_empresas`
  ADD CONSTRAINT `tb_empresas_ibfk_1` FOREIGN KEY (`emp_pai_codigopais`) REFERENCES `tb_paisessede` (`pai_codigopais`);

--
-- Limitadores para a tabela `tb_linguagem_das_desenvolvedoras`
--
ALTER TABLE `tb_linguagem_das_desenvolvedoras`
  ADD CONSTRAINT `tb_linguagem_das_desenvolvedoras_ibfk_1` FOREIGN KEY (`lin_dev_cod_dev`) REFERENCES `tb_desenvolvedoras` (`dev_cod_dev`),
  ADD CONSTRAINT `tb_linguagem_das_desenvolvedoras_ibfk_2` FOREIGN KEY (`lin_lig_codigolinguagem`) REFERENCES `tb_linguagem_programacao` (`lig_codigolinguagem`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
