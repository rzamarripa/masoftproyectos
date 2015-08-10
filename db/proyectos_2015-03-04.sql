# ************************************************************
# Sequel Pro SQL dump
# Versión 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.5.38)
# Base de datos: proyectos
# Tiempo de Generación: 2015-03-05 00:26:36 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Volcado de tabla Actividad
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Actividad`;

CREATE TABLE `Actividad` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `mensaje` varchar(500) NOT NULL DEFAULT '',
  `usuario` varchar(50) NOT NULL DEFAULT '',
  `fechaCreacion_f` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `Actividad_usuario` (`usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `Actividad` WRITE;
/*!40000 ALTER TABLE `Actividad` DISABLE KEYS */;

INSERT INTO `Actividad` (`id`, `mensaje`, `usuario`, `fechaCreacion_f`)
VALUES
	(1,'Ha iniciado sesión','zama','2014-07-01 03:55:56'),
	(2,'Ha cerrado sesión','zama','2014-07-01 04:10:16'),
	(3,'Ha iniciado sesión','zama','2014-07-01 04:14:59'),
	(4,'Se completó el proyecto: Proyecto 1','zama','2014-07-01 04:26:13'),
	(5,'Cambió de Estatus de la actividad Dar capacitación del sistema del Proyecto Proyecto 1 a Inactivo','zama','2014-07-01 04:26:13'),
	(6,'Cambió de Estatus de la actividad Dar capacitación del sistema del Proyecto Proyecto 1 a Activo','zama','2014-07-01 04:27:05'),
	(7,'Ha cerrado sesión','zama','2014-07-01 04:30:55'),
	(8,'Ha iniciado sesión','otro','2014-07-01 04:30:59'),
	(9,'Ha cerrado sesión','otro','2014-07-01 04:31:56'),
	(10,'Ha iniciado sesión','ycastro','2014-07-01 04:32:00'),
	(11,'Cambió de Estatus de la actividad Dar capacitación del sistema del Proyecto Proyecto 1 a Inactivo','ycastro','2014-07-01 04:33:06'),
	(12,'Ha cerrado sesión','ycastro','2014-07-01 04:45:12'),
	(13,'Ha iniciado sesión','zama','2014-07-01 04:45:14'),
	(14,'Cambió de Estatus del evento Aquí voy a poner una acción a Inactivo','zama','2014-07-01 04:58:08'),
	(15,'Ha cerrado sesión','zama','2014-07-01 05:01:57'),
	(16,'Ha iniciado sesión','otro','2014-07-01 05:01:59'),
	(17,'Ha cerrado sesión','otro','2014-07-01 05:02:37'),
	(18,'Ha iniciado sesión','zama','2014-07-01 05:02:40'),
	(19,'Ha iniciado sesión','zama','2014-08-15 06:44:11'),
	(20,'Ha cerrado sesión','zama','2014-08-15 06:46:03'),
	(21,'Ha iniciado sesión','ycastro','2014-08-15 06:46:13'),
	(22,'Cambió de Estatus del evento Social a Inactivo','ycastro','2014-08-15 07:16:53'),
	(23,'Cambió de Estatus del evento hola a Inactivo','ycastro','2014-08-15 07:17:00'),
	(24,'Cambió de Estatus del evento Ulises a Inactivo','ycastro','2014-08-15 07:17:12'),
	(25,'Cambió de Estatus de la categora Construcción a Inactivo','ycastro','2014-08-15 07:18:08'),
	(26,'Cambió de Estatus de la categora Construcción a Activo','ycastro','2014-08-15 07:18:09'),
	(27,'Cambió de Estatus de la categora Social a Activo','ycastro','2014-08-15 07:18:11'),
	(28,'Ha iniciado sesión','ycastro','2014-08-18 02:54:21'),
	(29,'Ha cerrado sesión','ycastro','2014-08-18 03:15:50'),
	(30,'Ha iniciado sesión','zama','2014-08-18 03:15:52'),
	(31,'Cambió de Estatus de la actividad Gráfica de avance por usuario (Barras) del Proyecto Pendientes del Sistema a Inactivo','zama','2014-08-18 03:16:57'),
	(32,'Ha cerrado sesión','zama','2014-08-18 11:05:02'),
	(33,'Ha iniciado sesión','ycastro','2014-08-18 11:05:15'),
	(34,'Se completó el proyecto: Proyecto 1','ycastro','2014-08-18 11:06:24'),
	(35,'Cambió de Estatus de la actividad Segunda actividad del Proyecto Proyecto 1 a Inactivo','ycastro','2014-08-18 11:06:24'),
	(36,'Cambió de Estatus de la actividad Dar capacitación del sistema del Proyecto Proyecto 1 a Activo','ycastro','2014-08-18 11:06:32'),
	(37,'Cambió de Estatus de la actividad Segunda actividad del Proyecto Proyecto 1 a Activo','ycastro','2014-08-18 11:06:34'),
	(38,'Cambió de Estatus de la actividad Categorizar los proyectos del Proyecto Pendientes del Sistema a Inactivo','ycastro','2014-08-18 11:16:14'),
	(39,'Ha cerrado sesión','ycastro','2014-08-18 11:20:28'),
	(40,'Ha iniciado sesión','zama','2014-08-18 11:20:31'),
	(41,'Cambió de Estatus de la actividad Gráfica de cantidad de proyectos por categorías del Proyecto Pendientes del Sistema a Inactivo','zama','2014-08-18 11:48:06'),
	(42,'Cambió de Estatus de la actividad Gráfica de cantidad de proyectos por categorías del Proyecto Pendientes del Sistema a Activo','zama','2014-08-18 11:50:02'),
	(43,'Cambió de Estatus de la actividad Categorizar los proyectos del Proyecto Pendientes del Sistema a Activo','zama','2014-08-18 11:50:19'),
	(44,'Cambió de Estatus de la actividad Yoli (Prueba) del Proyecto Pendientes del Sistema a Inactivo','zama','2014-08-18 11:52:46'),
	(45,'Cambió de Estatus de la actividad Yoli (Prueba) del Proyecto Pendientes del Sistema a Activo','zama','2014-08-18 11:52:52'),
	(46,'Cambió de Estatus de la actividad Agregar comentarios y poner el nombre de quien resuelve y el estatus en DETENIDO (con rojo) del Proyecto Pendientes del Sistema a ','zama','2014-08-18 11:56:13'),
	(47,'Cambió de Estatus de la actividad Agregar comentarios y poner el nombre de quien resuelve y el estatus en DETENIDO (con rojo) del Proyecto Pendientes del Sistema a ','zama','2014-08-18 11:56:31'),
	(48,'Ha iniciado sesión','ycastro','2014-08-27 02:47:36'),
	(49,'Cambió de Estatus de la actividad Prueba Ayuda del Proyecto Pendientes del Sistema a Inactivo','ycastro','2014-08-27 04:47:37'),
	(50,'Cambió de Estatus de la actividad Yoli (Prueba) del Proyecto Pendientes del Sistema a Inactivo','ycastro','2014-08-27 04:50:51'),
	(51,'Cambió de Estatus de la actividad Prueba Ayuda del Proyecto Pendientes del Sistema a Activo','ycastro','2014-08-27 04:51:07'),
	(52,'Cambió de Estatus de la actividad Yoli (Prueba) del Proyecto Pendientes del Sistema a Activo','ycastro','2014-08-27 04:51:10'),
	(53,'Cambió de Estatus de la actividad Prueba Ayuda del Proyecto Pendientes del Sistema a Inactivo','ycastro','2014-08-27 04:51:17'),
	(54,'Cambió de Estatus de la actividad Yoli (Prueba) del Proyecto Pendientes del Sistema a Inactivo','ycastro','2014-08-27 04:51:25'),
	(55,'Cambió de Estatus de la actividad Prueba Ayuda del Proyecto Pendientes del Sistema a Activo','ycastro','2014-08-27 04:52:18'),
	(56,'Cambió de Estatus de la actividad Yoli (Prueba) del Proyecto Pendientes del Sistema a Activo','ycastro','2014-08-27 04:52:19'),
	(57,'Cambió de Estatus de la actividad Prueba Ayuda del Proyecto Pendientes del Sistema a Inactivo','ycastro','2014-08-27 04:52:23'),
	(58,'Cambió de Estatus de la actividad Yoli (Prueba) del Proyecto Pendientes del Sistema a Inactivo','ycastro','2014-08-27 04:53:22'),
	(59,'Cambió de Estatus de la actividad Prueba Ayuda del Proyecto Pendientes del Sistema a Activo','ycastro','2014-08-27 04:53:54'),
	(60,'Cambió de Estatus de la actividad Yoli (Prueba) del Proyecto Pendientes del Sistema a Activo','ycastro','2014-08-27 04:53:57'),
	(61,'Cambió de Estatus de la actividad Prueba Ayuda del Proyecto Pendientes del Sistema a Inactivo','ycastro','2014-08-27 04:54:01'),
	(62,'Cambió de Estatus de la actividad Yoli (Prueba) del Proyecto Pendientes del Sistema a ','ycastro','2014-08-27 04:57:52'),
	(63,'Ha iniciado sesión','zama','2014-08-30 06:04:17'),
	(64,'Cambió de Estatus de la actividad Dar capacitación del sistema del Proyecto Proyecto 1 a Inactivo','zama','2014-08-30 06:04:36'),
	(65,'Se completó el proyecto: Proyecto 1','zama','2014-08-30 06:04:44'),
	(66,'Cambió de Estatus de la actividad Segunda actividad del Proyecto Proyecto 1 a Inactivo','zama','2014-08-30 06:04:44'),
	(67,'Cambió de Estatus de la actividad Dar capacitación del sistema del Proyecto Proyecto 1 a Activo','zama','2014-08-30 06:04:48'),
	(68,'Cambió de Estatus de la actividad Segunda actividad del Proyecto Proyecto 1 a Activo','zama','2014-08-30 06:04:50'),
	(69,'Cambió de Estatus de la actividad Prueba Ayuda del Proyecto Pendientes del Sistema a Activo','zama','2014-08-30 06:05:10'),
	(70,'Ha iniciado sesión','zama','2014-09-27 05:08:13'),
	(71,'Cambió de Estatus de la actividad Gráfica de avance por usuario (Barras) del Proyecto Pendientes del Sistema a Inactivo','zama','2014-09-27 05:09:49'),
	(72,'Cambió de Estatus de la actividad Categorizar los proyectos del Proyecto Pendientes del Sistema a Inactivo','zama','2014-09-27 05:10:13'),
	(73,'Cambió de Estatus de la actividad Otra actividad más del Proyecto Pendientes del Sistema a ','zama','2014-09-27 05:11:12'),
	(74,'Ha iniciado sesión','zama','2014-10-16 10:12:47'),
	(75,'Ha iniciado sesión','zama','2014-10-16 12:28:16'),
	(76,'Ha iniciado sesión','zama','2014-10-17 04:31:55'),
	(77,'Ha iniciado sesión','zama','2014-11-13 02:40:08'),
	(78,'Ha iniciado sesión','zama','2014-11-13 02:47:00'),
	(79,'Cambió de Estatus de la actividad Gráfica de cantidad de proyectos por categorías del Proyecto Pendientes del Sistema a Inactivo','zama','2014-11-13 02:48:47'),
	(80,'Cambió de Estatus de la actividad Cuando pidan apoyo de otro proyecto mandar correo del Proyecto Pendientes del Sistema a Inactivo','zama','2014-11-13 02:48:56'),
	(81,'Cambió de Estatus de la actividad Hacer presentación de Yii del Proyecto Pendientes del Sistema a ','zama','2014-11-13 02:50:00'),
	(82,'Cambió de Estatus de la actividad Hacer presentación de Yii del Proyecto Pendientes del Sistema a Inactivo','zama','2014-11-13 02:50:10'),
	(83,'Ha iniciado sesión','zama','2014-11-19 06:01:47');

