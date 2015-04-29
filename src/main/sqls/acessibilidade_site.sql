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
INSERT INTO `site` VALUES ('4shared.com','Internet and Telecom > File Sharing',NULL),('abril.com.br','News and Media',NULL),('alibaba.com','Shopping',NULL),('aliexpress.com','Shopping',NULL),('amazon.com','Shopping',NULL),('americanas.com.br','Shopping',NULL),('apple.com','Computer and Electronics > Consumer Electronics',NULL),('badoo.com','Internet and Telecom > Social Network',NULL),('baixaki.com.br','Computer and Electronics > Software',NULL),('bb.com.br','Finance > Banking',NULL),('bing.com','Internet and Telecom > Search Engine',NULL),('blogosfera.uol.com.br','People and Society',NULL),('bol.uol.com.br','News and Media',NULL),('booking.com','Travel > Accommodation and Hotels',NULL),('bradesco.com.br','Finance > Banking',NULL),('buscape.com.br','Shopping > Classifieds',NULL),('caixa.gov.br','Finance > Banking',NULL),('casasbahia.com.br','Shopping',NULL),('catracalivre.com.br','Arts and Entertainment',NULL),('clickjogos.com.br','Games > Online',NULL),('clicrbs.com.br','News and Media',NULL),('correios.com.br','Business and Industry',NULL),('decolar.com','Travel > Accommodation and Hotels',NULL),('dropbox.com','Internet and Telecom > File Sharing',NULL),('ebay.com','Shopping',NULL),('economia.uol.com.br','News and Media',NULL),('ego.globo.com','News and Media',NULL),('espn.uol.com.br','News and Media > Sports News',NULL),('esporte.uol.com.br','Sports',NULL),('estadao.com.br','News and Media > Newspapers',NULL),('exame.abril.com.br','News and Media > Newspapers',NULL),('extra.com.br','Shopping',NULL),('facebook.com','Internet and Telecom > Social Network',NULL),('fazenda.gov.br','Law and Government > Government',NULL),('filmesonlinegratis.net','Arts and Entertainment > Movies',NULL),('folha.uol.com.br','News and Media > Newspapers',NULL),('g1.globo.com','News and Media',NULL),('globo.com','News and Media',NULL),('globoesporte.globo.com','Sports',NULL),('google.com','Internet and Telecom > Search Engine',NULL),('google.com.br','Internet and Telecom > Search Engine',NULL),('hotelurbano.com.br','Travel > Accommodation and Hotels',NULL),('ig.com.br','News and Media',NULL),('imdb.com','Arts and Entertainment > Movies',NULL),('info.abril.com.br','News and Media > Newspapers',NULL),('instagram.com','Internet and Telecom > Social Network',NULL),('itau.com.br','Finance > Banking',NULL),('jusbrasil.com.br','Law and Government > Law',NULL),('kickass.to','Internet and Telecom > File Sharing',NULL),('letras.mus.br','Arts and Entertainment > Music and Audio',NULL),('linkedin.com','Internet and Telecom > Social Network',NULL),('livrariasaraiva.com.br','Shopping',NULL),('magazineluiza.com.br','Shopping',NULL),('mdemulher.abril.com.br','News and Media',NULL),('megafilmeshd.net','Arts and Entertainment > Movies',NULL),('megaoferta.net','Shopping > Classifieds',NULL),('mercadolivre.com.br','Shopping',NULL),('microsoft.com','Computer and Electronics > Software',NULL),('msn.com','News and Media',NULL),('netshoes.com.br','Shopping > Sports',NULL),('noticias.uol.com.br','News and Media',NULL),('odia.ig.com.br','News and Media',NULL),('oglobo.globo.com','News and Media > Newspapers',NULL),('oi.com.br','Internet and Telecom',NULL),('olx.com.br','Shopping > Classifieds',NULL),('pagseguro.uol.com.br','Finance > Financial Management',NULL),('parperfeito.com.br','Adult',NULL),('paypal.com','Finance > Financial Management',NULL),('pinterest.com','Internet and Telecom > Social Network',NULL),('pontofrio.com.br','Shopping',NULL),('portaleducacao.com.br','Career and Education > Education',NULL),('prefeitura.sp.gov.br','Law and Government > Government',NULL),('r7.com','News and Media',NULL),('receita.fazenda.gov.br','Law and Government > Government',NULL),('reclameaqui.com.br','Business and Industry',NULL),('santander.com.br','Finance > Banking',NULL),('slideshare.net','Internet and Telecom > Chats and Forums',NULL),('stackoverflow.com','Computer and Electronics > Programming',NULL),('submarino.com.br','Shopping',NULL),('techtudo.com.br','News and Media > Technology News',NULL),('tecmundo.com.br','News and Media > Technology News',NULL),('televisao.uol.com.br','Arts and Entertainment > TV and Video',NULL),('terra.com.br','News and Media',NULL),('tesouro.fazenda.gov.br','Law and Government > Government',NULL),('twitter.com','Internet and Telecom > Social Network',NULL),('uol.com.br','News and Media',NULL),('vagalume.com.br','Arts and Entertainment > Music and Audio',NULL),('veja.abril.com.br','News and Media > Newspapers',NULL),('vejasp.abril.com.br','News and Media > Newspapers',NULL),('vivo.com.br','Internet and Telecom > Telecommunications',NULL),('walmart.com.br','Shopping',NULL),('whatsapp.com','Computer and Electronics > Software',NULL),('wikipedia.org','Reference > Dictionaries and Encyclopedias',NULL),('wordpress.com','Internet and Telecom',NULL),('www.fazenda.sp.gov.br','Law and Government > Government',NULL),('www.nfe.fazenda.gov.br','Law and Government > Government',NULL),('xhamster.com','Adult',NULL),('xvideos.com','Adult',NULL),('yahoo.com','News and Media',NULL),('youtube.com','Arts and Entertainment > TV and Video',NULL);
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

-- Dump completed on 2015-04-29 17:21:03
