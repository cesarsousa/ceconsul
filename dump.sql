-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.1.45-community


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema cetech
--

CREATE DATABASE IF NOT EXISTS cetech;
USE cetech;

--
-- Definition of table `funcionarios`
--

DROP TABLE IF EXISTS `funcionarios`;
CREATE TABLE `funcionarios` (
  `matricula` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `departamento` varchar(50) NOT NULL,
  `funcao` varchar(50) NOT NULL,
  `telefone` varchar(12) DEFAULT NULL,
  `cpf` varchar(14) NOT NULL,
  `salario` varchar(10) NOT NULL,
  `usuario` varchar(10) DEFAULT NULL,
  `senha` int(11) DEFAULT NULL,
  `dataNascimento` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`matricula`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `funcionarios`
--

/*!40000 ALTER TABLE `funcionarios` DISABLE KEYS */;
INSERT INTO `funcionarios` (`matricula`,`nome`,`departamento`,`funcao`,`telefone`,`cpf`,`salario`,`usuario`,`senha`,`dataNascimento`) VALUES 
 (28,'noeli sgode','desenvolvimento','coordenador','4133268870','25487145000','3000','noelis',111111,'26091950'),
 (15,'carlos fontana','desenvolvimento','assistente','2198742221','25498711140','2000','carlosf',111111,'21061970'),
 (1,'cesar sousa','TI','gerente','02198386616','02676563947','10000','cesarj',11205,'27081979'),
 (10,'claudio luis','qualidade','assistente','2169875471','32565487412','1000','claudiol',1111,'25061978'),
 (11,'joana silva','TI','assistente','2154876666','25487936510','1000','joana',1111,'27041970'),
 (12,'miguel martins','qualidade','coordenador','2165486321','25487963211','1500','miguelm',1111,'25061970'),
 (13,'karol de sousa','TI','assistente','4152148790','32569874120','2000','karols',1111,'24101980'),
 (16,'andre batista','desenvolvimento','assistente','2136548740','02154789620','1000','andreb',111111,'25011980'),
 (40,'mariana gomes','TI','assistente','2156987412','02154879633','1000','marian',111111,'21061970'),
 (27,'cristina franca','qualidade','assistente','2165483332','58741200123','1000','cristf',111111,'21061970'),
 (39,'jose da silva','qualidade','assistente','2156987410','05874125469','1000','joses',111111,'21041970');
/*!40000 ALTER TABLE `funcionarios` ENABLE KEYS */;


--
-- Definition of table `projetos`
--

DROP TABLE IF EXISTS `projetos`;
CREATE TABLE `projetos` (
  `numero` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(15) DEFAULT NULL,
  `dataInicio` varchar(10) DEFAULT NULL,
  `dataConclusao` varchar(10) DEFAULT NULL,
  `statusDoProjeto` varchar(15) DEFAULT NULL,
  `matFunc` int(11) NOT NULL,
  PRIMARY KEY (`numero`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `projetos`
--

/*!40000 ALTER TABLE `projetos` DISABLE KEYS */;
INSERT INTO `projetos` (`numero`,`nome`,`dataInicio`,`dataConclusao`,`statusDoProjeto`,`matFunc`) VALUES 
 (1,'edf','12012010','12072010','Concluido',1),
 (2,'edf','12012010','12072010','Concluido',1),
 (3,'fgi','12022010','12052010','Concluido',1),
 (4,'ftr','21052010','23062011','Concluido',1),
 (5,'jpt','20042010','23062010','Concluido',1),
 (8,'pad','04042010','04052010','Em Andamento',1),
 (9,'pad','20102010','20102010','Em Andamento',1),
 (10,'pad','21052100','25142000','Em Andamento',1),
 (11,'tre','09052010','15052010','Em Andamento',10),
 (12,'lde','01012010','21122010','Em Andamento',13),
 (13,'lmi','01012010','12070210','Em Andamento',12),
 (14,'pac2','01052010','09062010','Em Andamento',12),
 (15,'tts','21032010','21092010','Em Andamento',11),
 (16,'cec','01012010','01012011','Em Andamento',11),
 (18,'tfg','21032010','21082010','Em Andamento',12),
 (24,'ttr','21052010','21102010','Em Andamento',10);
/*!40000 ALTER TABLE `projetos` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;