/*!40000 ALTER TABLE `Actividad` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla Categoria
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Categoria`;

CREATE TABLE `Categoria` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL DEFAULT '',
  `descripcion` text NOT NULL,
  `estatus_did` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `categoria_estatus` (`estatus_did`),
  CONSTRAINT `categoria_estatus` FOREIGN KEY (`estatus_did`) REFERENCES `Estatus` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `Categoria` WRITE;
/*!40000 ALTER TABLE `Categoria` DISABLE KEYS */;

INSERT INTO `Categoria` (`id`, `nombre`, `descripcion`, `estatus_did`)
VALUES
	(1,'Social','Aquí irán los proyectos de carácter Social',1),
	(2,'Construcción','Aquí irán los proyectos del ámbito de la construcción',1),
	(3,'Informática','Aquí irán los proyectos de Sistemas',1);

/*!40000 ALTER TABLE `Categoria` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla Comentario
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Comentario`;

CREATE TABLE `Comentario` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `detalleProyecto_did` int(11) unsigned NOT NULL,
  `descripcion` text,
  `estatus_did` int(11) unsigned NOT NULL,
  `fechaCreacion_f` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `comentario_detalleproyecto` (`detalleProyecto_did`),
  KEY `comentario_estatus` (`estatus_did`),
  CONSTRAINT `comentario_detalleproyecto` FOREIGN KEY (`detalleProyecto_did`) REFERENCES `DetalleProyecto` (`id`),
  CONSTRAINT `comentario_estatus` FOREIGN KEY (`estatus_did`) REFERENCES `Estatus` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Volcado de tabla DetalleProyecto
# ------------------------------------------------------------

DROP TABLE IF EXISTS `DetalleProyecto`;

CREATE TABLE `DetalleProyecto` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL DEFAULT '',
  `proyecto_did` int(10) unsigned NOT NULL,
  `peso` int(11) NOT NULL,
  `estatus_did` int(10) unsigned NOT NULL,
  `responsable_did` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `detalleproyecto_proyecto` (`proyecto_did`),
  KEY `detalleproyecto_estatus` (`estatus_did`),
  KEY `detalleproyecto_responsable` (`responsable_did`),
  CONSTRAINT `detalleproyecto_estatus` FOREIGN KEY (`estatus_did`) REFERENCES `Estatus` (`id`),
  CONSTRAINT `detalleproyecto_proyecto` FOREIGN KEY (`proyecto_did`) REFERENCES `Proyecto` (`id`),
  CONSTRAINT `detalleproyecto_responsable` FOREIGN KEY (`responsable_did`) REFERENCES `Usuario` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `DetalleProyecto` WRITE;
/*!40000 ALTER TABLE `DetalleProyecto` DISABLE KEYS */;

