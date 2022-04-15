SET FOREIGN_KEY_CHECKS=0;

CREATE DATABASE IF NOT EXISTS bibliotecauni;

USE bibliotecauni;

DROP TABLE IF EXISTS acervo;

CREATE TABLE `acervo` (
  `id_acervo` int(10) NOT NULL,
  `clasificacion` varchar(20) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `autor` varchar(100) DEFAULT NULL,
  `editorial` varchar(50) DEFAULT NULL,
  `cantidad` smallint(6) DEFAULT 1,
  `descripcion` varchar(200) DEFAULT NULL,
  `seccion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_acervo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO acervo VALUES("0","icidjo/ieie/1.2","elmo","gukke","plaza sezamo","1","pro","Donacion");



DROP TABLE IF EXISTS administrador_biblioteca;

CREATE TABLE `administrador_biblioteca` (
  `id_bibliotecario` int(10) NOT NULL AUTO_INCREMENT,
  `user` varchar(40) NOT NULL,
  `pass` varchar(150) NOT NULL,
  `id_extreme` varchar(50) NOT NULL,
  PRIMARY KEY (`id_bibliotecario`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

INSERT INTO administrador_biblioteca VALUES("3","carlos","ab5e2bca84933118bbc9d48ffaccce3bac4eeb64","");
INSERT INTO administrador_biblioteca VALUES("4","elier","8af8cd209bfe5b981ac7ce0e4c8e55464aceb494","");
INSERT INTO administrador_biblioteca VALUES("5","javier","828c1a17681e8566a17a1a4801ea67306010b273","");
INSERT INTO administrador_biblioteca VALUES("6","eduardo","81f705dc2ce1a61a2621e0e4b442a9474e1d0c70","");
INSERT INTO administrador_biblioteca VALUES("7","admin","d033e22ae348aeb5660fc2140aec35850c4da997","");
INSERT INTO administrador_biblioteca VALUES("8","jorge","123456","");
INSERT INTO administrador_biblioteca VALUES("9","Jorge","97f627c1306a915b474fa5d26a0eeeae6191ad15","");



DROP TABLE IF EXISTS categorias;

CREATE TABLE `categorias` (
  `id_categoria` int(10) NOT NULL AUTO_INCREMENT,
  `nombre_categoria` varchar(50) NOT NULL,
  `id_subcategoria` int(10) DEFAULT NULL,
  PRIMARY KEY (`id_categoria`),
  KEY `id_subcategoria` (`id_subcategoria`),
  CONSTRAINT `categorias_ibfk_1` FOREIGN KEY (`id_subcategoria`) REFERENCES `subcategorias` (`id_subcategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

INSERT INTO categorias VALUES("1","Programacion Avanzada II","3");
INSERT INTO categorias VALUES("2","Aplicaciones web","2");
INSERT INTO categorias VALUES("4","Estadisticas","2");
INSERT INTO categorias VALUES("8","Python 3","2");
INSERT INTO categorias VALUES("9","PHP avanzado","4");
INSERT INTO categorias VALUES("10","HTML 5","3");
INSERT INTO categorias VALUES("11","Base de datos","2");
INSERT INTO categorias VALUES("12","Ingenieria de Sistemas","3");
INSERT INTO categorias VALUES("13","Informatica","2");



DROP TABLE IF EXISTS comentarios;

CREATE TABLE `comentarios` (
  `id_comentario` int(10) NOT NULL AUTO_INCREMENT,
  `remitente` varchar(50) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `asunto` varchar(50) NOT NULL,
  `mensaje` varchar(250) NOT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY (`id_comentario`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

INSERT INTO comentarios VALUES("2","Elier Javier Rocha","elier.aries@gmail.com","Prueba","Esto es una prueba","2016-02-05");
INSERT INTO comentarios VALUES("3","Elier Javier Rocha Solano","elier.aries@gmail.com","Saludos","Hola","2018-09-15");
INSERT INTO comentarios VALUES("4","Juan Jose Gomez","juan.alvarez@gmail.com","Saludos","Hola jujo","2018-10-28");
INSERT INTO comentarios VALUES("5","Amber vita","Speedforce_flash@hotmail.com","Queja","no hay wifi","2022-01-20");



DROP TABLE IF EXISTS libros;

CREATE TABLE `libros` (
  `id_libro` int(10) NOT NULL AUTO_INCREMENT,
  `foto` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `nombre` varchar(255) CHARACTER SET latin1 NOT NULL,
  `descripcion` varchar(255) CHARACTER SET latin1 NOT NULL,
  `disponible` varchar(2) CHARACTER SET latin1 NOT NULL,
  `id_categoria` int(10) NOT NULL,
  `id_subcategoria` int(10) NOT NULL,
  `id_proveedor` int(10) NOT NULL,
  `fecha_ingreso` date DEFAULT NULL,
  `url_descarga` varchar(250) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`id_libro`),
  KEY `id_categoria` (`id_categoria`),
  KEY `id_proveedor` (`id_proveedor`),
  CONSTRAINT `libros_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_categoria`),
  CONSTRAINT `libros_ibfk_2` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedor` (`id_proveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;

INSERT INTO libros VALUES("3","images/mysql.jpg","Mysql Version Avanzada","Para crear aplicaciones dinamicas","no","2","2","2","2016-01-07","http://mediafire.com/id=203044");
INSERT INTO libros VALUES("4","images/product2.jpg","HTML5 2da Edicion","Para crear aplicaciones dinamicas","no","2","1","1","2016-01-07","http://mediafire.com/id=203044");
INSERT INTO libros VALUES("5","images/product1.jpg","Java 8","Libro de Programacion","si","1","1","1","2016-01-06","http://mega.co.nz/sldldldlffkf");
INSERT INTO libros VALUES("6","images/product5.jpg","ASP.NET 2019","Crea aplicaciones dinamicas","no","2","1","1","2016-01-07","http://mega.co.nz/sldldldlffkf");
INSERT INTO libros VALUES("8","images/product6.jpg","Ajax","lenguaje de programacion","no","2","1","1","2016-01-07","http://mediafire.com/id=203044");
INSERT INTO libros VALUES("9","images/product4.jpg","JQuery 2da Edicion","Sincronizacion con la base de datos","no","2","1","2","2016-01-14","http://mediafire.com/id=203044");
INSERT INTO libros VALUES("10","images/php.jpg","PHP","Para crear aplicaciones dinamicas","no","2","1","1","2016-01-07","http://mediafire.com/id=203044");
INSERT INTO libros VALUES("11","images/pyton.jpg","Python","Para crear aplicaciones dinamicas","no","1","1","1","2016-01-07","http://mediafire.com/id=203044");
INSERT INTO libros VALUES("12","images/visualbasic.jpg","Visual Basic","Libro de Programacion","no","1","1","1","2016-01-06","http://mega.co.nz/sldldldlffkf");
INSERT INTO libros VALUES("13","images/java7.jpg","Java 7","Crea aplicaciones dinamicas","si","1","1","1","2016-01-07","http://mega.co.nz/sldldldlffkf");
INSERT INTO libros VALUES("16","images/javascript.jpg","JavaScript para principiantes","Excelente libro para aprender Javascript","si","2","8","2","2016-02-05","http://mega.co.nz/sldldldlffkf");
INSERT INTO libros VALUES("17","images/csharp.jpg","C# Avanzado","para programacion","si","1","2","2","2016-02-05","http://mega.co.nz/sldldldlffkf");
INSERT INTO libros VALUES("18","images/db1.jpg","Postgre Sql","Para almacenar datos","si","11","1","1","2016-01-07","http://mediafire.com/id=203044");
INSERT INTO libros VALUES("19","images/db2.jpg","SYBAse","Para almacenar datos","no","11","1","1","2016-01-07","http://mediafire.com/id=203044");
INSERT INTO libros VALUES("20","images/db3.jpg","dBASE III","Para almacenar datos","si","11","1","1","2016-01-06","http://mega.co.nz/sldldldlffkf");
INSERT INTO libros VALUES("21","images/db4.jpg","IBM Informix","Para almacenar datos","no","11","1","1","2016-01-07","http://mega.co.nz/sldldldlffkf");
INSERT INTO libros VALUES("22","images/db5.jpg","SQL Server 2012","Para almacenar datos","si","11","1","1","2016-01-07","http://mediafire.com/id=203044");
INSERT INTO libros VALUES("23","images/db6.jpg","Oracle 11g","Para almacenar datos","si","11","1","2","2016-01-14","http://mediafire.com/id=203044");
INSERT INTO libros VALUES("24","images/sistemas1.jpg","Libro de Sistemas","Para aprender mas","si","12","1","1","2016-01-07","http://mediafire.com/id=203044");
INSERT INTO libros VALUES("25","images/sistemas2.jpg","Libro de Sistemas","Para aprender mas","no","12","1","1","2016-01-07","http://mediafire.com/id=203044");
INSERT INTO libros VALUES("26","images/sistemas3.jpg","Libro de Sistemas","Para aprender mas","si","12","1","1","2016-01-06","http://mega.co.nz/sldldldlffkf");
INSERT INTO libros VALUES("27","images/sistemas4.jpg","Libro de Sistemas","Para aprender mas","no","12","1","1","2016-01-07","http://mega.co.nz/sldldldlffkf");
INSERT INTO libros VALUES("28","images/sistemas5.jpg","Libro de Sistemas","Para aprender mas","si","12","1","1","2016-01-07","http://mediafire.com/id=203044");
INSERT INTO libros VALUES("29","images/sistemas6.jpg","Libro de Sistemas","Para aprender mas","si","12","1","2","2016-01-14","http://mediafire.com/id=203044");
INSERT INTO libros VALUES("30","images/informatica1.jpg","Libro de informatica","Para aprender mas","si","13","1","1","2016-01-07","http://mediafire.com/id=203044");
INSERT INTO libros VALUES("31","images/informatica2.jpg","Libro de informatica","Para aprender mas","no","13","1","1","2016-01-07","http://mediafire.com/id=203044");
INSERT INTO libros VALUES("32","images/informatica3.jpg","Libro de informatica","Para aprender mas","si","13","1","1","2016-01-06","http://mega.co.nz/sldldldlffkf");
INSERT INTO libros VALUES("33","images/informatica4.jpg","Libro de informatica avanzaa","Para aprender mas rapido","si","12","2","2","2016-01-12","http://mega.co.nz/sldldldlffkfd");
INSERT INTO libros VALUES("35","images/informatica6.jpg","Libro de informatica","Para aprender mas","si","13","1","2","2016-01-14","http://mediafire.com/id=203044");
INSERT INTO libros VALUES("37","images/mysql.jpg","Libro de SQL Server 23456","Es de buena calidad","si","1","1","1","2018-09-28","www.googledrive.com");
INSERT INTO libros VALUES("38","data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD","El principito","Cuento ligero","si","2","1","1","2022-01-24","http://bibliotecadigital.ilce.edu.mx/Colecciones/ObrasClasicas/_docs/ElPrincipito.pdf");
INSERT INTO libros VALUES("55","images/4.jpg","v","v","si","1","2","1","2022-01-25","v");
INSERT INTO libros VALUES("57","images/MINIA.png","l","l","si","1","1","1","2022-01-26","l");
INSERT INTO libros VALUES("58","images/vegetitaaa.png","o","o","si","1","1","1","2022-01-20","o");
INSERT INTO libros VALUES("59","images/certif.png","y","y","si","1","1","1","2021-12-31","y");



DROP TABLE IF EXISTS pdf;

CREATE TABLE `pdf` (
  `id_pdf` int(10) NOT NULL AUTO_INCREMENT,
  `id_libro` int(10) NOT NULL,
  `titulo` varchar(150) DEFAULT NULL,
  `descripcion` mediumtext DEFAULT NULL,
  `tamanio` int(10) unsigned DEFAULT NULL,
  `tipo` varchar(150) DEFAULT NULL,
  `nombre_archivo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_pdf`),
  KEY `id_libro` (`id_libro`),
  CONSTRAINT `pdf_ibfk_1` FOREIGN KEY (`id_libro`) REFERENCES `libros` (`id_libro`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

INSERT INTO pdf VALUES("1","5","javascript","Buen Libro","13311","application/pdf","libro.pdf");
INSERT INTO pdf VALUES("2","3","Mysql Avanzado","Para conectar base de datos","970475","application/pdf","libro.pdf");
INSERT INTO pdf VALUES("3","4","HTML 5","Para aplicaciones web","635134","application/pdf","libro.pdf");
INSERT INTO pdf VALUES("4","5","Java Enterprise Edition","Para aplicaciones moviles y de escritorio","294261","application/pdf","libro.pdf");
INSERT INTO pdf VALUES("5","9","Jquery","Sincronizacion con el servidor","405398","application/pdf","libro.pdf");
INSERT INTO pdf VALUES("6","10","php","Buen Libro","13311","application/pdf","libro.pdf");
INSERT INTO pdf VALUES("7","11","pyton","Para conectar base de datos","970475","application/pdf","libro.pdf");
INSERT INTO pdf VALUES("8","12","Visual Basic","Para aplicaciones web","635134","application/pdf","libro.pdf");
INSERT INTO pdf VALUES("9","6","Asp. Net","Para aplicaciones moviles y de escritorio","294261","application/pdf","libro.pdf");
INSERT INTO pdf VALUES("10","17","C#","Sincronizacion con el servidor","405398","application/pdf","libro.pdf");
INSERT INTO pdf VALUES("11","3","mysql","dkdkff","171766","application/pdf","libro.pdf");
INSERT INTO pdf VALUES("12","3","mysql","dkdkff","171766","application/pdf","libro.pdf");
INSERT INTO pdf VALUES("13","3","mysql","dkdkff","171766","application/pdf","libro.pdf");
INSERT INTO pdf VALUES("14","3","mysql","dkdkff","171766","application/pdf","libro.pdf");
INSERT INTO pdf VALUES("15","4","HTML 5","bueno","171766","application/pdf","libro.pdf");
INSERT INTO pdf VALUES("16","17","C# Avanzado","bueno","171766","application/pdf","libro.pdf");
INSERT INTO pdf VALUES("17","30","informatica2","bueno","171766","application/pdf","libro.pdf");
INSERT INTO pdf VALUES("18","31","dkfk","dkkf","171766","application/pdf","libro.pdf");
INSERT INTO pdf VALUES("19","28","prueba","bueno","171766","application/pdf","libro.pdf");
INSERT INTO pdf VALUES("20","8","Libro pdf de ajax","es bueno","403835","application/pdf","art08.pdf");
INSERT INTO pdf VALUES("21","9","Libro de Ejemplo para Angel","Es de buena calidad","915929","application/pdf","slidex.tips_catalogo-de-celulares.pdf");
INSERT INTO pdf VALUES("22","6","Prueba de libro con nivel avanzado","Es una prueba de nivel avanzado 12 de Noviembre","98304","application/pdf","tabla_caracteres-ASCII.pdf");
INSERT INTO pdf VALUES("23","38","Prueba","este es un ejemplo de archivos complejo","337131","application/pdf","Curriculim Vitae.pdf");
INSERT INTO pdf VALUES("24","8","Este es pryeba","haber si sirve","174246","application/pdf","carta compromiso (1).pdf");



DROP TABLE IF EXISTS prestamo_libro;

CREATE TABLE `prestamo_libro` (
  `id_prestamo` int(100) NOT NULL AUTO_INCREMENT,
  `fecha_prestamo` date NOT NULL,
  `fecha_entrega` date NOT NULL,
  `id_libro` int(10) NOT NULL,
  `id_usuario_estudiante` int(10) NOT NULL,
  `estado` int(10) NOT NULL,
  PRIMARY KEY (`id_prestamo`),
  KEY `id_libro` (`id_libro`),
  KEY `id_usuario_estudiante` (`id_usuario_estudiante`),
  CONSTRAINT `prestamo_libro_ibfk_1` FOREIGN KEY (`id_libro`) REFERENCES `libros` (`id_libro`),
  CONSTRAINT `prestamo_libro_ibfk_2` FOREIGN KEY (`id_usuario_estudiante`) REFERENCES `usuario_estudiante` (`id_usuario_estudiante`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

INSERT INTO prestamo_libro VALUES("1","2016-02-07","2016-02-23","3","1","1");
INSERT INTO prestamo_libro VALUES("2","2016-02-07","2016-02-10","33","2","1");
INSERT INTO prestamo_libro VALUES("15","2016-02-07","2016-02-08","32","1","1");
INSERT INTO prestamo_libro VALUES("16","2016-02-07","2016-02-08","32","1","0");
INSERT INTO prestamo_libro VALUES("17","2018-10-05","2018-10-26","32","1","1");
INSERT INTO prestamo_libro VALUES("18","2018-10-12","2018-10-18","3","8","1");
INSERT INTO prestamo_libro VALUES("19","2018-11-08","2018-11-22","4","8","1");
INSERT INTO prestamo_libro VALUES("20","2018-11-08","2018-11-22","4","8","1");
INSERT INTO prestamo_libro VALUES("21","2022-01-24","2022-01-28","38","2","1");



DROP TABLE IF EXISTS proveedor;

CREATE TABLE `proveedor` (
  `id_proveedor` int(10) NOT NULL AUTO_INCREMENT,
  `nombre_proveedor` varchar(50) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `telefono` int(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  PRIMARY KEY (`id_proveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO proveedor VALUES("1","Libreria COPASA","Managgua","234955","gomper23@gmail.com");
INSERT INTO proveedor VALUES("2","Libreria COPASA","Managgua","234955","gomper23@gmail.com");



DROP TABLE IF EXISTS registrousuarios;

CREATE TABLE `registrousuarios` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Fecha` date NOT NULL,
  `Nombre` varchar(200) NOT NULL,
  `Edad` int(11) NOT NULL,
  `Genero` varchar(1) NOT NULL,
  `Area` varchar(100) NOT NULL,
  `Temperatura` float NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

INSERT INTO registrousuarios VALUES("1","2022-01-21","Jorge Perez Morales","23","M","General-Infantil","36.1");
INSERT INTO registrousuarios VALUES("2","2022-01-21","Jorge Mora","23","H","Centro-de-computo","35.3");
INSERT INTO registrousuarios VALUES("5","2022-01-21","Jorge","12","H","General-Infantil","35.6");
INSERT INTO registrousuarios VALUES("6","2022-01-21","Jorge","33","H","Centro-de-computo","36.5");
INSERT INTO registrousuarios VALUES("7","2022-01-29","Raul Alonso jimenez","29","H","General-Infantil","36.3");



DROP TABLE IF EXISTS subcategorias;

CREATE TABLE `subcategorias` (
  `id_subcategoria` int(10) NOT NULL AUTO_INCREMENT,
  `nombre_subcategoria` varchar(50) NOT NULL,
  PRIMARY KEY (`id_subcategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

INSERT INTO subcategorias VALUES("1","C");
INSERT INTO subcategorias VALUES("2","C#");
INSERT INTO subcategorias VALUES("3","C++");
INSERT INTO subcategorias VALUES("4","php");
INSERT INTO subcategorias VALUES("5","java");
INSERT INTO subcategorias VALUES("6","python");
INSERT INTO subcategorias VALUES("7","html");
INSERT INTO subcategorias VALUES("8","Javascript 3");



DROP TABLE IF EXISTS suscriptores;

CREATE TABLE `suscriptores` (
  `id_suscriptor` int(10) NOT NULL AUTO_INCREMENT,
  `nombre_completo` varchar(30) DEFAULT NULL,
  `correo` varchar(30) NOT NULL,
  `observaciones` varchar(200) DEFAULT NULL,
  `fecha_suscripcion` date DEFAULT NULL,
  PRIMARY KEY (`id_suscriptor`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

INSERT INTO suscriptores VALUES("4","Elli","elier.aries@gmail.com","nada","2016-01-08");
INSERT INTO suscriptores VALUES("5","carlos jose","carloslslslsl","nada","2016-01-08");
INSERT INTO suscriptores VALUES("6","german","german@gmail.com","nada","2016-01-08");
INSERT INTO suscriptores VALUES("13","Carlos","elier.aries@gmail.com","nada","2018-09-14");
INSERT INTO suscriptores VALUES("15","Jose Roa","neltonelcerebro@gmail.com","nada","2018-09-14");



DROP TABLE IF EXISTS usuario_estudiante;

CREATE TABLE `usuario_estudiante` (
  `id_usuario_estudiante` int(10) NOT NULL AUTO_INCREMENT,
  `carnet` varchar(15) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `apellidos` varchar(40) NOT NULL,
  `email` varchar(30) NOT NULL,
  `anio` varchar(10) NOT NULL,
  `carrera` varchar(30) NOT NULL,
  PRIMARY KEY (`id_usuario_estudiante`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

INSERT INTO usuario_estudiante VALUES("1","2012-43355","Elier Javier","Rocha","elier.aries@gmail.com","2do.","Ingenieria de Sistemas");
INSERT INTO usuario_estudiante VALUES("2","2012-43356","Alex ","jarquin","alexjqr@gmail.com","5to.","Ingenieria Civil");
INSERT INTO usuario_estudiante VALUES("6","2012-4356","Juan Carlos","perez","juanperez@gmail.com","4to.","Ingenieria Agroindustrial");
INSERT INTO usuario_estudiante VALUES("7","2012-0394J","Carlos Jose","Gomez","elier.aries@gmail.com","5to.","Ingenieria de Sistemas");
INSERT INTO usuario_estudiante VALUES("8","2012-0394J","Jaime Jose","Roa","elier.aries@gmail.com","1ro.","Ingenieria de Sistemas");
INSERT INTO usuario_estudiante VALUES("9","16011179","jorge","perez","a","1ro.","Ingenieria de Sistemas");



DROP TABLE IF EXISTS usuarios;

CREATE TABLE `usuarios` (
  `ID` int(9) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(180) DEFAULT NULL,
  `password` varchar(180) DEFAULT NULL,
  `email` varchar(180) DEFAULT NULL,
  `id_extreme` varchar(180) DEFAULT NULL,
  `rol` varchar(15) NOT NULL,
  `foto` varchar(50) DEFAULT NULL,
  `imagen` blob DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

INSERT INTO usuarios VALUES("10","elier","elier123","elier.aries@gmail.com","","admin","","");
INSERT INTO usuarios VALUES("11","oaxaca","webiweba","jmp@gmail.com","","admin","","");



DROP TABLE IF EXISTS visitantes;

CREATE TABLE `visitantes` (
  `idvisitante` int(11) NOT NULL AUTO_INCREMENT,
  `nombreCompleto` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `usuario` varchar(60) COLLATE utf8_spanish2_ci NOT NULL,
  `pass` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `telefono` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `direccion` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `provincia` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `estadoPais` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `alias` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  `edad` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `sexo` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `pais` varchar(60) COLLATE utf8_spanish2_ci NOT NULL,
  `estado` varchar(1) COLLATE utf8_spanish2_ci NOT NULL,
  `fechaRegistro` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`idvisitante`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

INSERT INTO visitantes VALUES("1","","elier","elier","","","","","","","","","elier123","0","2018-10-22 01:30:13");
INSERT INTO visitantes VALUES("2","","javier","javier","","","","","","","","","javier123","0","2018-10-22 01:30:37");
INSERT INTO visitantes VALUES("3","Elier Javier Rocha Solano","elier","elier123","elier.arie","84076105","Ciudad de Juigalpa","Barrio Nue","Chontales","el","28","Masculino","Nicaragua","1","2018-10-22 01:23:39");
INSERT INTO visitantes VALUES("4","Elier Javier Rocha Solano","aries","aries123","elier.aries@gmail.com","84076105","Ciudad de Juigalpa","Barrio Nuevo Amanecer","Chontales","aries","23","Masculino","MÃ©xico","1","2018-10-22 01:27:55");
INSERT INTO visitantes VALUES("5","Juan Perez","juan","juan123","jose@gmail.com","84076105","Ciudad de Juigalpa","Barrio Nuevo Amanecer","Chontales","juan","45","Masculino","MÃ©xico","0","2018-10-22 02:14:19");
INSERT INTO visitantes VALUES("6","Juan Jose Gomez","jujo","jujo","elier.aries@gmail.com","84076105","Comarca El Cebollin, Comalapa, Chontales","Juigalpa","Chontales","jujo","23","Masculino","Honduras","1","2018-10-28 19:47:28");
INSERT INTO visitantes VALUES("7","Marlon Jose Montano","marlon","12345","marlon@gmail.com","84076105","Ciudad de Juigalpa","Barrio Nuevo Amanecer","Chontales","marlon","34","Masculino","Nicaragua","1","2018-11-13 00:40:06");
INSERT INTO visitantes VALUES("8","Isabella","isabel93","12345","is193@hotmail.com","2381829899","la pro","colon","veracruz","isabel93","12","Femenino","mexico","1","2022-01-23 22:56:55");
INSERT INTO visitantes VALUES("9","Jorge Perez","jmpm","123456","teleteperez@hotmail.com","2721817202","el pro","orizaba","veracruz","jmpm","23","Masculino","Mexico","1","2022-01-24 18:54:45");
INSERT INTO visitantes VALUES("10","Jorge Perez","jmpm","amber1","teleteperez@hotmail.com","2721817202","el pro","orizaba","veracruz","jmpm","33","Masculino","Mexico","1","2022-01-24 18:56:43");
INSERT INTO visitantes VALUES("11","Papu","jmpm","123456","Speedforc2e_flash@hotmail.com","2721817202","el pro","orizaba","veracruz","jmpm","34","Masculino","Mexico","1","2022-01-24 19:07:44");
INSERT INTO visitantes VALUES("12","papijackson","jmpm12","123456","zacatill1o20@hotmail.com","2721817203","el pro","orizaba","veracruz","jmpm12","23","Femenino","Mexico","1","2022-01-24 19:09:17");
INSERT INTO visitantes VALUES("13","barbi","oaxaca","webiweba","bambi29@gmail.com","2721817202","sii","orizaba","veracruz","oaxaca","12","Femenino","Argentina","1","2022-01-24 19:12:15");



DROP TABLE IF EXISTS visitas;

CREATE TABLE `visitas` (
  `utc` int(10) NOT NULL,
  `fecha_visita` date NOT NULL,
  `ip` varchar(50) NOT NULL,
  `navegador` varchar(255) NOT NULL,
  `pagina` varchar(255) NOT NULL,
  PRIMARY KEY (`utc`),
  UNIQUE KEY `utc` (`utc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO visitas VALUES("1642287178","2022-01-15","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642287190","2022-01-15","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642287250","2022-01-15","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36","/biblioteca/inicio.php?cat=1");
INSERT INTO visitas VALUES("1642287252","2022-01-15","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36","/biblioteca/inicio.php?cat=2");
INSERT INTO visitas VALUES("1642287253","2022-01-15","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36","/biblioteca/inicio.php?cat=10");
INSERT INTO visitas VALUES("1642287256","2022-01-15","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36","/biblioteca/inicio.php?cat=12");
INSERT INTO visitas VALUES("1642287259","2022-01-15","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36","/biblioteca/inicio.php?cat=13");
INSERT INTO visitas VALUES("1642287298","2022-01-15","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36","/biblioteca/inicio.php?cat=1");
INSERT INTO visitas VALUES("1642287300","2022-01-15","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36","/biblioteca/inicio.php?cat=4");
INSERT INTO visitas VALUES("1642287346","2022-01-15","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36","/biblioteca/prestamos.php");
INSERT INTO visitas VALUES("1642287369","2022-01-15","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36","/biblioteca/prestamos.php");
INSERT INTO visitas VALUES("1642287371","2022-01-15","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36","/biblioteca/contacto.php");
INSERT INTO visitas VALUES("1642287373","2022-01-15","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36","/biblioteca/contacto.php");
INSERT INTO visitas VALUES("1642287462","2022-01-15","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36","/biblioteca/contacto.php");
INSERT INTO visitas VALUES("1642287464","2022-01-15","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36","/biblioteca/busqueda.php");
INSERT INTO visitas VALUES("1642287470","2022-01-15","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36","/biblioteca/busqueda.php?buscar=principito&enviar=Buscar+Libro");
INSERT INTO visitas VALUES("1642287472","2022-01-15","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36","/biblioteca/busqueda.php");
INSERT INTO visitas VALUES("1642532465","2022-01-18","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642532530","2022-01-18","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36","/biblioteca/busqueda.php");
INSERT INTO visitas VALUES("1642532563","2022-01-18","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36","/biblioteca/contacto.php");
INSERT INTO visitas VALUES("1642532583","2022-01-18","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642691157","2022-01-20","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642691211","2022-01-20","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/contacto.php");
INSERT INTO visitas VALUES("1642691262","2022-01-20","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642691278","2022-01-20","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/libros_programacion.php");
INSERT INTO visitas VALUES("1642691286","2022-01-20","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/libros_programacion.php");
INSERT INTO visitas VALUES("1642691291","2022-01-20","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/contacto.php");
INSERT INTO visitas VALUES("1642691297","2022-01-20","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/busqueda.php");
INSERT INTO visitas VALUES("1642691308","2022-01-20","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/busqueda.php");
INSERT INTO visitas VALUES("1642692215","2022-01-20","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642693130","2022-01-20","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642693136","2022-01-20","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php?cat=1");
INSERT INTO visitas VALUES("1642693149","2022-01-20","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php?cat=1");
INSERT INTO visitas VALUES("1642693485","2022-01-20","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642693489","2022-01-20","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/libros_programacion.php");
INSERT INTO visitas VALUES("1642693492","2022-01-20","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/libros_informatica.php");
INSERT INTO visitas VALUES("1642693494","2022-01-20","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/libros_programacion.php");
INSERT INTO visitas VALUES("1642693503","2022-01-20","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/libros_informatica.php");
INSERT INTO visitas VALUES("1642693507","2022-01-20","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/libros_programacion.php");
INSERT INTO visitas VALUES("1642693632","2022-01-20","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/prestamos.php");
INSERT INTO visitas VALUES("1642693707","2022-01-20","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/prestamos.php");
INSERT INTO visitas VALUES("1642693766","2022-01-20","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/contacto.php");
INSERT INTO visitas VALUES("1642694082","2022-01-20","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/contacto.php");
INSERT INTO visitas VALUES("1642694242","2022-01-20","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/busqueda.php");
INSERT INTO visitas VALUES("1642697772","2022-01-20","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642698022","2022-01-20","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642698692","2022-01-20","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642698713","2022-01-20","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/busqueda.php");
INSERT INTO visitas VALUES("1642698801","2022-01-20","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/busqueda.php");
INSERT INTO visitas VALUES("1642698813","2022-01-20","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/busqueda.php");
INSERT INTO visitas VALUES("1642699901","2022-01-20","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/prestamos.php");
INSERT INTO visitas VALUES("1642719744","2022-01-21","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/contacto.php");
INSERT INTO visitas VALUES("1642719775","2022-01-21","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/contacto.php");
INSERT INTO visitas VALUES("1642719778","2022-01-21","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/busqueda.php");
INSERT INTO visitas VALUES("1642719819","2022-01-21","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/busqueda.php");
INSERT INTO visitas VALUES("1642719832","2022-01-21","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/prestamos.php");
INSERT INTO visitas VALUES("1642719835","2022-01-21","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/libros_programacion.php");
INSERT INTO visitas VALUES("1642785027","2022-01-21","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642785057","2022-01-21","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/busqueda.php");
INSERT INTO visitas VALUES("1642785493","2022-01-21","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642786376","2022-01-21","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642880250","2022-01-22","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642880637","2022-01-22","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642881477","2022-01-22","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642881532","2022-01-22","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642881533","2022-01-22","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642881674","2022-01-22","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642881689","2022-01-22","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642881853","2022-01-22","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642881904","2022-01-22","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642881953","2022-01-22","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642882070","2022-01-22","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642882128","2022-01-22","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642882346","2022-01-22","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642882418","2022-01-22","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642882484","2022-01-22","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642882524","2022-01-22","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642882540","2022-01-22","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642882568","2022-01-22","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642882645","2022-01-22","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642882663","2022-01-22","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642882824","2022-01-22","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642882838","2022-01-22","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642882973","2022-01-22","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642882981","2022-01-22","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642883581","2022-01-22","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642883619","2022-01-22","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642883638","2022-01-22","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642883675","2022-01-22","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642883690","2022-01-22","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642883786","2022-01-22","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642883790","2022-01-22","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642884216","2022-01-22","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642884246","2022-01-22","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642884324","2022-01-22","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642884359","2022-01-22","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642884466","2022-01-22","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642884502","2022-01-22","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642884549","2022-01-22","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642884578","2022-01-22","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642884605","2022-01-22","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642884650","2022-01-22","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642884671","2022-01-22","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642884743","2022-01-22","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642884752","2022-01-22","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642884834","2022-01-22","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642884856","2022-01-22","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642884874","2022-01-22","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642884937","2022-01-22","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642885248","2022-01-22","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642885249","2022-01-22","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642885251","2022-01-22","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642885252","2022-01-22","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642885269","2022-01-22","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642885271","2022-01-22","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642885281","2022-01-22","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642885383","2022-01-22","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642885485","2022-01-22","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642885511","2022-01-22","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642885559","2022-01-22","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642885583","2022-01-22","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642885741","2022-01-22","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642885753","2022-01-22","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642885801","2022-01-22","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642885825","2022-01-22","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642886347","2022-01-22","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642886396","2022-01-22","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642886435","2022-01-22","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642886443","2022-01-22","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642886463","2022-01-22","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642886484","2022-01-22","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642886505","2022-01-22","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642886555","2022-01-22","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642886565","2022-01-22","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642886650","2022-01-22","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642886674","2022-01-22","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642886773","2022-01-22","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642900625","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642900748","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642900750","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642900751","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642900752","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642900753","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642900756","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642900923","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642900925","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642900926","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642900927","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642900969","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642901039","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642901119","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642901120","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642901121","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642901136","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642901137","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642901138","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642901139","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642901170","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642901203","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642901248","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642901450","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642901488","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642901489","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642901496","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642901497","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642901498","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642901512","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642901812","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642906772","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642906820","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642906876","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642906888","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642906905","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642906991","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642907991","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642908270","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642908448","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642908480","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642908838","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642908912","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642908929","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642908967","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642909016","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642909036","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642909080","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642909125","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642909126","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642909187","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642909243","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642909258","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642909269","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642909699","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642909800","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642909807","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642909883","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642909900","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/libros_programacion.php");
INSERT INTO visitas VALUES("1642909904","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/prestamos.php");
INSERT INTO visitas VALUES("1642909906","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/contacto.php");
INSERT INTO visitas VALUES("1642909910","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/busqueda.php");
INSERT INTO visitas VALUES("1642909916","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642910133","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642910147","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642910162","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642910176","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642910189","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642910228","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642910332","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642910416","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642910456","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642910484","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642910508","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642910562","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642910619","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642910689","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642910905","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642911194","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642911232","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642911240","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642911401","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642911454","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642911473","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642911474","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642911588","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642911589","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642911662","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642911727","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642911754","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642911762","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642911779","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642911908","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642912067","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642912103","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642912148","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642912151","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642912157","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642912199","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642912432","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642912794","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642912818","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642912935","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642913223","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642913228","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642913229","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642913244","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642913300","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642913301","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642913319","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642913322","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642913323","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642913324","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642913327","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642913457","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642913533","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642913568","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642913749","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642913831","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642913849","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642913887","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642913908","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/libros_programacion.php");
INSERT INTO visitas VALUES("1642913915","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642965084","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642965138","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642965154","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/prestamos.php");
INSERT INTO visitas VALUES("1642965157","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/prestamos.php");
INSERT INTO visitas VALUES("1642965163","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642965336","2022-01-23","::1","Mozilla/5.0 (iPad; CPU OS 13_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/87.0.4280.77 Mobile/15E148 Safari/604.1","/biblioteca/prestamos.php");
INSERT INTO visitas VALUES("1642965345","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642965462","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642965463","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642965464","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642965484","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642965545","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642965555","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642965803","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642965834","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642965835","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642965836","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642965837","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642965844","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642965845","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642966018","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642966033","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642966252","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642966261","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642966355","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642966426","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642966444","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642966476","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642966628","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642966641","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642966642","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642966658","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642966683","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642966852","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642966859","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642966876","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642966878","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642966983","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642967050","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642967057","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642967059","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642967060","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642967068","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642967141","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642967152","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642967167","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642967188","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642967228","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642967242","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642967247","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642967254","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642967259","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642967283","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642967400","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642967425","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642967468","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642967483","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642967484","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642967551","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/prestamos.php");
INSERT INTO visitas VALUES("1642967561","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/contacto.php");
INSERT INTO visitas VALUES("1642967598","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/busqueda.php");
INSERT INTO visitas VALUES("1642967603","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/contacto.php");
INSERT INTO visitas VALUES("1642967604","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642967676","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642967677","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/libros_programacion.php");
INSERT INTO visitas VALUES("1642967689","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642967935","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642967938","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642967940","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/libros_programacion.php");
INSERT INTO visitas VALUES("1642967942","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/libros_informatica.php");
INSERT INTO visitas VALUES("1642967945","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/libros_sistemas.php");
INSERT INTO visitas VALUES("1642967946","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/libros_sistemas.php");
INSERT INTO visitas VALUES("1642967948","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/libros_bd.php");
INSERT INTO visitas VALUES("1642967951","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/libros_web.php");
INSERT INTO visitas VALUES("1642967966","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/contacto.php");
INSERT INTO visitas VALUES("1642967968","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/busqueda.php");
INSERT INTO visitas VALUES("1642967971","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/contacto.php");
INSERT INTO visitas VALUES("1642968017","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/libros_programacion.php");
INSERT INTO visitas VALUES("1642968025","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/prestamos.php");
INSERT INTO visitas VALUES("1642968029","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/prestamos.php");
INSERT INTO visitas VALUES("1642968054","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/libros_programacion.php");
INSERT INTO visitas VALUES("1642968092","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/libros_bd.php");
INSERT INTO visitas VALUES("1642968118","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/prestamos.php");
INSERT INTO visitas VALUES("1642968121","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/contacto.php");
INSERT INTO visitas VALUES("1642968122","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/busqueda.php");
INSERT INTO visitas VALUES("1642968125","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/libros_programacion.php");
INSERT INTO visitas VALUES("1642968153","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/libros_informatica.php");
INSERT INTO visitas VALUES("1642968163","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/libros_sistemas.php");
INSERT INTO visitas VALUES("1642968178","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/libros_bd.php");
INSERT INTO visitas VALUES("1642968188","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/libros_web.php");
INSERT INTO visitas VALUES("1642968428","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/prestamos.php");
INSERT INTO visitas VALUES("1642968472","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/contacto.php");
INSERT INTO visitas VALUES("1642968569","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/contacto.php");
INSERT INTO visitas VALUES("1642968572","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/busqueda.php");
INSERT INTO visitas VALUES("1642968632","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642968728","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642968731","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/libros_programacion.php");
INSERT INTO visitas VALUES("1642968794","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/libros_programacion.php");
INSERT INTO visitas VALUES("1642968867","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/libros_informatica.php");
INSERT INTO visitas VALUES("1642968944","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/libros_informatica.php");
INSERT INTO visitas VALUES("1642968964","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/libros_programacion.php");
INSERT INTO visitas VALUES("1642968967","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/libros_programacion.php");
INSERT INTO visitas VALUES("1642968972","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/libros_programacion.php");
INSERT INTO visitas VALUES("1642968974","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642969017","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642969020","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/libros_programacion.php");
INSERT INTO visitas VALUES("1642969943","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/libros_programacion.php");
INSERT INTO visitas VALUES("1642969945","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/libros_informatica.php");
INSERT INTO visitas VALUES("1642969953","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/libros_sistemas.php");
INSERT INTO visitas VALUES("1642969994","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/libros_sistemas.php");
INSERT INTO visitas VALUES("1642970193","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/libros_bd.php");
INSERT INTO visitas VALUES("1642970272","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/libros_bd.php");
INSERT INTO visitas VALUES("1642970299","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/libros_web.php");
INSERT INTO visitas VALUES("1642970342","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/libros_web.php");
INSERT INTO visitas VALUES("1642970458","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/libros_web.php");
INSERT INTO visitas VALUES("1642970501","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/libros_web.php");
INSERT INTO visitas VALUES("1642970536","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642970596","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/libros_programacion.php");
INSERT INTO visitas VALUES("1642970601","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/prestamos.php");
INSERT INTO visitas VALUES("1642970634","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/prestamos.php");
INSERT INTO visitas VALUES("1642970649","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642970655","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/prestamos.php");
INSERT INTO visitas VALUES("1642970659","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/contacto.php");
INSERT INTO visitas VALUES("1642970667","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/prestamos.php");
INSERT INTO visitas VALUES("1642970668","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/contacto.php");
INSERT INTO visitas VALUES("1642970690","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/prestamos.php");
INSERT INTO visitas VALUES("1642970919","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/prestamos.php");
INSERT INTO visitas VALUES("1642970921","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/contacto.php");
INSERT INTO visitas VALUES("1642970924","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/contacto.php");
INSERT INTO visitas VALUES("1642971490","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/prestamos.php");
INSERT INTO visitas VALUES("1642971515","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/contacto.php");
INSERT INTO visitas VALUES("1642971521","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/contacto.php");
INSERT INTO visitas VALUES("1642971546","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/prestamos.php");
INSERT INTO visitas VALUES("1642971586","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/contacto.php");
INSERT INTO visitas VALUES("1642971666","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642971668","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/comentarios.php");
INSERT INTO visitas VALUES("1642971723","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/comentarios.php");
INSERT INTO visitas VALUES("1642971727","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/comentarios.php");
INSERT INTO visitas VALUES("1642971750","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/comentarios.php");
INSERT INTO visitas VALUES("1642971823","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/comentarios.php");
INSERT INTO visitas VALUES("1642971879","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/comentarios.php");
INSERT INTO visitas VALUES("1642971899","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/comentarios.php");
INSERT INTO visitas VALUES("1642971921","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/comentarios.php");
INSERT INTO visitas VALUES("1642971957","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/comentarios.php");
INSERT INTO visitas VALUES("1642971984","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/comentarios.php");
INSERT INTO visitas VALUES("1642972038","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642972043","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/comentarios.php");
INSERT INTO visitas VALUES("1642972056","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/comentarios.php");
INSERT INTO visitas VALUES("1642972114","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/comentarios.php");
INSERT INTO visitas VALUES("1642972127","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/comentarios.php");
INSERT INTO visitas VALUES("1642972228","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/comentarios.php");
INSERT INTO visitas VALUES("1642972258","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/comentarios.php");
INSERT INTO visitas VALUES("1642972311","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/comentarios.php");
INSERT INTO visitas VALUES("1642972325","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642972330","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/comentarios.php");
INSERT INTO visitas VALUES("1642972379","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/comentarios.php");
INSERT INTO visitas VALUES("1642972398","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/comentarios.php");
INSERT INTO visitas VALUES("1642972452","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/busqueda.php");
INSERT INTO visitas VALUES("1642972501","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/busqueda.php");
INSERT INTO visitas VALUES("1642972507","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/comentarios.php");
INSERT INTO visitas VALUES("1642972509","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/busqueda.php");
INSERT INTO visitas VALUES("1642974593","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/busqueda.php");
INSERT INTO visitas VALUES("1642974608","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/busqueda.php");
INSERT INTO visitas VALUES("1642974610","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/busqueda.php");
INSERT INTO visitas VALUES("1642974611","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/busqueda.php");
INSERT INTO visitas VALUES("1642974744","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/busqueda.php");
INSERT INTO visitas VALUES("1642974748","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/busqueda.php");
INSERT INTO visitas VALUES("1642974749","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/busqueda.php");
INSERT INTO visitas VALUES("1642974763","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642974767","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/busqueda.php");
INSERT INTO visitas VALUES("1642974776","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642974813","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642974949","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642974951","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/busqueda.php");
INSERT INTO visitas VALUES("1642974953","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/busqueda.php");
INSERT INTO visitas VALUES("1642974956","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/busqueda.php");
INSERT INTO visitas VALUES("1642974981","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/busqueda.php");
INSERT INTO visitas VALUES("1642974985","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642975003","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642975005","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/busqueda.php");
INSERT INTO visitas VALUES("1642975022","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/busqueda.php");
INSERT INTO visitas VALUES("1642975026","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642977049","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/comentarios.php");
INSERT INTO visitas VALUES("1642977054","2022-01-23","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/busqueda.php");
INSERT INTO visitas VALUES("1642981966","2022-01-24","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642982044","2022-01-24","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/prestamos.php");
INSERT INTO visitas VALUES("1642982045","2022-01-24","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/comentarios.php");
INSERT INTO visitas VALUES("1642982047","2022-01-24","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/busqueda.php");
INSERT INTO visitas VALUES("1642982054","2022-01-24","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/comentarios.php");
INSERT INTO visitas VALUES("1642982067","2022-01-24","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642982168","2022-01-24","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642982171","2022-01-24","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642982183","2022-01-24","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642982229","2022-01-24","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642982288","2022-01-24","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642982303","2022-01-24","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642982331","2022-01-24","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642982428","2022-01-24","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642982463","2022-01-24","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642982495","2022-01-24","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642982512","2022-01-24","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642982644","2022-01-24","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642982682","2022-01-24","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642982697","2022-01-24","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642982703","2022-01-24","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642982718","2022-01-24","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642982950","2022-01-24","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642982977","2022-01-24","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/busqueda.php");
INSERT INTO visitas VALUES("1642982978","2022-01-24","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/comentarios.php");
INSERT INTO visitas VALUES("1642982982","2022-01-24","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642985251","2022-01-24","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/bibliotecacouto/inicio.php");
INSERT INTO visitas VALUES("1642985327","2022-01-24","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/bibliotecacouto/inicio.php");
INSERT INTO visitas VALUES("1642985338","2022-01-24","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/bibliotecacouto/inicio.php");
INSERT INTO visitas VALUES("1642991470","2022-01-24","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642992419","2022-01-24","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/bibliotecacouto/inicio.php");
INSERT INTO visitas VALUES("1642992472","2022-01-24","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/bibliotecacouto/inicio.php");
INSERT INTO visitas VALUES("1642992473","2022-01-24","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/bibliotecacouto/inicio.php");
INSERT INTO visitas VALUES("1642992555","2022-01-24","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1642992648","2022-01-24","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/bibliotecacouto/inicio.php");
INSERT INTO visitas VALUES("1642992658","2022-01-24","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/bibliotecacouto/inicio.php");
INSERT INTO visitas VALUES("1642992669","2022-01-24","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/prestamos.php");
INSERT INTO visitas VALUES("1642992726","2022-01-24","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/bibliotecacouto/inicio.php");
INSERT INTO visitas VALUES("1642992727","2022-01-24","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/bibliotecacouto/prestamos.php");
INSERT INTO visitas VALUES("1642992768","2022-01-24","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/bibliotecacouto/inicio.php");
INSERT INTO visitas VALUES("1642992770","2022-01-24","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/bibliotecacouto/prestamos.php");
INSERT INTO visitas VALUES("1642992791","2022-01-24","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/bibliotecacouto/prestamos.php");
INSERT INTO visitas VALUES("1642992793","2022-01-24","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/bibliotecacouto/prestamos.php");
INSERT INTO visitas VALUES("1642992821","2022-01-24","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/comentarios.php");
INSERT INTO visitas VALUES("1642992827","2022-01-24","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/bibliotecacouto/prestamos.php");
INSERT INTO visitas VALUES("1642992851","2022-01-24","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/bibliotecacouto/prestamos.php");
INSERT INTO visitas VALUES("1642992852","2022-01-24","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/bibliotecacouto/comentarios.php");
INSERT INTO visitas VALUES("1642992866","2022-01-24","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/bibliotecacouto/comentarios.php");
INSERT INTO visitas VALUES("1642992873","2022-01-24","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/bibliotecacouto/comentarios.php");
INSERT INTO visitas VALUES("1642992879","2022-01-24","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/busqueda.php");
INSERT INTO visitas VALUES("1642992900","2022-01-24","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/comentarios.php");
INSERT INTO visitas VALUES("1642992903","2022-01-24","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/busqueda.php");
INSERT INTO visitas VALUES("1642992939","2022-01-24","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/bibliotecacouto/inicio.php");
INSERT INTO visitas VALUES("1642992940","2022-01-24","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/bibliotecacouto/comentarios.php");
INSERT INTO visitas VALUES("1642992942","2022-01-24","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/bibliotecacouto/busqueda.php");
INSERT INTO visitas VALUES("1642992954","2022-01-24","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/bibliotecacouto/busqueda.php?buscar=java&enviar=Buscar");
INSERT INTO visitas VALUES("1642992966","2022-01-24","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/bibliotecacouto/comentarios.php");
INSERT INTO visitas VALUES("1642992995","2022-01-24","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/bibliotecacouto/busqueda.php");
INSERT INTO visitas VALUES("1642993870","2022-01-24","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/bibliotecacouto/comentarios.php");
INSERT INTO visitas VALUES("1642993905","2022-01-24","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/bibliotecacouto/busqueda.php");
INSERT INTO visitas VALUES("1642993906","2022-01-24","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/bibliotecacouto/comentarios.php");
INSERT INTO visitas VALUES("1642993908","2022-01-24","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/bibliotecacouto/busqueda.php");
INSERT INTO visitas VALUES("1642993961","2022-01-24","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/bibliotecacouto/inicio.php");
INSERT INTO visitas VALUES("1642993966","2022-01-24","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/bibliotecacouto/inicio.php");
INSERT INTO visitas VALUES("1642993981","2022-01-24","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/bibliotecacouto/comentarios.php");
INSERT INTO visitas VALUES("1642993982","2022-01-24","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/bibliotecacouto/busqueda.php");
INSERT INTO visitas VALUES("1642993984","2022-01-24","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/bibliotecacouto/comentarios.php");
INSERT INTO visitas VALUES("1642994117","2022-01-24","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/bibliotecacouto/comentarios.php");
INSERT INTO visitas VALUES("1642994157","2022-01-24","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/bibliotecacouto/comentarios.php");
INSERT INTO visitas VALUES("1642994426","2022-01-24","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/bibliotecacouto/comentarios.php");
INSERT INTO visitas VALUES("1642994503","2022-01-24","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/bibliotecacouto/comentarios.php");
INSERT INTO visitas VALUES("1642994541","2022-01-24","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/bibliotecacouto/comentarios.php");
INSERT INTO visitas VALUES("1642994550","2022-01-24","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/bibliotecacouto/busqueda.php");
INSERT INTO visitas VALUES("1642994852","2022-01-24","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/bibliotecacouto/busqueda.php");
INSERT INTO visitas VALUES("1642994877","2022-01-24","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/bibliotecacouto/inicio.php");
INSERT INTO visitas VALUES("1642994934","2022-01-24","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/bibliotecacouto/inicio.php");
INSERT INTO visitas VALUES("1642994969","2022-01-24","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/bibliotecacouto/inicio.php");
INSERT INTO visitas VALUES("1642994997","2022-01-24","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/bibliotecacouto/inicio.php");
INSERT INTO visitas VALUES("1642995015","2022-01-24","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/bibliotecacouto/inicio.php");
INSERT INTO visitas VALUES("1642995040","2022-01-24","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/bibliotecacouto/inicio.php");
INSERT INTO visitas VALUES("1642995055","2022-01-24","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/bibliotecacouto/inicio.php");
INSERT INTO visitas VALUES("1642995140","2022-01-24","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/bibliotecacouto/inicio.php");
INSERT INTO visitas VALUES("1642995164","2022-01-24","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/bibliotecacouto/inicio.php");
INSERT INTO visitas VALUES("1642995409","2022-01-24","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/bibliotecacouto/inicio.php");
INSERT INTO visitas VALUES("1642995503","2022-01-24","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/bibliotecacouto/inicio.php");
INSERT INTO visitas VALUES("1642995555","2022-01-24","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/bibliotecacouto/inicio.php");
INSERT INTO visitas VALUES("1642995568","2022-01-24","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/bibliotecacouto/inicio.php");
INSERT INTO visitas VALUES("1642995589","2022-01-24","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/bibliotecacouto/inicio.php");
INSERT INTO visitas VALUES("1642995613","2022-01-24","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/bibliotecacouto/inicio.php");
INSERT INTO visitas VALUES("1642995633","2022-01-24","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/bibliotecacouto/inicio.php");
INSERT INTO visitas VALUES("1642995683","2022-01-24","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/bibliotecacouto/inicio.php");
INSERT INTO visitas VALUES("1642995714","2022-01-24","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/bibliotecacouto/inicio.php");
INSERT INTO visitas VALUES("1642995724","2022-01-24","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/bibliotecacouto/inicio.php");
INSERT INTO visitas VALUES("1642995779","2022-01-24","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/bibliotecacouto/inicio.php");
INSERT INTO visitas VALUES("1642995873","2022-01-24","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/bibliotecacouto/inicio.php");
INSERT INTO visitas VALUES("1642995991","2022-01-24","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/bibliotecacouto/inicio.php");
INSERT INTO visitas VALUES("1642996068","2022-01-24","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/bibliotecacouto/inicio.php");
INSERT INTO visitas VALUES("1642996116","2022-01-24","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/bibliotecacouto/busqueda.php");
INSERT INTO visitas VALUES("1642996118","2022-01-24","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/bibliotecacouto/inicio.php");
INSERT INTO visitas VALUES("1643001930","2022-01-24","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/bibliotecacouto/inicio.php");
INSERT INTO visitas VALUES("1643073272","2022-01-25","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/bibliotecacouto/inicio.php");
INSERT INTO visitas VALUES("1643073701","2022-01-25","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1643073704","2022-01-25","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/prestamos.php");
INSERT INTO visitas VALUES("1643073981","2022-01-25","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/bibliotecacouto/inicio.php");
INSERT INTO visitas VALUES("1643073988","2022-01-25","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/bibliotecacouto/prestamos.php");
INSERT INTO visitas VALUES("1643074059","2022-01-25","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/bibliotecacouto/prestamos.php");
INSERT INTO visitas VALUES("1643074061","2022-01-25","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/bibliotecacouto/prestamos.php");
INSERT INTO visitas VALUES("1643074062","2022-01-25","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/bibliotecacouto/comentarios.php");
INSERT INTO visitas VALUES("1643074091","2022-01-25","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/bibliotecacouto/busqueda.php");
INSERT INTO visitas VALUES("1643075060","2022-01-25","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1643075150","2022-01-25","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1643075697","2022-01-25","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1643075937","2022-01-25","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1643076054","2022-01-25","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1643076218","2022-01-25","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1643079003","2022-01-25","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1643135777","2022-01-25","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1643138013","2022-01-25","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1643138472","2022-01-25","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1643139405","2022-01-25","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1643139569","2022-01-25","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1643139735","2022-01-25","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1643140832","2022-01-25","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1643141023","2022-01-25","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1643146896","2022-01-25","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1643150333","2022-01-25","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1643150388","2022-01-25","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1643159459","2022-01-26","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1643170737","2022-01-26","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1643226791","2022-01-26","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1643229738","2022-01-26","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1643230019","2022-01-26","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1643485515","2022-01-29","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1643486451","2022-01-29","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1643498842","2022-01-30","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1643560042","2022-01-30","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1643569335","2022-01-30","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76","/bibliotecacouto/inicio.php");
INSERT INTO visitas VALUES("1643569345","2022-01-30","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76","/bibliotecacouto/prestamos.php");
INSERT INTO visitas VALUES("1643569348","2022-01-30","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76","/bibliotecacouto/prestamos.php");
INSERT INTO visitas VALUES("1643569351","2022-01-30","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76","/bibliotecacouto/comentarios.php");
INSERT INTO visitas VALUES("1643569355","2022-01-30","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76","/bibliotecacouto/busqueda.php");
INSERT INTO visitas VALUES("1643569373","2022-01-30","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76","/bibliotecacouto/busqueda.php");
INSERT INTO visitas VALUES("1643569444","2022-01-30","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76","/bibliotecacouto/busqueda.php");
INSERT INTO visitas VALUES("1643569449","2022-01-30","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76","/bibliotecacouto/busqueda.php");
INSERT INTO visitas VALUES("1643569510","2022-01-30","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76","/bibliotecacouto/inicio.php");
INSERT INTO visitas VALUES("1643569697","2022-01-30","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1643588219","2022-01-31","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76","/bibliotecacouto/inicio.php");
INSERT INTO visitas VALUES("1643589403","2022-01-31","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76","/bibliotecacouto/inicio.php");
INSERT INTO visitas VALUES("1643589647","2022-01-31","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76","/bibliotecacouto/inicio.php");
INSERT INTO visitas VALUES("1643589662","2022-01-31","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76","/bibliotecacouto/inicio.php");
INSERT INTO visitas VALUES("1643589673","2022-01-31","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76","/bibliotecacouto/inicio.php");
INSERT INTO visitas VALUES("1643589675","2022-01-31","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76","/bibliotecacouto/inicio.php");
INSERT INTO visitas VALUES("1643589677","2022-01-31","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76","/bibliotecacouto/prestamos.php");
INSERT INTO visitas VALUES("1643589678","2022-01-31","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76","/bibliotecacouto/inicio.php");
INSERT INTO visitas VALUES("1643589679","2022-01-31","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76","/bibliotecacouto/comentarios.php");
INSERT INTO visitas VALUES("1643589680","2022-01-31","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76","/bibliotecacouto/inicio.php");
INSERT INTO visitas VALUES("1643589681","2022-01-31","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76","/bibliotecacouto/busqueda.php");
INSERT INTO visitas VALUES("1643589682","2022-01-31","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76","/bibliotecacouto/inicio.php");
INSERT INTO visitas VALUES("1643589777","2022-01-31","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76","/bibliotecacouto/inicio.php");
INSERT INTO visitas VALUES("1643589921","2022-01-31","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76","/bibliotecacouto/inicio.php");
INSERT INTO visitas VALUES("1643590033","2022-01-31","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76","/bibliotecacouto/inicio.php");
INSERT INTO visitas VALUES("1643590035","2022-01-31","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76","/bibliotecacouto/comentarios.php");
INSERT INTO visitas VALUES("1643590038","2022-01-31","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76","/bibliotecacouto/prestamos.php");
INSERT INTO visitas VALUES("1643590071","2022-01-31","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76","/bibliotecacouto/busqueda.php");
INSERT INTO visitas VALUES("1643590076","2022-01-31","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76","/bibliotecacouto/busqueda.php?buscar=aa&enviar=Buscar");
INSERT INTO visitas VALUES("1643590082","2022-01-31","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76","/bibliotecacouto/inicio.php");
INSERT INTO visitas VALUES("1643590159","2022-01-31","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1643590268","2022-01-31","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76","/biblioteca/inicio.php");
INSERT INTO visitas VALUES("1643679304","2022-02-01","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/bibliotecacouto/inicio.php");
INSERT INTO visitas VALUES("1643679336","2022-02-01","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/bibliotecacouto/inicio.php");
INSERT INTO visitas VALUES("1643681822","2022-02-01","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36","/biblioteca/inicio.php");



SET FOREIGN_KEY_CHECKS=1;