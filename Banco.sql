-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 14-Jun-2018 às 23:46
-- Versão do servidor: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `trab_ads_132`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cr001_curso`
--

CREATE TABLE `cr001_curso` (
  `CR001_ID` int(11) NOT NULL,
  `CR001_NOME` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cr001_curso`
--

INSERT INTO `cr001_curso` (`CR001_ID`, `CR001_NOME`) VALUES
(1, ':descricao'),
(2, 'Curso de AnÃ¡lise e Desenvolvimento de Sistemas'),
(3, 'Curso de Análise e Desenvolvimento de Sistemas'),
(4, 'Curso de Administração'),
(5, 'Curso 22'),
(6, 'Curso 33'),
(7, 'Curso 44'),
(8, 'Curso 55'),
(9, 'FONOAUDIOLOGIA');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cr002_nivel`
--

CREATE TABLE `cr002_nivel` (
  `CR002_ID` int(11) NOT NULL,
  `CR002_DESCRICAO` varchar(45) NOT NULL,
  `CR002_IDCURSO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cr003_semestre`
--

CREATE TABLE `cr003_semestre` (
  `CR003_ID` int(11) NOT NULL,
  `CR003_DESCRICAO` varchar(45) NOT NULL,
  `CR003_IDNIVEL` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cr004_disciplina`
--