INSERT INTO `DetalleProyecto` (`id`, `nombre`, `proyecto_did`, `peso`, `estatus_did`, `responsable_did`)
VALUES
	(1,'Dar capacitación del sistema',1,1,1,17),
	(2,'Segunda actividad',1,2,1,17),
	(3,'Gráfica de avance por usuario (Barras)',4,3,2,17),
	(4,'Categorizar los proyectos',4,2,2,17),
	(5,'Gráfica de cantidad de proyectos por categorías',4,4,2,17),
	(6,'Agregar comentarios y poner el nombre de quien resuelve y el estatus en DETENIDO (con rojo)',4,3,3,17),
	(7,'Cuando pidan apoyo de otro proyecto mandar correo',4,4,2,17),
	(9,'Prueba Ayuda',4,2,1,12),
	(10,'Yoli (Prueba)',4,4,3,12),
	(11,'Otra actividad más',4,2,3,17),
	(12,'Hacer presentación de Yii',4,1,2,17);

/*!40000 ALTER TABLE `DetalleProyecto` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla Documento
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Documento`;

CREATE TABLE `Documento` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `proyecto_did` int(10) unsigned NOT NULL,
  `ruta` varchar(100) NOT NULL DEFAULT '',
  `estatus_did` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `documento_estatus` (`estatus_did`),
  KEY `documento_proyecto` (`proyecto_did`),
  CONSTRAINT `documento_estatus` FOREIGN KEY (`estatus_did`) REFERENCES `Estatus` (`id`),
  CONSTRAINT `documento_proyecto` FOREIGN KEY (`proyecto_did`) REFERENCES `Proyecto` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `Documento` WRITE;
/*!40000 ALTER TABLE `Documento` DISABLE KEYS */;

