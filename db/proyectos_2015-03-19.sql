/*
Navicat MySQL Data Transfer

Source Server         : Dino
Source Server Version : 50616
Source Host           : localhost:3306
Source Database       : proyectos

Target Server Type    : MYSQL
Target Server Version : 50616
File Encoding         : 65001

Date: 2015-03-19 17:32:00
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `actividad`
-- ----------------------------
DROP TABLE IF EXISTS `actividad`;
CREATE TABLE `actividad` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `mensaje` varchar(500) NOT NULL DEFAULT '',
  `usuario` varchar(50) NOT NULL DEFAULT '',
  `fechaCreacion_f` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `Actividad_usuario` (`usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of actividad
-- ----------------------------
INSERT INTO `actividad` VALUES ('1', 'Ha iniciado sesión', 'zama', '2014-07-01 03:55:56');
INSERT INTO `actividad` VALUES ('2', 'Ha cerrado sesión', 'zama', '2014-07-01 04:10:16');
INSERT INTO `actividad` VALUES ('3', 'Ha iniciado sesión', 'zama', '2014-07-01 04:14:59');
INSERT INTO `actividad` VALUES ('4', 'Se completó el proyecto: Proyecto 1', 'zama', '2014-07-01 04:26:13');
INSERT INTO `actividad` VALUES ('5', 'Cambió de Estatus de la actividad Dar capacitación del sistema del Proyecto Proyecto 1 a Inactivo', 'zama', '2014-07-01 04:26:13');
INSERT INTO `actividad` VALUES ('6', 'Cambió de Estatus de la actividad Dar capacitación del sistema del Proyecto Proyecto 1 a Activo', 'zama', '2014-07-01 04:27:05');
INSERT INTO `actividad` VALUES ('7', 'Ha cerrado sesión', 'zama', '2014-07-01 04:30:55');
INSERT INTO `actividad` VALUES ('8', 'Ha iniciado sesión', 'otro', '2014-07-01 04:30:59');
INSERT INTO `actividad` VALUES ('9', 'Ha cerrado sesión', 'otro', '2014-07-01 04:31:56');
INSERT INTO `actividad` VALUES ('10', 'Ha iniciado sesión', 'ycastro', '2014-07-01 04:32:00');
INSERT INTO `actividad` VALUES ('11', 'Cambió de Estatus de la actividad Dar capacitación del sistema del Proyecto Proyecto 1 a Inactivo', 'ycastro', '2014-07-01 04:33:06');
INSERT INTO `actividad` VALUES ('12', 'Ha cerrado sesión', 'ycastro', '2014-07-01 04:45:12');
INSERT INTO `actividad` VALUES ('13', 'Ha iniciado sesión', 'zama', '2014-07-01 04:45:14');
INSERT INTO `actividad` VALUES ('14', 'Cambió de Estatus del evento Aquí voy a poner una acción a Inactivo', 'zama', '2014-07-01 04:58:08');
INSERT INTO `actividad` VALUES ('15', 'Ha cerrado sesión', 'zama', '2014-07-01 05:01:57');
INSERT INTO `actividad` VALUES ('16', 'Ha iniciado sesión', 'otro', '2014-07-01 05:01:59');
INSERT INTO `actividad` VALUES ('17', 'Ha cerrado sesión', 'otro', '2014-07-01 05:02:37');
INSERT INTO `actividad` VALUES ('18', 'Ha iniciado sesión', 'zama', '2014-07-01 05:02:40');
INSERT INTO `actividad` VALUES ('19', 'Ha iniciado sesión', 'zama', '2014-08-15 06:44:11');
INSERT INTO `actividad` VALUES ('20', 'Ha cerrado sesión', 'zama', '2014-08-15 06:46:03');
INSERT INTO `actividad` VALUES ('21', 'Ha iniciado sesión', 'ycastro', '2014-08-15 06:46:13');
INSERT INTO `actividad` VALUES ('22', 'Cambió de Estatus del evento Social a Inactivo', 'ycastro', '2014-08-15 07:16:53');
INSERT INTO `actividad` VALUES ('23', 'Cambió de Estatus del evento hola a Inactivo', 'ycastro', '2014-08-15 07:17:00');
INSERT INTO `actividad` VALUES ('24', 'Cambió de Estatus del evento Ulises a Inactivo', 'ycastro', '2014-08-15 07:17:12');
INSERT INTO `actividad` VALUES ('25', 'Cambió de Estatus de la categora Construcción a Inactivo', 'ycastro', '2014-08-15 07:18:08');
INSERT INTO `actividad` VALUES ('26', 'Cambió de Estatus de la categora Construcción a Activo', 'ycastro', '2014-08-15 07:18:09');
INSERT INTO `actividad` VALUES ('27', 'Cambió de Estatus de la categora Social a Activo', 'ycastro', '2014-08-15 07:18:11');
INSERT INTO `actividad` VALUES ('28', 'Ha iniciado sesión', 'ycastro', '2014-08-18 02:54:21');
INSERT INTO `actividad` VALUES ('29', 'Ha cerrado sesión', 'ycastro', '2014-08-18 03:15:50');
INSERT INTO `actividad` VALUES ('30', 'Ha iniciado sesión', 'zama', '2014-08-18 03:15:52');
INSERT INTO `actividad` VALUES ('31', 'Cambió de Estatus de la actividad Gráfica de avance por usuario (Barras) del Proyecto Pendientes del Sistema a Inactivo', 'zama', '2014-08-18 03:16:57');
INSERT INTO `actividad` VALUES ('32', 'Ha cerrado sesión', 'zama', '2014-08-18 11:05:02');
INSERT INTO `actividad` VALUES ('33', 'Ha iniciado sesión', 'ycastro', '2014-08-18 11:05:15');
INSERT INTO `actividad` VALUES ('34', 'Se completó el proyecto: Proyecto 1', 'ycastro', '2014-08-18 11:06:24');
INSERT INTO `actividad` VALUES ('35', 'Cambió de Estatus de la actividad Segunda actividad del Proyecto Proyecto 1 a Inactivo', 'ycastro', '2014-08-18 11:06:24');
INSERT INTO `actividad` VALUES ('36', 'Cambió de Estatus de la actividad Dar capacitación del sistema del Proyecto Proyecto 1 a Activo', 'ycastro', '2014-08-18 11:06:32');
INSERT INTO `actividad` VALUES ('37', 'Cambió de Estatus de la actividad Segunda actividad del Proyecto Proyecto 1 a Activo', 'ycastro', '2014-08-18 11:06:34');
INSERT INTO `actividad` VALUES ('38', 'Cambió de Estatus de la actividad Categorizar los proyectos del Proyecto Pendientes del Sistema a Inactivo', 'ycastro', '2014-08-18 11:16:14');
INSERT INTO `actividad` VALUES ('39', 'Ha cerrado sesión', 'ycastro', '2014-08-18 11:20:28');
INSERT INTO `actividad` VALUES ('40', 'Ha iniciado sesión', 'zama', '2014-08-18 11:20:31');
INSERT INTO `actividad` VALUES ('41', 'Cambió de Estatus de la actividad Gráfica de cantidad de proyectos por categorías del Proyecto Pendientes del Sistema a Inactivo', 'zama', '2014-08-18 11:48:06');
INSERT INTO `actividad` VALUES ('42', 'Cambió de Estatus de la actividad Gráfica de cantidad de proyectos por categorías del Proyecto Pendientes del Sistema a Activo', 'zama', '2014-08-18 11:50:02');
INSERT INTO `actividad` VALUES ('43', 'Cambió de Estatus de la actividad Categorizar los proyectos del Proyecto Pendientes del Sistema a Activo', 'zama', '2014-08-18 11:50:19');
INSERT INTO `actividad` VALUES ('44', 'Cambió de Estatus de la actividad Yoli (Prueba) del Proyecto Pendientes del Sistema a Inactivo', 'zama', '2014-08-18 11:52:46');
INSERT INTO `actividad` VALUES ('45', 'Cambió de Estatus de la actividad Yoli (Prueba) del Proyecto Pendientes del Sistema a Activo', 'zama', '2014-08-18 11:52:52');
INSERT INTO `actividad` VALUES ('46', 'Cambió de Estatus de la actividad Agregar comentarios y poner el nombre de quien resuelve y el estatus en DETENIDO (con rojo) del Proyecto Pendientes del Sistema a ', 'zama', '2014-08-18 11:56:13');
INSERT INTO `actividad` VALUES ('47', 'Cambió de Estatus de la actividad Agregar comentarios y poner el nombre de quien resuelve y el estatus en DETENIDO (con rojo) del Proyecto Pendientes del Sistema a ', 'zama', '2014-08-18 11:56:31');
INSERT INTO `actividad` VALUES ('48', 'Ha iniciado sesión', 'ycastro', '2014-08-27 02:47:36');
INSERT INTO `actividad` VALUES ('49', 'Cambió de Estatus de la actividad Prueba Ayuda del Proyecto Pendientes del Sistema a Inactivo', 'ycastro', '2014-08-27 04:47:37');
INSERT INTO `actividad` VALUES ('50', 'Cambió de Estatus de la actividad Yoli (Prueba) del Proyecto Pendientes del Sistema a Inactivo', 'ycastro', '2014-08-27 04:50:51');
INSERT INTO `actividad` VALUES ('51', 'Cambió de Estatus de la actividad Prueba Ayuda del Proyecto Pendientes del Sistema a Activo', 'ycastro', '2014-08-27 04:51:07');
INSERT INTO `actividad` VALUES ('52', 'Cambió de Estatus de la actividad Yoli (Prueba) del Proyecto Pendientes del Sistema a Activo', 'ycastro', '2014-08-27 04:51:10');
INSERT INTO `actividad` VALUES ('53', 'Cambió de Estatus de la actividad Prueba Ayuda del Proyecto Pendientes del Sistema a Inactivo', 'ycastro', '2014-08-27 04:51:17');
INSERT INTO `actividad` VALUES ('54', 'Cambió de Estatus de la actividad Yoli (Prueba) del Proyecto Pendientes del Sistema a Inactivo', 'ycastro', '2014-08-27 04:51:25');
INSERT INTO `actividad` VALUES ('55', 'Cambió de Estatus de la actividad Prueba Ayuda del Proyecto Pendientes del Sistema a Activo', 'ycastro', '2014-08-27 04:52:18');
INSERT INTO `actividad` VALUES ('56', 'Cambió de Estatus de la actividad Yoli (Prueba) del Proyecto Pendientes del Sistema a Activo', 'ycastro', '2014-08-27 04:52:19');
INSERT INTO `actividad` VALUES ('57', 'Cambió de Estatus de la actividad Prueba Ayuda del Proyecto Pendientes del Sistema a Inactivo', 'ycastro', '2014-08-27 04:52:23');
INSERT INTO `actividad` VALUES ('58', 'Cambió de Estatus de la actividad Yoli (Prueba) del Proyecto Pendientes del Sistema a Inactivo', 'ycastro', '2014-08-27 04:53:22');
INSERT INTO `actividad` VALUES ('59', 'Cambió de Estatus de la actividad Prueba Ayuda del Proyecto Pendientes del Sistema a Activo', 'ycastro', '2014-08-27 04:53:54');
INSERT INTO `actividad` VALUES ('60', 'Cambió de Estatus de la actividad Yoli (Prueba) del Proyecto Pendientes del Sistema a Activo', 'ycastro', '2014-08-27 04:53:57');
INSERT INTO `actividad` VALUES ('61', 'Cambió de Estatus de la actividad Prueba Ayuda del Proyecto Pendientes del Sistema a Inactivo', 'ycastro', '2014-08-27 04:54:01');
INSERT INTO `actividad` VALUES ('62', 'Cambió de Estatus de la actividad Yoli (Prueba) del Proyecto Pendientes del Sistema a ', 'ycastro', '2014-08-27 04:57:52');
INSERT INTO `actividad` VALUES ('63', 'Ha iniciado sesión', 'zama', '2014-08-30 06:04:17');
INSERT INTO `actividad` VALUES ('64', 'Cambió de Estatus de la actividad Dar capacitación del sistema del Proyecto Proyecto 1 a Inactivo', 'zama', '2014-08-30 06:04:36');
INSERT INTO `actividad` VALUES ('65', 'Se completó el proyecto: Proyecto 1', 'zama', '2014-08-30 06:04:44');
INSERT INTO `actividad` VALUES ('66', 'Cambió de Estatus de la actividad Segunda actividad del Proyecto Proyecto 1 a Inactivo', 'zama', '2014-08-30 06:04:44');
INSERT INTO `actividad` VALUES ('67', 'Cambió de Estatus de la actividad Dar capacitación del sistema del Proyecto Proyecto 1 a Activo', 'zama', '2014-08-30 06:04:48');
INSERT INTO `actividad` VALUES ('68', 'Cambió de Estatus de la actividad Segunda actividad del Proyecto Proyecto 1 a Activo', 'zama', '2014-08-30 06:04:50');
INSERT INTO `actividad` VALUES ('69', 'Cambió de Estatus de la actividad Prueba Ayuda del Proyecto Pendientes del Sistema a Activo', 'zama', '2014-08-30 06:05:10');
INSERT INTO `actividad` VALUES ('70', 'Ha iniciado sesión', 'zama', '2014-09-27 05:08:13');
INSERT INTO `actividad` VALUES ('71', 'Cambió de Estatus de la actividad Gráfica de avance por usuario (Barras) del Proyecto Pendientes del Sistema a Inactivo', 'zama', '2014-09-27 05:09:49');
INSERT INTO `actividad` VALUES ('72', 'Cambió de Estatus de la actividad Categorizar los proyectos del Proyecto Pendientes del Sistema a Inactivo', 'zama', '2014-09-27 05:10:13');
INSERT INTO `actividad` VALUES ('73', 'Cambió de Estatus de la actividad Otra actividad más del Proyecto Pendientes del Sistema a ', 'zama', '2014-09-27 05:11:12');
INSERT INTO `actividad` VALUES ('74', 'Ha iniciado sesión', 'zama', '2014-10-16 10:12:47');
INSERT INTO `actividad` VALUES ('75', 'Ha iniciado sesión', 'zama', '2014-10-16 12:28:16');
INSERT INTO `actividad` VALUES ('76', 'Ha iniciado sesión', 'zama', '2014-10-17 04:31:55');
INSERT INTO `actividad` VALUES ('77', 'Ha iniciado sesión', 'zama', '2014-11-13 02:40:08');
INSERT INTO `actividad` VALUES ('78', 'Ha iniciado sesión', 'zama', '2014-11-13 02:47:00');
INSERT INTO `actividad` VALUES ('79', 'Cambió de Estatus de la actividad Gráfica de cantidad de proyectos por categorías del Proyecto Pendientes del Sistema a Inactivo', 'zama', '2014-11-13 02:48:47');
INSERT INTO `actividad` VALUES ('80', 'Cambió de Estatus de la actividad Cuando pidan apoyo de otro proyecto mandar correo del Proyecto Pendientes del Sistema a Inactivo', 'zama', '2014-11-13 02:48:56');
INSERT INTO `actividad` VALUES ('81', 'Cambió de Estatus de la actividad Hacer presentación de Yii del Proyecto Pendientes del Sistema a ', 'zama', '2014-11-13 02:50:00');
INSERT INTO `actividad` VALUES ('82', 'Cambió de Estatus de la actividad Hacer presentación de Yii del Proyecto Pendientes del Sistema a Inactivo', 'zama', '2014-11-13 02:50:10');
INSERT INTO `actividad` VALUES ('83', 'Ha iniciado sesión', 'zama', '2014-11-19 06:01:47');
INSERT INTO `actividad` VALUES ('84', 'Ha iniciado sesión', 'zama', '2015-03-05 14:21:46');
INSERT INTO `actividad` VALUES ('85', 'Cambió de Estatus de la actividad Segunda actividad del Proyecto Proyecto 1 a Activo', 'zama', '2015-03-06 14:53:15');
INSERT INTO `actividad` VALUES ('86', 'Cambió de Estatus de la actividad Dar capacitación del sistema del Proyecto Proyecto 1 a Inactivo', 'zama', '2015-03-06 14:54:10');
INSERT INTO `actividad` VALUES ('87', 'Cambió de Estatus de la actividad Dar capacitación del sistema del Proyecto Proyecto 1 a Activo', 'zama', '2015-03-06 14:58:23');
INSERT INTO `actividad` VALUES ('88', 'Cambió de Estatus de la actividad Dar capacitación del sistema del Proyecto Proyecto 1 a Inactivo', 'zama', '2015-03-06 14:58:29');
INSERT INTO `actividad` VALUES ('89', 'Cambió de Estatus de la actividad Dar capacitación del sistema del Proyecto Proyecto 1 a Activo', 'zama', '2015-03-06 14:59:00');
INSERT INTO `actividad` VALUES ('90', 'Cambió de Estatus de la actividad Dar capacitación del sistema del Proyecto Proyecto 1 a Inactivo', 'zama', '2015-03-06 14:59:08');
INSERT INTO `actividad` VALUES ('91', 'Cambió de Estatus de la actividad Dar capacitación del sistema del Proyecto Proyecto 1 a Activo', 'zama', '2015-03-06 15:04:19');
INSERT INTO `actividad` VALUES ('92', 'Cambió de Estatus de la actividad Dar capacitación del sistema del Proyecto Proyecto 1 a Inactivo', 'zama', '2015-03-06 15:04:28');
INSERT INTO `actividad` VALUES ('93', 'Cambió de Estatus de la actividad Dar capacitación del sistema del Proyecto Proyecto 1 a Activo', 'zama', '2015-03-06 15:05:13');
INSERT INTO `actividad` VALUES ('94', 'Cambió de Estatus de la actividad Dar capacitación del sistema del Proyecto Proyecto 1 a Inactivo', 'zama', '2015-03-06 15:07:17');
INSERT INTO `actividad` VALUES ('95', 'Cambió de Estatus de la actividad Dar capacitación del sistema del Proyecto Proyecto 1 a Activo', 'zama', '2015-03-06 15:07:32');
INSERT INTO `actividad` VALUES ('96', 'Cambió de Estatus de la actividad Dar capacitación del sistema del Proyecto Proyecto 1 a Inactivo', 'zama', '2015-03-06 16:21:36');
INSERT INTO `actividad` VALUES ('97', 'Cambió de Estatus de la actividad Dar capacitación del sistema del Proyecto Proyecto 1 a Activo', 'zama', '2015-03-06 16:22:02');
INSERT INTO `actividad` VALUES ('98', 'Cambió de Estatus de la actividad Dar capacitación del sistema del Proyecto Proyecto 1 a Inactivo', 'zama', '2015-03-06 16:22:17');
INSERT INTO `actividad` VALUES ('99', 'Cambió de Estatus de la actividad Dar capacitación del sistema del Proyecto Proyecto 1 a Activo', 'zama', '2015-03-06 16:39:31');
INSERT INTO `actividad` VALUES ('100', 'Cambió de Estatus de la actividad Dar capacitación del sistema del Proyecto Proyecto 1 a Inactivo', 'zama', '2015-03-06 16:39:43');
INSERT INTO `actividad` VALUES ('101', 'Cambió de Estatus de la actividad Dar capacitación del sistema del Proyecto Proyecto 1 a Activo', 'zama', '2015-03-06 16:44:50');
INSERT INTO `actividad` VALUES ('102', 'Cambió de Estatus de la actividad Dar capacitación del sistema del Proyecto Proyecto 1 a Inactivo', 'zama', '2015-03-06 16:44:57');
INSERT INTO `actividad` VALUES ('103', 'Cambió de Estatus de la actividad Dar capacitación del sistema del Proyecto Proyecto 1 a Activo', 'zama', '2015-03-06 16:45:48');
INSERT INTO `actividad` VALUES ('104', 'Ha iniciado sesión', 'zama', '2015-03-09 11:58:15');
INSERT INTO `actividad` VALUES ('105', 'Cambió de Estatus de la actividad Dar capacitación del sistema del Proyecto Proyecto 1 a Inactivo', 'zama', '2015-03-09 14:33:39');
INSERT INTO `actividad` VALUES ('106', 'Cambió de Estatus de la actividad Dar capacitación del sistema del Proyecto Proyecto 1 a Activo', 'zama', '2015-03-10 08:42:23');
INSERT INTO `actividad` VALUES ('107', 'Cambió de Estatus de la actividad Dar capacitación del sistema del Proyecto Proyecto 1 a Inactivo', 'zama', '2015-03-10 08:47:49');
INSERT INTO `actividad` VALUES ('108', 'Ha iniciado sesión', 'zama', '2015-03-12 13:16:56');
INSERT INTO `actividad` VALUES ('109', 'Ha iniciado sesión', 'zama', '2015-03-18 14:56:05');
INSERT INTO `actividad` VALUES ('110', 'Ha cerrado sesión', 'zama', '2015-03-18 17:04:01');
INSERT INTO `actividad` VALUES ('111', 'Ha iniciado sesión', 'zama', '2015-03-18 17:05:07');
INSERT INTO `actividad` VALUES ('112', 'Ha cerrado sesión', 'zama', '2015-03-18 17:05:43');
INSERT INTO `actividad` VALUES ('113', 'Ha iniciado sesión', 'edgar', '2015-03-18 17:05:52');
INSERT INTO `actividad` VALUES ('114', 'Ha cerrado sesión', 'edgar', '2015-03-18 17:45:26');
INSERT INTO `actividad` VALUES ('115', 'Ha iniciado sesión', 'zama', '2015-03-18 17:45:33');

-- ----------------------------
-- Table structure for `ayuda`
-- ----------------------------
DROP TABLE IF EXISTS `ayuda`;
CREATE TABLE `ayuda` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ayuda
-- ----------------------------
INSERT INTO `ayuda` VALUES ('1', 'Aceptada');
INSERT INTO `ayuda` VALUES ('2', 'Rechazada');
INSERT INTO `ayuda` VALUES ('3', 'Pendiente');

-- ----------------------------
-- Table structure for `categoria`
-- ----------------------------
DROP TABLE IF EXISTS `categoria`;
CREATE TABLE `categoria` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL DEFAULT '',
  `descripcion` text NOT NULL,
  `estatus_did` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `categoria_estatus` (`estatus_did`),
  CONSTRAINT `categoria_estatus` FOREIGN KEY (`estatus_did`) REFERENCES `estatus` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of categoria
-- ----------------------------
INSERT INTO `categoria` VALUES ('1', 'Social', 'Aquí irán los proyectos de carácter Social', '1');
INSERT INTO `categoria` VALUES ('2', 'Construcción', 'Aquí irán los proyectos del ámbito de la construcción', '1');
INSERT INTO `categoria` VALUES ('3', 'Informática', 'Aquí irán los proyectos de Sistemas', '1');
INSERT INTO `categoria` VALUES ('6', 'Proyecto Ejecutivo', 'Aquí irán los proyectos ejecutivos', '1');

-- ----------------------------
-- Table structure for `comentario`
-- ----------------------------
DROP TABLE IF EXISTS `comentario`;
CREATE TABLE `comentario` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `detalleProyecto_did` int(11) unsigned NOT NULL,
  `descripcion` text,
  `estatus_did` int(11) unsigned NOT NULL,
  `fechaCreacion_f` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `comentario_detalleproyecto` (`detalleProyecto_did`),
  KEY `comentario_estatus` (`estatus_did`),
  CONSTRAINT `comentario_detalleproyecto` FOREIGN KEY (`detalleProyecto_did`) REFERENCES `detalleproyecto` (`id`),
  CONSTRAINT `comentario_estatus` FOREIGN KEY (`estatus_did`) REFERENCES `estatus` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comentario
-- ----------------------------

-- ----------------------------
-- Table structure for `detalleproyecto`
-- ----------------------------
DROP TABLE IF EXISTS `detalleproyecto`;
CREATE TABLE `detalleproyecto` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL DEFAULT '',
  `proyecto_did` int(10) unsigned NOT NULL,
  `peso` int(11) DEFAULT NULL,
  `estatus_did` int(10) unsigned NOT NULL,
  `responsable_did` int(10) unsigned NOT NULL,
  `descripcion` text,
  `costo` float(20,0) DEFAULT NULL,
  `fechaInicio_ft` datetime DEFAULT NULL,
  `fechaFin_ft` datetime DEFAULT NULL,
  `fechaFinalizado` datetime DEFAULT NULL,
  `ayuda_did` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `detalleproyecto_proyecto` (`proyecto_did`),
  KEY `detalleproyecto_estatus` (`estatus_did`),
  KEY `detalleproyecto_responsable` (`responsable_did`),
  KEY `detalleproyecto_ayuda` (`ayuda_did`),
  CONSTRAINT `detalleproyecto_ayuda` FOREIGN KEY (`ayuda_did`) REFERENCES `ayuda` (`id`),
  CONSTRAINT `detalleproyecto_estatus` FOREIGN KEY (`estatus_did`) REFERENCES `estatus` (`id`),
  CONSTRAINT `detalleproyecto_proyecto` FOREIGN KEY (`proyecto_did`) REFERENCES `proyecto` (`id`),
  CONSTRAINT `detalleproyecto_responsable` FOREIGN KEY (`responsable_did`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of detalleproyecto
-- ----------------------------
INSERT INTO `detalleproyecto` VALUES ('1', 'Dar capacitación del sistema', '1', '1', '2', '17', 'asdasdasdadasd', '200', '2014-06-28 00:00:00', '2014-06-30 00:00:00', '2015-03-10 08:47:46', null);
INSERT INTO `detalleproyecto` VALUES ('2', 'Segunda actividad', '1', '2', '1', '11', 'asdasdasdasd', '200', '2014-06-28 00:00:00', '2014-06-30 00:00:00', null, '3');
INSERT INTO `detalleproyecto` VALUES ('3', 'Gráfica de avance por usuario (Barras)', '4', '3', '2', '17', '', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', null, null);
INSERT INTO `detalleproyecto` VALUES ('4', 'Categorizar los proyectos', '4', '2', '2', '17', '', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', null, null);
INSERT INTO `detalleproyecto` VALUES ('5', 'Gráfica de cantidad de proyectos por categorías', '4', '4', '2', '17', '', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', null, null);
INSERT INTO `detalleproyecto` VALUES ('6', 'Agregar comentarios y poner el nombre de quien resuelve y el estatus en DETENIDO (con rojo)', '4', '3', '3', '17', '', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', null, null);
INSERT INTO `detalleproyecto` VALUES ('7', 'Cuando pidan apoyo de otro proyecto mandar correo', '4', '4', '2', '17', '', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', null, null);
INSERT INTO `detalleproyecto` VALUES ('9', 'Prueba Ayuda', '4', '2', '1', '12', '', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', null, '3');
INSERT INTO `detalleproyecto` VALUES ('10', 'Yoli (Prueba)', '4', '4', '3', '12', '', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', null, '3');
INSERT INTO `detalleproyecto` VALUES ('11', 'Otra actividad más', '4', '2', '3', '17', '', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', null, null);
INSERT INTO `detalleproyecto` VALUES ('12', 'Hacer presentación de Yii', '4', '1', '2', '17', '', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', null, null);

-- ----------------------------
-- Table structure for `documento`
-- ----------------------------
DROP TABLE IF EXISTS `documento`;
CREATE TABLE `documento` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `proyecto_did` int(10) unsigned NOT NULL,
  `ruta` varchar(100) NOT NULL DEFAULT '',
  `estatus_did` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `documento_estatus` (`estatus_did`),
  KEY `documento_proyecto` (`proyecto_did`),
  CONSTRAINT `documento_estatus` FOREIGN KEY (`estatus_did`) REFERENCES `estatus` (`id`),
  CONSTRAINT `documento_proyecto` FOREIGN KEY (`proyecto_did`) REFERENCES `proyecto` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of documento
-- ----------------------------
INSERT INTO `documento` VALUES ('1', '1', '0.92864300 1404231899Captura de pantalla 2014-06-09 a la(s) 10.42.14.png.png', '1');
INSERT INTO `documento` VALUES ('3', '1', '0.75222500 1404231903Captura de pantalla 2014-06-09 a la(s) 12.30.35.png.png', '1');
INSERT INTO `documento` VALUES ('4', '1', '0.77296900 1404231903Captura de pantalla 2014-06-11 a la(s) 19.03.35.png.png', '1');

-- ----------------------------
-- Table structure for `estatus`
-- ----------------------------
DROP TABLE IF EXISTS `estatus`;
CREATE TABLE `estatus` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT '',
  `tipo` varchar(100) DEFAULT NULL,
  `fechaCreacion_f` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of estatus
-- ----------------------------
INSERT INTO `estatus` VALUES ('1', 'Activo', 'Pendiente', '2014-01-02 00:48:50');
INSERT INTO `estatus` VALUES ('2', 'Inactivo', 'Realizada', '2014-01-02 00:48:53');
INSERT INTO `estatus` VALUES ('3', '', 'Urgente', '2014-08-18 11:22:19');

-- ----------------------------
-- Table structure for `evento`
-- ----------------------------
DROP TABLE IF EXISTS `evento`;
CREATE TABLE `evento` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL DEFAULT '',
  `descripcion` varchar(100) NOT NULL DEFAULT '',
  `fechaInicio_ft` datetime NOT NULL,
  `fechaFin_ft` datetime NOT NULL,
  `estatus_did` int(11) NOT NULL,
  `usuario_did` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `evento_usuario` (`usuario_did`),
  CONSTRAINT `evento_usuario` FOREIGN KEY (`usuario_did`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of evento
-- ----------------------------
INSERT INTO `evento` VALUES ('1', 'Sesión de capacitación ', '', '2014-07-02 00:00:00', '0000-00-00 00:00:00', '2', null);
INSERT INTO `evento` VALUES ('2', 'kjkj.hlkjlk', '', '2014-07-09 00:00:00', '2014-07-09 00:00:00', '2', null);
INSERT INTO `evento` VALUES ('3', 'Aquí voy a poner una acción', '', '2014-07-15 00:00:00', '2014-07-15 00:00:00', '2', null);
INSERT INTO `evento` VALUES ('4', 'Ulises', '', '2014-07-01 00:00:00', '2014-07-01 00:00:00', '2', null);
INSERT INTO `evento` VALUES ('5', 'hola', '', '2014-07-08 00:00:00', '2014-07-08 00:00:00', '2', null);

-- ----------------------------
-- Table structure for `proyecto`
-- ----------------------------
DROP TABLE IF EXISTS `proyecto`;
CREATE TABLE `proyecto` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `categoria_did` int(10) unsigned DEFAULT NULL,
  `nombre` varchar(100) NOT NULL DEFAULT '',
  `descripcion` text,
  `costo` float(20,0) DEFAULT NULL,
  `tipoFondo_did` int(10) unsigned NOT NULL,
  `fechaInicio_ft` datetime DEFAULT NULL,
  `fechaFin_ft` datetime DEFAULT NULL,
  `responsable_did` int(10) unsigned NOT NULL,
  `estatus_did` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `proyecto_usuario` (`responsable_did`),
  KEY `proyecto_estatus` (`estatus_did`),
  KEY `proyecto_tipoFondo` (`tipoFondo_did`),
  CONSTRAINT `proyecto_estatus` FOREIGN KEY (`estatus_did`) REFERENCES `estatus` (`id`),
  CONSTRAINT `proyecto_tipoFondo` FOREIGN KEY (`tipoFondo_did`) REFERENCES `tipofondo` (`id`),
  CONSTRAINT `proyecto_usuario` FOREIGN KEY (`responsable_did`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of proyecto
-- ----------------------------
INSERT INTO `proyecto` VALUES ('1', '1', 'Proyecto 1', '<p>Esta es la descripción del proyecto.<span></span></p>', '2000000', '1', '2014-06-26 00:00:00', '2014-07-17 00:00:00', '17', '1');
INSERT INTO `proyecto` VALUES ('2', '1', 'Otro Proyecto', '<p>Aquí va la descripción del otro proyecto.<span></span></p>', '0', '1', '2014-06-20 00:00:00', '2014-08-29 00:00:00', '16', '1');
INSERT INTO `proyecto` VALUES ('3', '2', 'Líneas de avance de actividades', '<p>Aquí va la descripción</p>', '0', '1', '2014-06-28 00:00:00', '2014-07-26 00:00:00', '17', '1');
INSERT INTO `proyecto` VALUES ('4', '3', 'Pendientes del Sistema', '<p>Tengo que agregar esto...</p>', '0', '1', '2014-06-18 00:00:00', '2014-07-12 00:00:00', '17', '1');

-- ----------------------------
-- Table structure for `tipofondo`
-- ----------------------------
DROP TABLE IF EXISTS `tipofondo`;
CREATE TABLE `tipofondo` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tipofondo
-- ----------------------------
INSERT INTO `tipofondo` VALUES ('1', 'Algun tipo de fondo');
INSERT INTO `tipofondo` VALUES ('2', 'Otro tipo de fondo');

-- ----------------------------
-- Table structure for `tipousuario`
-- ----------------------------
DROP TABLE IF EXISTS `tipousuario`;
CREATE TABLE `tipousuario` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL DEFAULT '',
  `estatus_did` int(11) unsigned NOT NULL,
  `fechaCreacion_f` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `tipoUsuario_estatus` (`estatus_did`),
  CONSTRAINT `tipoUsuario_estatus` FOREIGN KEY (`estatus_did`) REFERENCES `estatus` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tipousuario
-- ----------------------------
INSERT INTO `tipousuario` VALUES ('1', 'Administrador', '1', '2014-01-02 02:14:40');
INSERT INTO `tipousuario` VALUES ('2', 'Guest', '1', '2014-01-02 02:14:54');
INSERT INTO `tipousuario` VALUES ('3', 'Proyecto', '1', '2014-01-02 02:15:03');

-- ----------------------------
-- Table structure for `usuario`
-- ----------------------------
DROP TABLE IF EXISTS `usuario`;
CREATE TABLE `usuario` (
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
  CONSTRAINT `usuario_estatus` FOREIGN KEY (`estatus_did`) REFERENCES `estatus` (`id`),
  CONSTRAINT `usuario_tipoUsuario` FOREIGN KEY (`tipoUsuario_did`) REFERENCES `tipousuario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usuario
-- ----------------------------
INSERT INTO `usuario` VALUES ('1', 'Guest', 'Invitado', '123', null, '2', '1', '2014-01-02 02:18:04');
INSERT INTO `usuario` VALUES ('11', 'edgar', 'Edgar Kelly', '123', null, '1', '1', '2014-02-12 09:37:41');
INSERT INTO `usuario` VALUES ('12', 'ycastro', 'Yoli Castro', '123', '20140815_2140_20140722_1425__Captura_de_pantalla_2014-07-02_a_la(s)_22.56.54.png', '1', '1', '2014-05-20 19:45:23');
INSERT INTO `usuario` VALUES ('16', 'otro', 'Otro', '123', null, '3', '2', '2014-05-30 04:41:39');
INSERT INTO `usuario` VALUES ('17', 'zama', 'Roberto Zamarripa', '123', null, '1', '1', '2014-06-04 06:12:01');

-- ----------------------------
-- Table structure for `yiilog`
-- ----------------------------
DROP TABLE IF EXISTS `yiilog`;
CREATE TABLE `yiilog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `level` varchar(128) DEFAULT NULL,
  `category` varchar(128) DEFAULT NULL,
  `logtime` int(11) DEFAULT NULL,
  `message` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yiilog
-- ----------------------------