CREATE TABLE `cr004_disciplina` (
  `CR004_ID` int(11) NOT NULL,
  `CR004_IDSEMESTRE` int(11) NOT NULL,
  `CR004_NOME` varchar(45) NOT NULL,
  `CR004_IDENTIFICACAO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cr005-tema`
--

CREATE TABLE `cr005-tema` (
  `CR005_ID` int(11) NOT NULL,
  `CR005_IDDISCIPLINA` int(11) NOT NULL,
  `CR005_NOME` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cr006_desafio`
--

CREATE TABLE `cr006_desafio` (
  `CR006_ID` int(11) NOT NULL,
  `CR006_IDTEMA` int(11) NOT NULL,
  `CR006_DESCRICAO` int(11) NOT NULL,
  `CR006_IDSEMESTRE` int(11) NOT NULL,
  `CR006_DATAINICIO` date NOT NULL,
  `CR006_DATAFIM` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cr007_questoes`
--

CREATE TABLE `cr007_questoes` (
  `CR007_ID` int(11) NOT NULL,
  `CR007_IDTEMA` int(11) NOT NULL,
  `CR007_IDPROFESSOR` int(11) NOT NULL,
  `CR007_QUESTAO` multilinestring NOT NULL,
  `CR007_OPCAO1` varchar(100) NOT NULL,
  `CR007_OPCAO2` varchar(100) NOT NULL,
  `CR007_OPCAO3` varchar(100) NOT NULL,
  `CR007_OPCAO4` varchar(100) NOT NULL,
  `CR007_RESPOSTA` int(11) NOT NULL,
  `CR007_PESO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cr008_professor`
--

CREATE TABLE `cr008_professor` (
  `CR008_ID` int(11) NOT NULL,
  `CR008_MATRICULA` int(11) NOT NULL,
  `CR008_IDUSUARIO` int(11) NOT NULL,
  `CR008_NOME` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cr009_aluno`
--

CREATE TABLE `cr009_aluno` (
  `CR009_MATRICULA` int(11) NOT NULL,
  `CR009_NOME` varchar(45) NOT NULL,
  `CR009_IDUSUARIO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cr010_professordisciplina`
--

CREATE TABLE `cr010_professordisciplina` (
  `CR010_MATRICULA` int(11) NOT NULL,
  `CR010_IDDISCIPLINA` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cr011_alunodisciplina`
--

CREATE TABLE `cr011_alunodisciplina` (
  `CR011_MATRICULA` int(11) NOT NULL,
  `CR011_IDDISCIPLINA` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cr012_quezz`
--

CREATE TABLE `cr012_quezz` (
  `CR012_ID` int(11) NOT NULL,
  `CR012_IDQUESTAO` int(11) NOT NULL,
  `CR012_IDDESAFIO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cr013_usuario`
--

CREATE TABLE `cr013_usuario` (
  `CR013_ID` int(11) NOT NULL,
  `CR013_MATRICULA` int(11) NOT NULL,
  `CR013_NOME` varchar(45) NOT NULL,
  `CR013_EMAIL` varchar(20) NOT NULL,
  `CR013_SENHA` varchar(8) NOT NULL,
  `CR013_TIPO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cr013_usuario`
--

INSERT INTO `cr013_usuario` (`CR013_ID`, `CR013_MATRICULA`, `CR013_NOME`, `CR013_EMAIL`, `CR013_SENHA`, `CR013_TIPO`) VALUES
(1, 899998, 'MASTER', 'adri@splora.com.br', '21036568', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cr014_respostacapa`
--

CREATE TABLE `cr014_respostacapa` (
  `CR014_ID` int(11) NOT NULL,
  `CR014_IDDESAFIO` int(11) NOT NULL,
  `CR014_MATRICULA` int(11) NOT NULL,
  `CR014_DATA` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cr015_respostaquestao`
--

CREATE TABLE `cr015_respostaquestao` (
  `CR015_ID` int(11) NOT NULL,
  `CR015_IDCAPA` int(11) NOT NULL,
  `CR015_RESPOSTA` int(11) NOT NULL,
  `CR015_PONTUACAO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cr001_curso`
--
ALTER TABLE `cr001_curso`
  ADD PRIMARY KEY (`CR001_ID`);

--
-- Indexes for table `cr002_nivel`
--
ALTER TABLE `cr002_nivel`
  ADD PRIMARY KEY (`CR002_ID`),
  ADD KEY `CR002_IDCURSO` (`CR002_IDCURSO`);

--
-- Indexes for table `cr003_semestre`
--
ALTER TABLE `cr003_semestre`
  ADD PRIMARY KEY (`CR003_ID`),
  ADD KEY `CR003_IDNIVEL` (`CR003_IDNIVEL`);

--
-- Indexes for table `cr004_disciplina`
--
ALTER TABLE `cr004_disciplina`
  ADD PRIMARY KEY (`CR004_ID`),
  ADD KEY `CR004_IDSEMESTRE` (`CR004_IDSEMESTRE`);

--
-- Indexes for table `cr005-tema`
--
ALTER TABLE `cr005-tema`
  ADD PRIMARY KEY (`CR005_ID`),
  ADD KEY `CR005_IDDISCIPLINA` (`CR005_IDDISCIPLINA`);

--
-- Indexes for table `cr006_desafio`
--
ALTER TABLE `cr006_desafio`
  ADD PRIMARY KEY (`CR006_ID`),
  ADD KEY `CR006_IDSEMESTRE` (`CR006_IDSEMESTRE`),
  ADD KEY `CR006_IDTEMA` (`CR006_IDTEMA`);

--
-- Indexes for table `cr007_questoes`
--
ALTER TABLE `cr007_questoes`
  ADD PRIMARY KEY (`CR007_ID`),
  ADD KEY `CR007_IDPROFESSOR` (`CR007_IDPROFESSOR`),
  ADD KEY `CR007_IDTEMA` (`CR007_IDTEMA`);

--
-- Indexes for table `cr008_professor`
--
ALTER TABLE `cr008_professor`
  ADD PRIMARY KEY (`CR008_ID`),
  ADD KEY `CR008_IDUSUARIO` (`CR008_IDUSUARIO`);

--
-- Indexes for table `cr009_aluno`
--
ALTER TABLE `cr009_aluno`
  ADD PRIMARY KEY (`CR009_MATRICULA`),
  ADD KEY `CR009_IDUSUARIO` (`CR009_IDUSUARIO`);

--
-- Indexes for table `cr010_professordisciplina`
--
ALTER TABLE `cr010_professordisciplina`
  ADD PRIMARY KEY (`CR010_MATRICULA`,`CR010_IDDISCIPLINA`),
  ADD KEY `CR010_MATRICULA` (`CR010_MATRICULA`),
  ADD KEY `CR010_IDDISCIPLINA` (`CR010_IDDISCIPLINA`);

--
-- Indexes for table `cr011_alunodisciplina`
--
ALTER TABLE `cr011_alunodisciplina`
  ADD PRIMARY KEY (`CR011_MATRICULA`),
  ADD KEY `CR011_IDDISCIPLINA` (`CR011_IDDISCIPLINA`);

--
-- Indexes for table `cr012_quezz`
--
ALTER TABLE `cr012_quezz`
  ADD PRIMARY KEY (`CR012_ID`),
  ADD KEY `CR012_IDDESAFIO` (`CR012_IDDESAFIO`),
  ADD KEY `CR012_IDQUESTAO` (`CR012_IDQUESTAO`);

--
-- Indexes for table `cr013_usuario`
--
ALTER TABLE `cr013_usuario`
  ADD PRIMARY KEY (`CR013_ID`);

--
-- Indexes for table `cr014_respostacapa`
--
ALTER TABLE `cr014_respostacapa`
  ADD PRIMARY KEY (`CR014_ID`),
  ADD KEY `CR014_IDDESAFIO` (`CR014_IDDESAFIO`);

--
-- Indexes for table `cr015_respostaquestao`
--
ALTER TABLE `cr015_respostaquestao`
  ADD PRIMARY KEY (`CR015_ID`),
  ADD KEY `CR015_IDCAPA` (`CR015_IDCAPA`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cr001_curso`
--
ALTER TABLE `cr001_curso`
  MODIFY `CR001_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `cr002_nivel`
--
ALTER TABLE `cr002_nivel`
  MODIFY `CR002_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cr003_semestre`
--
ALTER TABLE `cr003_semestre`
  MODIFY `CR003_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cr004_disciplina`
--
ALTER TABLE `cr004_disciplina`
  MODIFY `CR004_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cr005-tema`
--
ALTER TABLE `cr005-tema`
  MODIFY `CR005_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cr006_desafio`
--
ALTER TABLE `cr006_desafio`
  MODIFY `CR006_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cr007_questoes`
--
ALTER TABLE `cr007_questoes`
  MODIFY `CR007_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cr008_professor`
--
ALTER TABLE `cr008_professor`
  MODIFY `CR008_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cr012_quezz`
--
ALTER TABLE `cr012_quezz`
  MODIFY `CR012_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cr013_usuario`
--
ALTER TABLE `cr013_usuario`
  MODIFY `CR013_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cr014_respostacapa`
--
ALTER TABLE `cr014_respostacapa`
  MODIFY `CR014_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cr015_respostaquestao`
--
ALTER TABLE `cr015_respostaquestao`
  MODIFY `CR015_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `cr002_nivel`
--
ALTER TABLE `cr002_nivel`
  ADD CONSTRAINT `cr002_nivel_ibfk_1` FOREIGN KEY (`CR002_IDCURSO`) REFERENCES `cr001_curso` (`CR001_ID`);

--
-- Limitadores para a tabela `cr003_semestre`
--
ALTER TABLE `cr003_semestre`
  ADD CONSTRAINT `cr003_semestre_ibfk_1` FOREIGN KEY (`CR003_IDNIVEL`) REFERENCES `cr002_nivel` (`CR002_ID`);

--
-- Limitadores para a tabela `cr004_disciplina`
--
ALTER TABLE `cr004_disciplina`
  ADD CONSTRAINT `cr004_disciplina_ibfk_1` FOREIGN KEY (`CR004_IDSEMESTRE`) REFERENCES `cr003_semestre` (`CR003_ID`);

--
-- Limitadores para a tabela `cr005-tema`
--
ALTER TABLE `cr005-tema`
  ADD CONSTRAINT `cr005-tema_ibfk_1` FOREIGN KEY (`CR005_IDDISCIPLINA`) REFERENCES `cr004_disciplina` (`CR004_ID`);

--
-- Limitadores para a tabela `cr006_desafio`
--
ALTER TABLE `cr006_desafio`
  ADD CONSTRAINT `cr006_desafio_ibfk_1` FOREIGN KEY (`CR006_IDSEMESTRE`) REFERENCES `cr003_semestre` (`CR003_ID`),
  ADD CONSTRAINT `cr006_desafio_ibfk_2` FOREIGN KEY (`CR006_IDTEMA`) REFERENCES `cr005-tema` (`CR005_ID`);

--
-- Limitadores para a tabela `cr007_questoes`
--
ALTER TABLE `cr007_questoes`
  ADD CONSTRAINT `cr007_questoes_ibfk_1` FOREIGN KEY (`CR007_IDPROFESSOR`) REFERENCES `cr008_professor` (`CR008_ID`),
  ADD CONSTRAINT `cr007_questoes_ibfk_2` FOREIGN KEY (`CR007_IDTEMA`) REFERENCES `cr005-tema` (`CR005_ID`);

--
-- Limitadores para a tabela `cr008_professor`
--
ALTER TABLE `cr008_professor`
  ADD CONSTRAINT `cr008_professor_ibfk_1` FOREIGN KEY (`CR008_IDUSUARIO`) REFERENCES `cr013_usuario` (`CR013_ID`);

--
-- Limitadores para a tabela `cr009_aluno`
--
ALTER TABLE `cr009_aluno`
  ADD CONSTRAINT `cr009_aluno_ibfk_1` FOREIGN KEY (`CR009_IDUSUARIO`) REFERENCES `cr013_usuario` (`CR013_ID`);

--
-- Limitadores para a tabela `cr011_alunodisciplina`
--
ALTER TABLE `cr011_alunodisciplina`
  ADD CONSTRAINT `cr011_alunodisciplina_ibfk_1` FOREIGN KEY (`CR011_IDDISCIPLINA`) REFERENCES `cr004_disciplina` (`CR004_ID`);

--
-- Limitadores para a tabela `cr012_quezz`
--
ALTER TABLE `cr012_quezz`
  ADD CONSTRAINT `cr012_quezz_ibfk_1` FOREIGN KEY (`CR012_IDDESAFIO`) REFERENCES `cr006_desafio` (`CR006_ID`),
  ADD CONSTRAINT `cr012_quezz_ibfk_2` FOREIGN KEY (`CR012_IDQUESTAO`) REFERENCES `cr007_questoes` (`CR007_ID`);

--
-- Limitadores para a tabela `cr014_respostacapa`
--
ALTER TABLE `cr014_respostacapa`
  ADD CONSTRAINT `cr014_respostacapa_ibfk_1` FOREIGN KEY (`CR014_IDDESAFIO`) REFERENCES `cr006_desafio` (`CR006_ID`);

--
-- Limitadores para a tabela `cr015_respostaquestao`
--
ALTER TABLE `cr015_respostaquestao`
  ADD CONSTRAINT `cr015_respostaquestao_ibfk_1` FOREIGN KEY (`CR015_IDCAPA`) REFERENCES `cr014_respostacapa` (`CR014_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