INSERT INTO `Documento` (`id`, `proyecto_did`, `ruta`, `estatus_did`)
VALUES
	(1,1,'0.92864300 1404231899Captura de pantalla 2014-06-09 a la(s) 10.42.14.png.png',1),
	(3,1,'0.75222500 1404231903Captura de pantalla 2014-06-09 a la(s) 12.30.35.png.png',1),
	(4,1,'0.77296900 1404231903Captura de pantalla 2014-06-11 a la(s) 19.03.35.png.png',1);

/*!40000 ALTER TABLE `Documento` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla Estatus
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Estatus`;

CREATE TABLE `Estatus` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT '',
  `tipo` varchar(100) DEFAULT NULL,
  `fechaCreacion_f` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `Estatus` WRITE;
/*!40000 ALTER TABLE `Estatus` DISABLE KEYS */;

INSERT INTO `Estatus` (`id`, `nombre`, `tipo`, `fechaCreacion_f`)
VALUES
	(1,'Activo','Pendiente','2014-01-02 00:48:50'),
	(2,'Inactivo','Realizada','2014-01-02 00:48:53'),
	(3,'','Urgente','2014-08-18 11:22:19');

/*!40000 ALTER TABLE `Estatus` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla Evento
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Evento`;

CREATE TABLE `Evento` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL DEFAULT '',
  `descripcion` varchar(100) NOT NULL DEFAULT '',
  `fechaInicio_ft` datetime NOT NULL,
  `fechaFin_ft` datetime NOT NULL,
  `estatus_did` int(11) NOT NULL,
  `usuario_did` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `evento_usuario` (`usuario_did`),
  CONSTRAINT `evento_usuario` FOREIGN KEY (`usuario_did`) REFERENCES `Usuario` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `Evento` WRITE;
/*!40000 ALTER TABLE `Evento` DISABLE KEYS */;

