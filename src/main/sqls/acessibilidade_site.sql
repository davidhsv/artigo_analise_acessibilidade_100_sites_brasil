-- MySQL dump 10.13  Distrib 5.6.23, for Win64 (x86_64)
--
-- Host: localhost    Database: acessibilidade
-- ------------------------------------------------------
-- Server version	5.6.24-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `site`
--

DROP TABLE IF EXISTS `site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `site` (
  `site_url` varchar(90) NOT NULL,
  `categoria` varchar(300) DEFAULT NULL,
  `usa_aria` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`site_url`),
  UNIQUE KEY `url_site_UNIQUE` (`site_url`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site`
--

LOCK TABLES `site` WRITE;
/*!40000 ALTER TABLE `site` DISABLE KEYS */;
INSERT INTO `site` VALUES ('4shared.com','Internet and Telecom > File Sharing','false'),('abril.com.br','News and Media','false'),('alibaba.com','Shopping','false'),('aliexpress.com','Shopping','false'),('amazon.com','Shopping','true'),('americanas.com.br','Shopping','true'),('apple.com','Computer and Electronics > Consumer Electronics','true'),('ask.com','Internet and Telecom > Search Engine','false'),('badoo.com','Internet and Telecom > Social Network','false'),('baixaki.com.br','Computer and Electronics > Software','false'),('bb.com.br','Finance > Banking','false'),('bing.com','Internet and Telecom > Search Engine','true'),('blogosfera.uol.com.br','People and Society','false'),('bol.uol.com.br','News and Media','false'),('booking.com','Travel > Accommodation and Hotels','true'),('bradesco.com.br','Finance > Banking','false'),('buscape.com.br','Shopping > Classifieds','false'),('caixa.gov.br','Finance > Banking','false'),('casasbahia.com.br','Shopping','false'),('catracalivre.com.br','Arts and Entertainment','true'),('clickjogos.com.br','Games > Online','false'),('clicrbs.com.br','News and Media','false'),('correios.com.br','Business and Industry','false'),('decolar.com','Travel > Accommodation and Hotels','false'),('dropbox.com','Internet and Telecom > File Sharing','false'),('ebay.com','Shopping','true'),('economia.uol.com.br','News and Media','true'),('ego.globo.com','News and Media','false'),('espn.uol.com.br','News and Media > Sports News','true'),('esporte.uol.com.br','Sports','true'),('estadao.com.br','News and Media > Newspapers','false'),('exame.abril.com.br','News and Media > Newspapers','false'),('extra.com.br','Shopping','false'),('facebook.com','Internet and Telecom > Social Network','true'),('fazenda.gov.br','Law and Government > Government','false'),('filmesonlinegratis.net','Arts and Entertainment > Movies','false'),('folha.uol.com.br','News and Media > Newspapers','true'),('g1.globo.com','News and Media','false'),('globo.com','News and Media','false'),('globoesporte.globo.com','Sports','false'),('google.com','Internet and Telecom > Search Engine','true'),('google.com.br','Internet and Telecom > Search Engine','true'),('hotelurbano.com.br','Travel > Accommodation and Hotels','true'),('ig.com.br','News and Media','false'),('imdb.com','Arts and Entertainment > Movies','false'),('info.abril.com.br','News and Media > Newspapers','true'),('instagram.com','Internet and Telecom > Social Network','true'),('itau.com.br','Finance > Banking','true'),('jusbrasil.com.br','Law and Government > Law','false'),('kickass.to','Internet and Telecom > File Sharing','false'),('letras.mus.br','Arts and Entertainment > Music and Audio','false'),('linkedin.com','Internet and Telecom > Social Network','true'),('livrariasaraiva.com.br','Shopping','false'),('magazineluiza.com.br','Shopping','false'),('mdemulher.abril.com.br','News and Media','true'),('megafilmeshd.net','Arts and Entertainment > Movies','false'),('megaoferta.net','Shopping > Classifieds','false'),('mercadolivre.com.br','Shopping','true'),('microsoft.com','Computer and Electronics > Software','true'),('msn.com','News and Media','true'),('netshoes.com.br','Shopping > Sports','true'),('noticias.uol.com.br','News and Media','true'),('odia.ig.com.br','News and Media','false'),('oglobo.globo.com','News and Media > Newspapers','false'),('oi.com.br','Internet and Telecom','false'),('olx.com.br','Shopping > Classifieds','true'),('pagseguro.uol.com.br','Finance > Financial Management','false'),('parperfeito.com.br','Adult','false'),('paypal.com','Finance > Financial Management','true'),('pinterest.com','Internet and Telecom > Social Network','false'),('pontofrio.com.br','Shopping','false'),('portaleducacao.com.br','Career and Education > Education','false'),('prefeitura.sp.gov.br','Law and Government > Government','true'),('r7.com','News and Media','false'),('receita.fazenda.gov.br','Law and Government > Government','false'),('reclameaqui.com.br','Business and Industry','false'),('santander.com.br','Finance > Banking','false'),('slideshare.net','Internet and Telecom > Chats and Forums','true'),('stackoverflow.com','Computer and Electronics > Programming','false'),('submarino.com.br','Shopping','true'),('techtudo.com.br','News and Media > Technology News','false'),('tecmundo.com.br','News and Media > Technology News','false'),('televisao.uol.com.br','Arts and Entertainment > TV and Video','true'),('terra.com.br','News and Media','false'),('tesouro.fazenda.gov.br','Law and Government > Government','true'),('twitter.com','Internet and Telecom > Social Network','true'),('uol.com.br','News and Media','false'),('vagalume.com.br','Arts and Entertainment > Music and Audio','false'),('veja.abril.com.br','News and Media > Newspapers','true'),('vejasp.abril.com.br','News and Media > Newspapers','true'),('vivo.com.br','Internet and Telecom > Telecommunications','true'),('walmart.com.br','Shopping','false'),('whatsapp.com','Computer and Electronics > Software','false'),('wikipedia.org','Reference > Dictionaries and Encyclopedias','false'),('wordpress.com','Internet and Telecom','true'),('www.fazenda.sp.gov.br','Law and Government > Government','false'),('www.nfe.fazenda.gov.br','Law and Government > Government','false'),('xhamster.com','Adult','false'),('xvideos.com','Adult','false'),('yahoo.com','News and Media','true'),('youtube.com','Arts and Entertainment > TV and Video','true');
/*!40000 ALTER TABLE `site` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-04-30 16:18:26
