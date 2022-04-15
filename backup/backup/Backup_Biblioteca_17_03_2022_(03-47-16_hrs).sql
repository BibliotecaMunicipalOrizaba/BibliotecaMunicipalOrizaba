SET FOREIGN_KEY_CHECKS=0;

CREATE DATABASE IF NOT EXISTS bibliotecauni;

USE bibliotecauni;

DROP TABLE IF EXISTS acervo;

CREATE TABLE `acervo` (
  `id_acervo` int(10) NOT NULL AUTO_INCREMENT,
  `clasificacion` varchar(20) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `autor` varchar(100) DEFAULT NULL,
  `editorial` varchar(50) DEFAULT NULL,
  `cantidad` smallint(6) DEFAULT 1,
  `descripcion` varchar(200) DEFAULT NULL,
  `seccion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_acervo`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

INSERT INTO acervo VALUES("1","1","","1","1","1","1","DGB");
INSERT INTO acervo VALUES("2","s","s","s","s","1","s","Donacion");
INSERT INTO acervo VALUES("3","prueba","uno","yo","bad","1","webiweba","Otro");
INSERT INTO acervo VALUES("4","r","r","r","r","1","r","Otro");



DROP TABLE IF EXISTS administrador_biblioteca;

CREATE TABLE `administrador_biblioteca` (
  `id_bibliotecario` int(10) NOT NULL AUTO_INCREMENT,
  `user` varchar(40) NOT NULL,
  `pass` varchar(150) NOT NULL,
  `id_extreme` varchar(50) NOT NULL,
  PRIMARY KEY (`id_bibliotecario`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

INSERT INTO administrador_biblioteca VALUES("3","carlos","ab5e2bca84933118bbc9d48ffaccce3bac4eeb64","");
INSERT INTO administrador_biblioteca VALUES("4","elier","8af8cd209bfe5b981ac7ce0e4c8e55464aceb494","");
INSERT INTO administrador_biblioteca VALUES("5","javier","828c1a17681e8566a17a1a4801ea67306010b273","");
INSERT INTO administrador_biblioteca VALUES("6","eduardo","81f705dc2ce1a61a2621e0e4b442a9474e1d0c70","");
INSERT INTO administrador_biblioteca VALUES("7","admin","d033e22ae348aeb5660fc2140aec35850c4da997","");
INSERT INTO administrador_biblioteca VALUES("9","Jorge","97f627c1306a915b474fa5d26a0eeeae6191ad15","");
INSERT INTO administrador_biblioteca VALUES("10","Izatonejita","8cb2237d0679ca88db6464eac60da96345513964","");



DROP TABLE IF EXISTS categorias;

CREATE TABLE `categorias` (
  `id_categoria` int(10) NOT NULL AUTO_INCREMENT,
  `nombre_categoria` varchar(50) NOT NULL,
  `id_subcategoria` int(10) DEFAULT NULL,
  PRIMARY KEY (`id_categoria`),
  KEY `id_subcategoria` (`id_subcategoria`),
  CONSTRAINT `categorias_ibfk_1` FOREIGN KEY (`id_subcategoria`) REFERENCES `subcategorias` (`id_subcategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

INSERT INTO categorias VALUES("1","Programacion Avanzada II","3");
INSERT INTO categorias VALUES("2","Aplicaciones web","2");
INSERT INTO categorias VALUES("4","Estadisticas","2");
INSERT INTO categorias VALUES("8","Python 3","2");
INSERT INTO categorias VALUES("9","PHP avanzado","4");
INSERT INTO categorias VALUES("10","HTML 5","3");
INSERT INTO categorias VALUES("11","Base de datos","2");
INSERT INTO categorias VALUES("12","Ingenieria de Sistemas","3");
INSERT INTO categorias VALUES("13","Informatica","2");
INSERT INTO categorias VALUES("14","Populares","");



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
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;

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
INSERT INTO libros VALUES("55","images/4.jpg","v","v","no","1","2","1","2022-01-25","v");
INSERT INTO libros VALUES("57","images/MINIA.png","l","l","si","1","1","1","2022-01-26","l");
INSERT INTO libros VALUES("58","images/vegetitaaa.png","o","o","no","1","1","1","2022-01-20","o");
INSERT INTO libros VALUES("59","images/certif.png","y","y","si","1","1","1","2021-12-31","y");
INSERT INTO libros VALUES("62","images/HarryP1.jpg","Harry Potter 1","Novela Fantasia","si","14","9","2","2022-02-22","http://bibliotecadigital.ilce.edu.mx/Colecciones/ObrasClasicas/_docs/ElPrincipito.pdf");
INSERT INTO libros VALUES("63","images/metamorfosiskafka.jpg","Metamorfosis","frank kafka","si","14","9","2","2022-02-22","https://biblioteca.org.ar/libros/1587.pdf");
INSERT INTO libros VALUES("64","images/Juegosdelhambre.png","Los juegos del hambre","Ficcion 2008","si","14","9","2","2022-02-22","https://www.litomap.cl/wp-content/uploads/2018/08/1-los-juegos-del-hambre.pdf");



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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

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
INSERT INTO pdf VALUES("27","62","Harry Potter y la piedra filosofal","Novelilla popular influencia ","721644","application/pdf","Harrypotter - La Piedra filosofal.pdf");
INSERT INTO pdf VALUES("28","63","La Metamorfosis","Frank Karfka ","304196","application/pdf","Metamorfosis.pdf");
INSERT INTO pdf VALUES("29","64","Los juegos de Hambre","(Saga: \"Distritos\", vol.1)\nSuzanne Collins","5103605","application/pdf","Los juegos del hambre.pdf");



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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

INSERT INTO prestamo_libro VALUES("1","2016-02-07","2016-02-23","3","1","0");
INSERT INTO prestamo_libro VALUES("2","2016-02-07","2016-02-10","33","2","1");
INSERT INTO prestamo_libro VALUES("15","2016-02-07","2016-02-08","32","1","1");
INSERT INTO prestamo_libro VALUES("16","2016-02-07","2016-02-08","32","1","1");
INSERT INTO prestamo_libro VALUES("17","2018-10-05","2018-10-26","32","1","1");
INSERT INTO prestamo_libro VALUES("18","2018-10-12","2018-10-18","3","8","1");
INSERT INTO prestamo_libro VALUES("19","2018-11-08","2018-11-22","4","8","1");
INSERT INTO prestamo_libro VALUES("20","2018-11-08","2018-11-22","4","8","1");
INSERT INTO prestamo_libro VALUES("21","2022-01-24","2022-01-28","38","2","1");
INSERT INTO prestamo_libro VALUES("22","2022-02-21","2022-02-23","59","9","1");
INSERT INTO prestamo_libro VALUES("23","2022-02-14","2022-02-15","55","1","1");
INSERT INTO prestamo_libro VALUES("24","2022-02-21","2022-02-22","55","9","1");
INSERT INTO prestamo_libro VALUES("25","2022-02-21","2022-02-22","58","9","0");



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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

INSERT INTO registrousuarios VALUES("1","2022-01-21","Jorge Perez Morales","23","M","General-Infantil","36.1");
INSERT INTO registrousuarios VALUES("2","2022-01-21","Jorge Mora","23","H","Centro-de-computo","35.3");
INSERT INTO registrousuarios VALUES("5","2022-01-21","Jorge","12","H","General-Infantil","35.6");
INSERT INTO registrousuarios VALUES("6","2022-01-21","Jorge","33","H","Centro-de-computo","36.5");
INSERT INTO registrousuarios VALUES("7","2022-01-29","Raul Alonso jimenez","29","H","General-Infantil","36.3");
INSERT INTO registrousuarios VALUES("8","2022-02-09","Alyn","23","M","Centro-de-computo","36");



DROP TABLE IF EXISTS subcategorias;

CREATE TABLE `subcategorias` (
  `id_subcategoria` int(10) NOT NULL AUTO_INCREMENT,
  `nombre_subcategoria` varchar(50) NOT NULL,
  PRIMARY KEY (`id_subcategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

INSERT INTO subcategorias VALUES("1","C");
INSERT INTO subcategorias VALUES("2","C#");
INSERT INTO subcategorias VALUES("3","C++");
INSERT INTO subcategorias VALUES("4","php");
INSERT INTO subcategorias VALUES("5","java");
INSERT INTO subcategorias VALUES("6","python");
INSERT INTO subcategorias VALUES("7","html");
INSERT INTO subcategorias VALUES("8","Javascript 3");
INSERT INTO subcategorias VALUES("9","Novela");



DROP TABLE IF EXISTS suscriptores;

CREATE TABLE `suscriptores` (
  `id_suscriptor` int(10) NOT NULL AUTO_INCREMENT,
  `nombre_completo` varchar(30) DEFAULT NULL,
  `correo` varchar(30) NOT NULL,
  `observaciones` varchar(200) DEFAULT NULL,
  `fecha_suscripcion` date DEFAULT NULL,
  PRIMARY KEY (`id_suscriptor`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

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

INSERT INTO visitas VALUES("1646512365","2022-03-05","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36","/bibliotecacouto/inicio.php");
INSERT INTO visitas VALUES("1646512584","2022-03-05","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36","/bibliotecacouto/busqueda.php");
INSERT INTO visitas VALUES("1646604395","2022-03-06","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36","/bibliotecacouto/inicio.php");
INSERT INTO visitas VALUES("1646604398","2022-03-06","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36","/bibliotecacouto/inicio.php");
INSERT INTO visitas VALUES("1646604431","2022-03-06","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36","/bibliotecacouto/Infantil.php");
INSERT INTO visitas VALUES("1646604432","2022-03-06","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36","/bibliotecacouto/Dgb.php");
INSERT INTO visitas VALUES("1646604433","2022-03-06","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36","/bibliotecacouto/BibliotecaVirtual.php");
INSERT INTO visitas VALUES("1646604436","2022-03-06","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36","/bibliotecacouto/inicio.php");
INSERT INTO visitas VALUES("1646604439","2022-03-06","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36","/bibliotecacouto/inicio.php?cat=14");
INSERT INTO visitas VALUES("1646604638","2022-03-06","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36","/bibliotecacouto/prestamos.php");
INSERT INTO visitas VALUES("1646604641","2022-03-06","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36","/bibliotecacouto/comentarios.php");
INSERT INTO visitas VALUES("1646604643","2022-03-06","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36","/bibliotecacouto/inicio.php");
INSERT INTO visitas VALUES("1646768762","2022-03-08","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36","/bibliotecacouto/inicio.php");
INSERT INTO visitas VALUES("1646776419","2022-03-08","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36","/bibliotecacouto/inicio.php");
INSERT INTO visitas VALUES("1646776432","2022-03-08","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36","/bibliotecacouto/Infantil.php");
INSERT INTO visitas VALUES("1646776437","2022-03-08","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36","/bibliotecacouto/BibliotecaVirtual.php");
INSERT INTO visitas VALUES("1646776479","2022-03-08","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36","/bibliotecacouto/prestamos.php");
INSERT INTO visitas VALUES("1646776571","2022-03-08","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36","/bibliotecacouto/busqueda.php");
INSERT INTO visitas VALUES("1646776573","2022-03-08","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36","/bibliotecacouto/comentarios.php");
INSERT INTO visitas VALUES("1646776857","2022-03-08","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36","/bibliotecacouto/busqueda.php");
INSERT INTO visitas VALUES("1647479420","2022-03-17","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36","/bibliotecacouto/inicio.php");
INSERT INTO visitas VALUES("1647479460","2022-03-17","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36","/bibliotecacouto/comentarios.php");



SET FOREIGN_KEY_CHECKS=1;