INSERT INTO `Evento` (`id`, `nombre`, `descripcion`, `fechaInicio_ft`, `fechaFin_ft`, `estatus_did`, `usuario_did`)
VALUES
	(1,'Sesión de capacitación ','','2014-07-02 00:00:00','0000-00-00 00:00:00',2,NULL),
	(2,'kjkj.hlkjlk','','2014-07-09 00:00:00','2014-07-09 00:00:00',2,NULL),
	(3,'Aquí voy a poner una acción','','2014-07-15 00:00:00','2014-07-15 00:00:00',2,NULL),
	(4,'Ulises','','2014-07-01 00:00:00','2014-07-01 00:00:00',2,NULL),
	(5,'hola','','2014-07-08 00:00:00','2014-07-08 00:00:00',2,NULL);

/*!40000 ALTER TABLE `Evento` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla Proyecto
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Proyecto`;

CREATE TABLE `Proyecto` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `categoria_did` int(10) unsigned DEFAULT NULL,
  `nombre` varchar(100) NOT NULL DEFAULT '',
  `descripcion` text NOT NULL,
  `fechaInicio_ft` datetime NOT NULL,
  `fechaFin_ft` datetime NOT NULL,
  `responsable_did` int(10) unsigned NOT NULL,
  `estatus_did` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `proyecto_usuario` (`responsable_did`),
  KEY `proyecto_estatus` (`estatus_did`),
  CONSTRAINT `proyecto_estatus` FOREIGN KEY (`estatus_did`) REFERENCES `Estatus` (`id`),
  CONSTRAINT `proyecto_usuario` FOREIGN KEY (`responsable_did`) REFERENCES `Usuario` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `Proyecto` WRITE;
/*!40000 ALTER TABLE `Proyecto` DISABLE KEYS */;

INSERT INTO `Proyecto` (`id`, `categoria_did`, `nombre`, `descripcion`, `fechaInicio_ft`, `fechaFin_ft`, `responsable_did`, `estatus_did`)
VALUES
	(1,1,'Proyecto 1','<p>Esta es la descripción del proyecto.<span></span></p>','2014-06-26 00:00:00','2014-07-17 00:00:00',17,1),
	(2,1,'Otro Proyecto','<p>Aquí va la descripción del otro proyecto.<span></span></p>','2014-06-20 00:00:00','2014-08-29 00:00:00',16,1),
	(3,2,'Líneas de avance de actividades','<p>Aquí va la descripción</p>','2014-06-28 00:00:00','2014-07-26 00:00:00',17,1),
	(4,3,'Pendientes del Sistema','<p>Tengo que agregar esto...</p>','2014-06-18 00:00:00','2014-07-12 00:00:00',17,1);

/*!40000 ALTER TABLE `Proyecto` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla TipoUsuario
# ------------------------------------------------------------

DROP TABLE IF EXISTS `TipoUsuario`;

CREATE TABLE `TipoUsuario` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL DEFAULT '',
  `estatus_did` int(11) unsigned NOT NULL,
  `fechaCreacion_f` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `tipoUsuario_estatus` (`estatus_did`),
  CONSTRAINT `tipoUsuario_estatus` FOREIGN KEY (`estatus_did`) REFERENCES `Estatus` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `TipoUsuario` WRITE;
/*!40000 ALTER TABLE `TipoUsuario` DISABLE KEYS */;

INSERT INTO `TipoUsuario` (`id`, `nombre`, `estatus_did`, `fechaCreacion_f`)
VALUES
	(1,'Administrador',1,'2014-01-02 02:14:40'),
	(2,'Guest',1,'2014-01-02 02:14:54'),
	(3,'Proyecto',1,'2014-01-02 02:15:03');

/*!40000 ALTER TABLE `TipoUsuario` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla Usuario
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Usuario`;

CREATE TABLE `Usuario` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `usuario` varchar(100) NOT NULL DEFAULT '',
  `nombre` varchar(100) DEFAULT NULL,
  `contrasena` varchar(200) NOT NULL DEFAULT '',
  `foto` varchar(200) DEFAULT NULL,
  `tipoUsuario_did` int(11) unsigned NOT NULL,
  `estatus_did` int(11) unsigned NOT NULL,
  `fechaCreacion_f` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `usuario_estatus` (`estatus_did`),
  KEY `usuario_tipoUsuario` (`tipoUsuario_did`),
  CONSTRAINT `usuario_estatus` FOREIGN KEY (`estatus_did`) REFERENCES `Estatus` (`id`),
  CONSTRAINT `usuario_tipoUsuario` FOREIGN KEY (`tipoUsuario_did`) REFERENCES `TipoUsuario` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `Usuario` WRITE;
/*!40000 ALTER TABLE `Usuario` DISABLE KEYS */;

INSERT INTO `Usuario` (`id`, `usuario`, `nombre`, `contrasena`, `foto`, `tipoUsuario_did`, `estatus_did`, `fechaCreacion_f`)
VALUES
	(1,'Guest','Invitado','123',NULL,2,1,'2014-01-02 02:18:04'),
	(11,'edgar','Edgar Kelly','123',NULL,1,1,'2014-02-12 09:37:41'),
	(12,'ycastro','Yoli Castro','123','20140815_2140_20140722_1425__Captura_de_pantalla_2014-07-02_a_la(s)_22.56.54.png',1,1,'2014-05-20 19:45:23'),
	(16,'otro','Otro','123',NULL,3,2,'2014-05-30 04:41:39'),
	(17,'zama','Roberto Zamarripa','123',NULL,1,1,'2014-06-04 06:12:01');

/*!40000 ALTER TABLE `Usuario` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla YiiLog
# ------------------------------------------------------------

DROP TABLE IF EXISTS `YiiLog`;

CREATE TABLE `YiiLog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `level` varchar(128) DEFAULT NULL,
  `category` varchar(128) DEFAULT NULL,
  `logtime` int(11) DEFAULT NULL,
  `message` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
