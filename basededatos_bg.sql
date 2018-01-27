-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 25, 2018 at 11:37 AM
-- Server version: 5.6.32-78.1
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `roomlove_proyecto`
--

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE IF NOT EXISTS `banner` (
  `id` int(11) NOT NULL,
  `img` varchar(200) DEFAULT NULL,
  `activo` int(1) DEFAULT NULL,
  `tituloa` varchar(30) DEFAULT NULL,
  `titulob` varchar(30) DEFAULT NULL,
  `texto` varchar(100) DEFAULT NULL,
  `btna` varchar(15) DEFAULT NULL,
  `btnb` varchar(15) DEFAULT NULL,
  `urla` varchar(100) DEFAULT NULL,
  `urlb` varchar(100) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `img`, `activo`, `tituloa`, `titulob`, `texto`, `btna`, `btnb`, `urla`, `urlb`) VALUES
(4, 'upload/2017_12_19_01.22.25fondo.jpg.jpg', 1, 'Ahora con nueva Imagen', NULL, 'La renovación es una cualidad de vida, un preámbulo<br> al crecimiento y a los cambios positivos', 'Leer más', 'Contactar', '#nosotros', '#contact'),
(5, 'upload/2017_11_23_02.11.20fondo.jpg.jpg', 1, 'Brindamos soluciones', 'Integrales', 'Gestión de Talento, Finanzas y Tecnología.', 'Leer más', 'Contactar', '#nosotros', '#contact');

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE IF NOT EXISTS `blog` (
  `id` int(11) NOT NULL,
  `img` varchar(200) DEFAULT NULL,
  `titulo` varchar(100) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `descripcion` varchar(500) DEFAULT NULL,
  `texto` varchar(10000) DEFAULT NULL,
  `categoriablog_id` int(100) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `img`, `titulo`, `fecha`, `descripcion`, `texto`, `categoriablog_id`) VALUES
(3, 'upload/2018_01_22_02.47.46Bitcoin.png.png', 'Principios Fundamentales Del Bitcoin', '2018-01-22', 'Descubra los principios fundamentales del Bitcoin y sus principales conceptos', '<p>&iquest;Qu&eacute; es el Bitcoin?</p>\r\n\r\n<p>El Bitcoin: es una criptomoneda, sistema de pago y mercanc&iacute;a. El t&eacute;rmino se aplica tambi&eacute;n al protocolo y a la red P2P que lo sustenta, y de forma com&uacute;n se denomina como una moneda digital. Concebida en 2009 se desconoce la identidad &uacute;ltima de su creador o creadores, apareciendo con el seud&oacute;nimo de Satoshi Nakamoto. Bitcoin, y en general las criptomonedas, son un proyecto innovador en constante evoluci&oacute;n y cambio. Existe un cierto consenso en el potencial de la criptomoneda o dinero digital, augurando un futuro en el que estas pasar&aacute;n a constituirse en un sistema de<br />\r\nintercambio universal.</p>\r\n\r\n<p>Caracter&iacute;sticas del Bitcoin</p>\r\n\r\n<p>Bitcoin se caracteriza por ser descentralizado, no est&aacute; respaldado por ning&uacute;n gobierno o banco central y &quot;carece de seguridad jur&iacute;dica&quot;. Utiliza un sistema de prueba de trabajo para impedir el doble gasto (que un mismo bitcoin sea utilizado varias veces). El car&aacute;cter del bitcoin es altamente especulativo, desregulado, por lo que escapa a cualquier control fuera del propio sistema bitcoin, estando su futuro en entredicho. Expertos le atribuyen un valor cero, con signos de haber sobrepasado los umbrales que le llevar&iacute;an al desplome. En este caso, al no estar respaldado por ning&uacute;n bien tangible, gobierno, entidad financiera o econ&oacute;mica, sus poseedores se encontrar&iacute;an indefensos.</p>\r\n\r\n<p>Curiosidades</p>\r\n\r\n<p>Millones: la cantidad de unidades nunca podr&aacute; exceder los 21 millones de Bitcoines.</p>\r\n\r\n<p>Censura: nadie puede prohibir o censurar transacciones v&aacute;lidas.</p>\r\n\r\n<p>C&oacute;digo abierto: el c&oacute;digo fuente de Bitcoin siempre debe ser accesible para todos.</p>\r\n\r\n<p>Sin Permiso: nadie puede&nbsp;impedir la participaci&oacute;n en la red.</p>\r\n\r\n<p>An&oacute;nimo: no se requiere identificaci&oacute;n para participar en la red Bitcoin.</p>\r\n\r\n<p>Pagos irreversibles: las transacciones confirmadas no pueden ser modificadas ni eliminadas. Se genera un hist&oacute;rico.</p>\r\n\r\n<p>Permutable: cada unidad es&nbsp;intercambiable.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 1);

-- --------------------------------------------------------

--
-- Table structure for table `categoriablog`
--

CREATE TABLE IF NOT EXISTS `categoriablog` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categoriablog`
--

INSERT INTO `categoriablog` (`id`, `nombre`) VALUES
(1, 'Negocio');

-- --------------------------------------------------------

--
-- Table structure for table `categorias`
--

CREATE TABLE IF NOT EXISTS `categorias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `label` varchar(50) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`, `label`) VALUES
(1, 'INGENIERÍA Y CONSTRUCCIÓN', 'ingconstruccion'),
(2, ' TECNOLOGÍA Y TELECOMUNICACIONES', 'tecnologia'),
(3, 'ASOCIACIONES Y FUNDACIONES', 'asociacionesfundaciones'),
(4, 'SERVICIOS', 'services'),
(5, 'SALUD', 'salud'),
(6, 'INDUSTRIAL Y CONSUMO MASIVO', 'indconsumasivo'),
(7, 'TURISMO Y RESTAURANTE', 'turisrest'),
(8, ' BANCA Y SEGUROS', 'bancaseg'),
(9, 'TRANSPORTE', 'transporte'),
(10, ' OTROS', 'otros');

-- --------------------------------------------------------

--
-- Table structure for table `clientes`
--

CREATE TABLE IF NOT EXISTS `clientes` (
  `id` int(11) NOT NULL,
  `img` varchar(200) DEFAULT NULL,
  `categorias_id` int(11) DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=65 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clientes`
--

INSERT INTO `clientes` (`id`, `img`, `categorias_id`, `nombre`) VALUES
(1, 'upload/2017_11_21_01.04.101.png.png', 1, 'Otepi'),
(2, 'upload/2017_11_21_01.12.532.png.png', 1, 'Consorcio de Ingeniería Caroni II'),
(3, 'upload/2017_11_21_01.13.503.png.png', 1, 'Lena Construcoes'),
(4, 'upload/2017_11_21_01.14.244.png.png', 1, 'Pilperca'),
(5, 'upload/2017_11_21_01.15.005.png.png', 1, 'INECO'),
(6, 'upload/2017_11_22_10.29.446.png.png', 1, 'Instalaciones y Servicios Codeven C.A.'),
(7, 'upload/2017_11_22_10.37.427.png.png', 1, 'Geoconstruye'),
(8, 'upload/2017_11_22_11.08.428.png.png', 1, 'inelectra'),
(9, 'upload/2017_12_15_05.03.51Juana la loca.jpg.jpg', 7, 'Juana la Loca'),
(10, 'upload/2017_12_15_05.12.41DMC Catering.jpg.jpg', 7, 'DMC Catering'),
(11, 'upload/2017_12_15_05.13.04Eurobuilding.png.png', 7, 'Eurobuilding'),
(12, 'upload/2017_12_15_05.13.50Hippocampus.jpg.jpg', 7, 'Hippocampus Vacation Club'),
(13, 'upload/2017_12_15_05.14.17Hotel Tibisay.png.png', 7, 'Tibisay'),
(14, 'upload/2017_12_15_05.14.50Margarita Dynasty.png.png', 7, 'Dynasty'),
(15, 'upload/2017_12_15_05.15.09Protocolo Tours.jpg.jpg', 7, 'Protocolo Tours'),
(16, 'upload/2017_12_15_05.15.26Tutto chef.jpg.jpg', 7, 'Tutto Chef'),
(17, 'upload/2017_12_15_05.26.28CAM.png.png', 6, 'CAM'),
(18, 'upload/2017_12_15_05.26.50Candyven.png.png', 6, 'Candyven'),
(19, 'upload/2017_12_15_05.27.07Dierck.jpg.jpg', 6, 'Dierck'),
(20, 'upload/2017_12_15_05.27.22Farmatodo.png.png', 6, 'Farmatodo'),
(21, 'upload/2017_12_15_05.28.37Faucets.png.png', 6, 'Faucets'),
(22, 'upload/2017_12_15_05.28.57Hercules.png.png', 6, 'Hercules'),
(23, 'upload/2017_12_15_05.33.38Iskia.png.png', 6, 'Iskia'),
(24, 'upload/2017_12_15_05.34.07Johnson.png.png', 6, 'Jhonson'),
(25, 'upload/2017_12_15_05.34.34Mattel.png.png', 6, 'Mattel'),
(26, 'upload/2017_12_15_05.34.52Regional.png.png', 6, 'Regional'),
(27, 'upload/2017_12_15_05.35.11Suministros industriales.png.png', 6, 'Suministros Insdustriales FRP'),
(28, 'upload/2017_12_18_04.41.42CAF.jpg.jpg', 10, 'CAF'),
(29, 'upload/2017_12_18_04.42.09Corporacion Inveca.png.png', 10, 'Corporación Inveca'),
(30, 'upload/2017_12_18_04.45.39IPSFA.png.png', 10, 'IPSFA'),
(31, 'upload/2017_12_18_04.44.02Las villas.png.png', 10, 'Las Villas'),
(32, 'upload/2017_12_18_04.45.08Asegure.png.png', 8, 'Asegure'),
(33, 'upload/2017_12_18_04.46.10Del sur.png.png', 8, 'Del Sur'),
(34, 'upload/2017_12_18_04.46.50Cestaticket.jpg.jpg', 4, 'Cestaticket'),
(35, 'upload/2017_12_18_04.47.44Directa.jpg.jpg', 4, 'Directa Group'),
(36, 'upload/2017_12_18_04.48.56Informadora Comercial.png.png', 4, 'Informadora Comercial'),
(37, 'upload/2017_12_18_04.50.43Empleate.png.png', 4, 'Empleate'),
(38, 'upload/2017_12_18_04.51.59Macambio gonzalez y asociados.jpg.jpg', 4, 'Macambio, Gonzalez y Asociados'),
(39, 'upload/2017_12_18_04.52.33Matchcode.png.png', 4, 'Matchcode'),
(40, 'upload/2017_12_18_04.53.03Venamerica.gif.gif', 4, 'Venamérica'),
(41, 'upload/2017_12_18_04.54.03Celeritech.png.png', 2, 'Celeritech'),
(42, 'upload/2017_12_18_04.54.35DirecTV.png.png', 2, 'DIRECTV'),
(43, 'upload/2017_12_18_04.55.40ISC Bunker Ramo.png.png', 2, 'ISC Bunker Ramo'),
(44, 'upload/2017_12_18_04.56.36Rockwell Automation.gif.gif', 2, 'Rockwell Automation'),
(45, 'upload/2017_12_18_04.57.33Expotran.jpg.jpg', 9, 'Expotran'),
(46, 'upload/2017_12_18_04.58.20Seaport.png.png', 9, 'Seaport'),
(47, 'upload/2017_12_18_04.58.48Taurel.png.png', 9, 'Taurel'),
(48, 'upload/2017_12_18_04.59.48Zoom.jpg.jpg', 9, 'Zoom'),
(49, 'upload/2017_12_18_05.00.45Transporte Jucavi.png.png', 9, 'Transporte Jucavi'),
(50, 'upload/2017_12_18_05.01.52Transporte Multicargas.jpg.jpg', 9, 'Transporte Multicargas'),
(51, 'upload/2018_01_09_05.58.49Imagen2.png.png', 5, 'Prosalud'),
(52, 'upload/2018_01_09_06.33.03Imagen4.jpg.jpg', 5, 'Novo Nordisk'),
(53, 'upload/2018_01_09_06.33.35Imagen5.jpg.jpg', 5, 'Natures Sunshine'),
(54, 'upload/2018_01_09_06.33.57Imagen6.gif.gif', 5, 'Roche'),
(55, 'upload/2018_01_09_06.34.15Imagen7.jpg.jpg', 5, 'Simbio'),
(56, 'upload/2018_01_09_06.34.39Imagen8.png.png', 5, 'Novartis'),
(57, 'upload/2018_01_09_06.36.47Imagen3.jpg.jpg', 5, 'Urológico San Román'),
(58, 'upload/2018_01_09_06.37.23Imagen9.jpg.jpg', 3, 'Cámara Venezolana Británica de Comercio'),
(59, 'upload/2018_01_09_06.37.38Imagen10.jpg.jpg', 3, 'IESA'),
(60, 'upload/2018_01_09_06.37.59Imagen11.jpg.jpg', 3, 'Autismo en Voz Alta'),
(61, 'upload/2018_01_09_06.38.27Imagen12.jpg.jpg', 3, 'Asociación Venezolana de Gestión Humana'),
(62, 'upload/2018_01_09_06.38.46Imagen13.jpg.jpg', 3, 'AVE'),
(63, 'upload/2018_01_09_06.39.12Imagen14.jpg.jpg', 3, 'Cavenal AHK'),
(64, 'upload/2018_01_09_06.39.37Imagen15.png.png', 3, 'C.A. La Industriosa');

-- --------------------------------------------------------

--
-- Table structure for table `cronologia`
--

CREATE TABLE IF NOT EXISTS `cronologia` (
  `id` int(11) NOT NULL,
  `titulo` varchar(1000) DEFAULT NULL,
  `texto` varchar(3000) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cronologia`
--

INSERT INTO `cronologia` (`id`, `titulo`, `texto`) VALUES
(1, '2004 B&G Business Services', 'Servicios de capital humano, administración de personal y capacitación de personal.'),
(2, '2010 B&G Consultores Corporativos', 'Servicios de consultoría en finanzas, tecnología y gestión de talento.'),
(3, '2011 B&G Consultores', 'Soluciones de monitoreo en las áreas de Administración y Gestión de Talento. Ejecución de proyectos de bussines intelligence.'),
(4, '2015 B&G Technologies, S. A.', 'Desarrollo de plataforma para planificar, gestionar, preservar y monitorear el proceso de formación y desarrollo profesional a través del aprendizaje e-learning.'),
(5, '2015 B&G Consulting and Technologies', 'Empresa constituida en Estados Unidos de Norteamérica, para ofrecer servicios integrales.'),
(6, '2015 B&G Panamá', 'Empresa constituida en la ciudad de Panamá, para ofrecer servicios integrales.'),
(7, '2017 Integración del Grupo B&G compuesta por líneas de negocios especializadas', 'Tecnología, Finanzas, Gestión de Talento, Suministros y Equipos.');

-- --------------------------------------------------------

--
-- Table structure for table `empleo`
--

CREATE TABLE IF NOT EXISTS `empleo` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `telefono` varchar(50) DEFAULT NULL,
  `correo` varchar(200) DEFAULT NULL,
  `profesion` varchar(100) DEFAULT NULL,
  `area` varchar(100) DEFAULT NULL,
  `grado` varchar(100) DEFAULT NULL,
  `coments` varchar(1000) DEFAULT NULL,
  `cv` varchar(200) DEFAULT NULL,
  `status` int(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `equipo`
--

CREATE TABLE IF NOT EXISTS `equipo` (
  `id` int(11) NOT NULL,
  `img` varchar(200) DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `cargo` varchar(100) DEFAULT NULL,
  `texto` varchar(5000) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `equipo`
--

INSERT INTO `equipo` (`id`, `img`, `nombre`, `cargo`, `texto`) VALUES
(1, 'upload/2017_12_15_01.34.37trabajar.png.png', 'Vida en Be Great', 'PRESIDENTE', '<p>Nuestra gente, experiencia y cultura joven hacen de Be Great uno de los mejores lugares para trabajar. Creemos fielmente en las capacidades y potencial cada integrante de la familia BG, nuestra cultura esta basada en el trabajo en equipo, la pasi&oacute;n y entusiasmo que ponemos en nuestro trabajo, el compromiso con la excelencia, la &eacute;tica y sobre todo la innovaci&oacute;n. Somos fieles creyentes de que si no cambias te extingues.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Contamos con nuestros propios 10 mandamientos:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt="" src="http://steffdesign.com/bg/img/upload/2017-12-15_13-32-58_0.png" style="width:100%" /></p>\r\n'),
(2, 'upload/2017_12_15_01.35.57desafios.png.png', 'Desafíos Be Great', 'DIRECTOR GENERAL VENEZUELA', '<p>Una vida en Be Great te permitir&aacute; desarrollarte tanto profesional como personalmente en una consultora internacional que trabaja de la mano con los l&iacute;deres de las organizaciones para producir cambios positivos en sus procesos y su gente.</p>\r\n\r\n<p>Podr&aacute;s sentir la satisfacci&oacute;n de pertenecer a un equipo de personas que por m&aacute;s de 12 a&ntilde;os han realizando cambios que verdaderamente transforman a las organizaciones en lugares m&aacute;s eficientes. Siendo pioneros en integrar las metodolog&iacute;as cl&aacute;sicas de la consultor&iacute;a y las capacidades innovadoras de una empresa de desarrollo de software.</p>\r\n\r\n<p>Nuestros clientes provienen de los sectores p&uacute;blicos, privados y sin &aacute;nimos de lucro en todas las industrias lo que representar&aacute; para ti diferentes retos profesionales.</p>\r\n\r\n<p>Pertenecer&aacute;s a una empresa innovadora, joven, flexible y apasionada por lo que hace, que se preocupa no solo por el desarrollo de sus clientes sino tambi&eacute;n por el de su gente.</p>\r\n'),
(3, 'upload/2017_12_19_11.33.00bene.jpg.jpg', 'Calidad de vida y Beneficios', 'EJECUTIVO LÍNEA DE FORMACIÓN', '<p>Contamos con un clima laboral basado en la confianza y el compromiso, somos una empresa innovadora por ende nuestra din&aacute;mica es de retos constantes, siempre a la vanguardia y muy activos de los cambios que mueven el mundo.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Entre nuestros beneficios se destacan:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- Financiamiento Educativo</p>\r\n\r\n<p>- Pr&eacute;stamos Personales</p>\r\n\r\n<p>- Financiamiento Veh&iacute;culo</p>\r\n\r\n<p>- Horario Flexible</p>\r\n\r\n<p>- Permisos Especiales</p>\r\n\r\n<p>- Sal&oacute;n Comedor</p>\r\n\r\n<p>- Sala de creaci&oacute;n &ldquo;Jedi&rdquo;</p>\r\n\r\n<p>- Sala de relajaci&oacute;n &ldquo;Zen&rdquo;</p>\r\n\r\n<p>- Transporte Corporativo</p>\r\n\r\n<p>- &Aacute;rea de esparcimiento con Play Station, Mesa de Ping-Pong, Juegos de mesa y mucho m&aacute;s</p>\r\n\r\n<p>- Entre otros beneficios y actividades de inter&eacute;s</p>\r\n'),
(4, 'upload/2017_12_19_11.25.44hands.jpg.jpg', 'Diversidad e Inclusión', 'EJECUTIVO LÍNEA DE INFORMÁTICA', '<p>En Be Great queremos ser grandiosos en todos los sentidos, por ello nos apasiona cumplir con compromiso y excelencia todos nuestros retos profesionales. Somos una empresa enfocada en cada d&iacute;a ser mejores y mantenernos a la vanguardia y atentos a los cambios que mueven al mundo y la gente, es por ello que nuestra cultura se encuentra llena de diversidad e inclusi&oacute;n, en BG hay espacio para todos aquellos dispuestos a innovar, a participar activamente en ideas que produzcan cambios trascendentales no solo en las organizaciones sino tambi&eacute;n en su gente.</p>\r\n\r\n<p>En nuestro d&iacute;a a d&iacute;a siempre se encuentran presentes nuestros valores:</p>\r\n\r\n<p><strong>Trabajo en equipo: </strong>porque estamos convencidos que juntos podemos m&aacute;s</p>\r\n\r\n<p><strong>Excelencia:</strong> siempre buscando la mejor versi&oacute;n de nosotros mismos</p>\r\n\r\n<p><strong>Pasi&oacute;n:</strong> hacemos las cosas desde el coraz&oacute;n y con el deseo de aportar a nuestros clientes lo mejor de nosotros</p>\r\n\r\n<p><strong>Compromiso: </strong>somos fieles a nuestra palabra y prop&oacute;sitos</p>\r\n\r\n<p><strong>&Eacute;tica:</strong> tenemos congruencia entre lo que predicamos y lo que hacemos</p>\r\n\r\n<p><strong>Innovaci&oacute;n:</strong> operamos bajo nuevas ideas convertidas en valor para nuestros clientes y colaboradores</p>\r\n\r\n<p><strong>Entusiasmo:</strong> nuestro estado de &aacute;nimo nos impulsa a la acci&oacute;n. Somos capaces de vencer los desaf&iacute;os<img alt="" src="C:UsersRiaconelliDocumentsDocumentos?1.Grupo B&amp;G?1.- MERCADEONUEVOLOGOSBeGreat.png" /></p>\r\n'),
(5, 'upload/2017_12_19_11.27.03aprendizaje.jpg.jpg', 'Aprendizaje y Desarrollo', 'EJECUTIVO LÍNEA DE CONSULTORÍA', '<p>En <strong>Be Great </strong>sabemos que para estar a la vanguardia y firmes ante los diversos cambios que d&iacute;a a d&iacute;a ocurren en el mundo es fundamental mantener a nuestra gente capacitada y en desarrollo constante, es por ellos que desarrollamos nuestra propia plataforma de capacitaci&oacute;n en l&iacute;nea&nbsp;<img alt="" src="http://steffdesign.com/bg/img/upload/2017-12-15_13-42-16_0.png" style="height:18px" />&nbsp;&nbsp;donde disponemos de una amplia y variada biblioteca de cursos de inter&eacute;s en las diversas &aacute;reas de la organizaci&oacute;n para asegurarnos que todos nuestros colaboradores se mantengan actualizados y en aprendizaje continuo.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Adicionalmente contamos con:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>-&nbsp;<strong>Inducci&oacute;n a Be Great: </strong>completa informaci&oacute;n institucional para apoyarte en tu ingreso a la organizaci&oacute;n.</p>\r\n\r\n<p>-&nbsp;<strong>Financiamientos y becas: </strong>para formaci&oacute;n especializada de nuestros Gerentes.</p>\r\n\r\n<p>-&nbsp;<strong>Capacitaci&oacute;n tradicional: </strong>presencial continua seg&uacute;n tu &aacute;rea de formaci&oacute;n.</p>\r\n\r\n<p>-&nbsp;<strong>Gesti&oacute;n de rendimiento: </strong>un sistema administrado a trav&eacute;s de evaluaciones donde se puede validar y llevar registro de tu avance dentro de la organizaci&oacute;n y dise&ntilde;ar tu plan de formaci&oacute;n a futuro.</p>\r\n\r\n<p><strong>- Programa de Consejeros: </strong>complementa la gesti&oacute;n de rendimiento al contar con personal altamente capacitado y calificado que promueven tu desarrollo profesional y de carrera dentro de la organizaci&oacute;n</p>\r\n'),
(6, 'upload/2017_12_19_11.28.33entrevista.jpg.jpg', 'Reclutamiento Be Great', 'DIRECTOR GENERAL PANAMÁ', '<p><strong>- Aprobaci&oacute;n del perfil para el cargo por parte del Gerente del &aacute;rea: </strong>la planilla de requisici&oacute;n de personal contiene todos los requisitos del perfil del candidato que se busca.</p>\r\n\r\n<p>-&nbsp;<strong>B&uacute;squeda de los candidatos: </strong>el reclutados ubica candidatos a trav&eacute;s de diversos medios de b&uacute;squedas para seleccionar al mejor candidato disponible.</p>\r\n\r\n<p>-&nbsp;<strong>Contacto con los candidatos: </strong>se contacta v&iacute;a telef&oacute;nica con cada candidato y se establece la cita para evaluaci&oacute;n y se sondean sus intereses, aspiraciones, posici&oacute;n actual, entre otros datos.</p>\r\n\r\n<p>-&nbsp;<strong>Aplicaci&oacute;n de pruebas: </strong>poseemos diversas bater&iacute;as de pruebas seg&uacute;n el &aacute;rea y cargo solicitado.</p>\r\n\r\n<p>-&nbsp;<strong>Entrevista: </strong>los candidatos que aprueben las evaluaciones ser&aacute;n seleccionados para la una primera entrevista.</p>\r\n\r\n<p>-&nbsp;<strong>Selecci&oacute;n candidatos: </strong>se tomar&aacute; una terna la cual seguir&aacute; el proceso a la entrevista t&eacute;cnica.</p>\r\n\r\n<p>-&nbsp;<strong>Entrevista t&eacute;cnica: </strong>los tres candidatos seleccionados (terna) ser&aacute;n entrevistados para evaluaci&oacute;n de sus capacidades t&eacute;cnicas con el encargado del &aacute;rea.</p>\r\n\r\n<p>-&nbsp;<strong>Selecci&oacute;n del candidato: </strong>el encargado del &aacute;rea tomando en consideraci&oacute;n todas las observaciones y consejos del &aacute;rea de reclutamiento tomar&aacute; su decisi&oacute;n.</p>\r\n\r\n<p>-&nbsp;<strong>Oferta Salarial:</strong> al candidato seleccionado se le presentar&aacute; una oferta salarial escrita con el detalle de los beneficios que se ofrecen para el cargo dentro de la organizaci&oacute;n.</p>\r\n\r\n<p>-&nbsp;<strong>Activaci&oacute;n proceso de ingreso: </strong>inscripci&oacute;n ante los organismos pertinentes, incorporaci&oacute;n en n&oacute;mina y se notificar&aacute; el d&iacute;a de ingreso para su proceso de inducci&oacute;n.</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `general`
--

CREATE TABLE IF NOT EXISTS `general` (
  `id` int(11) NOT NULL,
  `telfa` varchar(50) NOT NULL,
  `telfb` varchar(50) DEFAULT NULL,
  `correoa` varchar(50) NOT NULL,
  `correob` varchar(50) DEFAULT NULL,
  `direccion` varchar(1000) DEFAULT NULL,
  `face` varchar(100) DEFAULT NULL,
  `twit` varchar(100) DEFAULT NULL,
  `ins` varchar(100) DEFAULT NULL,
  `linked` varchar(100) DEFAULT NULL,
  `direccion_vzla` varchar(500) DEFAULT NULL,
  `direccion_vzla_en` varchar(500) DEFAULT NULL,
  `direccion_usa` varchar(500) DEFAULT NULL,
  `direccion_usa_en` varchar(500) DEFAULT NULL,
  `direccion_panama` varchar(500) DEFAULT NULL,
  `direccion_panama_en` varchar(500) DEFAULT NULL,
  `direccion_chile` varchar(500) DEFAULT NULL,
  `direccion_chile_en` varchar(500) DEFAULT NULL,
  `telfc` varchar(100) DEFAULT NULL,
  `telfcc` varchar(100) DEFAULT NULL,
  `telfd` varchar(100) DEFAULT NULL,
  `telfdd` varchar(100) DEFAULT NULL,
  `telfe` varchar(100) DEFAULT NULL,
  `telfee` varchar(100) DEFAULT NULL,
  `telff` varchar(100) DEFAULT NULL,
  `telfff` varchar(100) DEFAULT NULL,
  `emaila` varchar(100) DEFAULT NULL,
  `emailaa` varchar(100) DEFAULT NULL,
  `emailb` varchar(100) DEFAULT NULL,
  `emailbb` varchar(100) DEFAULT NULL,
  `emailc` varchar(100) DEFAULT NULL,
  `emailcc` varchar(100) DEFAULT NULL,
  `emaild` varchar(100) DEFAULT NULL,
  `emaildd` varchar(100) DEFAULT NULL,
  `terminos` varchar(5000) DEFAULT NULL,
  `politicas` varchar(5000) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `general`
--

INSERT INTO `general` (`id`, `telfa`, `telfb`, `correoa`, `correob`, `direccion`, `face`, `twit`, `ins`, `linked`, `direccion_vzla`, `direccion_vzla_en`, `direccion_usa`, `direccion_usa_en`, `direccion_panama`, `direccion_panama_en`, `direccion_chile`, `direccion_chile_en`, `telfc`, `telfcc`, `telfd`, `telfdd`, `telfe`, `telfee`, `telff`, `telfff`, `emaila`, `emailaa`, `emailb`, `emailbb`, `emailc`, `emailcc`, `emaild`, `emaildd`, `terminos`, `politicas`) VALUES
(1, '+(58-212) 242.61.14', '+(58-212) 241.26.90', 'info@bgreatsolutions.com', 'ventas@monitorbg.com', '<p><strong>Sector Norte Am&eacute;rica&nbsp; -&nbsp;(M&eacute;xico / EE.UU)<br />\r\nDirecci&oacute;n: </strong>999 PONCE DE LEON BLVD., SUITE 705 CORAL GABLES, FL 33134</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Sector Centro Am&eacute;rica -&nbsp;(Panam&aacute; / Costa Rica / Guatemala)<br />\r\nDirecci&oacute;n:</strong> Niorka Panam&aacute;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Sector Andino -&nbsp;(Colombia / Per&uacute; / Ecuador / Venezuela)<br />\r\nDirecci&oacute;n: </strong>Urb. Terrazas del &Aacute;vila, Zona Rental Universidad Metropolitana, Edf. Andr&eacute;s Germ&aacute;n Otero, Mezzanina, Oficina B&amp;G. Caracas</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Sector Cono Sur - (Argentina / Uruguay / Chile)<br />\r\nDirecci&oacute;n: </strong>Por definir</p>\r\n', 'http://bit.ly/2ETsrsf', 'http://bit.ly/2DxorBE', 'http://bit.ly/2DmKrip', 'http://bit.ly/2mUZu8Q', 'Urb. Terrazas del Ávila, Zona Rental Universidad Metropolitana, Edf. Andrés Germán Otero, Mezzanina, Oficina B&G. Caracas, Venezuela 1073', NULL, '999 Ponce de León BLVD, Suite 705 Coral Gables, Miami FL 33134', NULL, 'Urbanización Bella Vista, Bella Vista URB Marbella Calle Aquilino de la Guardia Edif. PH Ocean Business, Local 909, Panamá, Ciudad de Panamá', NULL, 'Av. Providencia 1208 Oficina 1603 Providencia, Santiago de Chile', NULL, '+(58-212) 241.26.90', '+(58-212) 242.61.14', '+(58-212) 241.26.90', '+(58-212) 242.61.14', '+(58-212) 241.26.90', '+(58-212) 242.61.14', '+(58-212) 241.26.90', '+(58-212) 242.61.14', 'info@bgreatsolutions.com', 'ventasvzla@bgreatsolutions.com', 'info@bgreatsolutions.com', 'ventasusa@bgreatsolutions.com', 'info@bgreatsolutions.com', 'ventaspanama@bgreatsolutions.com', 'info@bgreatsolutions.com', 'ventaschile@bgreatsolutions.com', '<p><strong>T&eacute;rminos y Condiciones de Uso del Sitio Web bgreat.solutions.com</strong></p>\r\n\r\n<p>Bienvenido a B&amp;G Consultores Corporativos, S.A. en lo adelante denominada &ldquo;BG&rdquo;, empresa que tiene por prop&oacute;sito generar cambios positivos en los procesos de apoyo de las organizaciones mediante el desarrollo, dise&ntilde;o y entrega de soluciones de consultor&iacute;a de acuerdo a las necesidades de clientes de diferentes industrias. El servicio incluye (sin limitaciones) todos los sitios web, y otras funcionalidades interactivas, de propiedad, operada y distribuida por BG. Al acceder a cualquier parte del Servicio, usted est&aacute; aceptando los t&eacute;rminos y condiciones que se describen a continuaci&oacute;n, nuestra pol&iacute;tica de privacidad y cualquier otro aviso legal publicado en el sitio web bgreat.solutions.com. Si usted no est&aacute; de acuerdo con cualquiera de estos t&eacute;rminos, no debe utilizar el servicio. Estas condiciones se aplican a todos los usuarios que ingresan al sitio web bgreat.solutions.com, incluidos aquellos que simplemente est&aacute;n viendo el contenido disponible en la p&aacute;gina web (usuarios no registrados), as&iacute; como los usuarios registrados. Nosotros podemos, a nuestra discreci&oacute;n, modificar las presentes condiciones del servicio. Al acceder al servicio en cualquier momento despu&eacute;s de las modificaciones, usted acepta los cambios realizados.</p>\r\n\r\n<p>Descripci&oacute;n del Servicio</p>\r\n\r\n<p>BG es una empresa dedicada a generar cambios positivo en los procesos de apoyo de las organizaciones mediante el desarrollo, dise&ntilde;o y entrega de soluciones de consultor&iacute;a de acuerdo a las necesidades de clientes de diferentes industrias. Mediante un proceso automatizado de consultor&iacute;a y de sencillo seguimiento pone a disposici&oacute;n de sus clientes diferentes soluciones especializadas en las &aacute;reas de apoyo, a una fracci&oacute;n del costo de la consultor&iacute;a y capacitaci&oacute;n tradicional. Los clientes podr&aacute;n lograr que sus organizaciones sean m&aacute;s eficaces al producir cambios que transforman sus &aacute;reas de apoyo en aliados estrat&eacute;gicos para el alcance &nbsp;de sus objetivos. Hemos dise&ntilde;ado, desarrollado e implementado soluciones &uacute;nicas para la medici&oacute;n de clima organizacional, diagn&oacute;stico de desempe&ntilde;o en &aacute;reas de apoyo y plataforma Ilerning. Ponemos a su alcance innovadoras soluciones de tecnolog&iacute;a para brindarle toda la infraestructura necesaria que contribuya a soportar el crecimiento y desarrollo de su empresa. BG bgreat.solutions.com cuenta con un equipo de profesionales para poner al alcance de su organizaci&oacute;n soluciones efectivas en cada uno de los componentes requeridos para el desarrollo de su estrategia de negocios, tanto para colocaci&oacute;n de aplicaciones habilitadas por Internet, as&iacute; como para soporte a aplicaciones de negocios que requieren servicios de su plataforma. Entre los elementos diferenciadores que posee bgreat.solutions.com, para proveer y utilizar sus servicios, podemos mencionar los siguientes:</p>\r\n\r\n<p>.- Equipo de profesionales especializados en cada una de las &aacute;reas de conocimiento</p>\r\n\r\n<p>.- Alianzas estrat&eacute;gicas con proveedores de tecnolog&iacute;a para garantizar importantes ventajas en el uso de tecnolog&iacute;as de punta.</p>\r\n\r\n<p>.- Conectividad.</p>\r\n\r\n<p>.- Soluciones en Tecnolog&iacute;a:</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Implementaci&oacute;n de proyectos de plataforma tecnol&oacute;gica</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Diagn&oacute;stico en materia de infraestructura y procesos de TI</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Outsourcing de soporte TI</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Comercializaci&oacute;n papeler&iacute;a y consumibles de oficina</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Comercializaci&oacute;n de Hardware</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Venta de Software</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Desarrollo de software</p>\r\n\r\n<p>.- Soluciones en Gesti&oacute;n de Talentos:</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Fortalecimiento Ejecutivo Gerencial (Mando Medio)</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Dise&ntilde;o e implementaci&oacute;n de estrategias de RRHH</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Desarrollo del potencial humano</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Reclutamiento y selecci&oacute;n de personal</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Asignaci&oacute', '<p><strong>Introducci&oacute;n</strong></p>\r\n\r\n<p>La misi&oacute;n de B&amp;G Consultores Corporativos, S.A. en lo adelante denominada &ldquo;BG&rdquo;, consiste en generar cambios positivos en los procesos de apoyo de las organizaciones mediante el desarrollo, dise&ntilde;o y entrega de soluciones de consultor&iacute;a de acuerdo a las necesidades de clientes de diferentes industrias. Respetamos su privacidad y queremos que sepa la informaci&oacute;n recolectamos sobre usted y qu&eacute; hacemos con esa informaci&oacute;n. La siguiente pol&iacute;tica de privacidad fue creada para ayudarlo a entender c&oacute;mo ser&aacute; usada la informaci&oacute;n que usted comparte con &ldquo;BG&rdquo;. Esta pol&iacute;tica de privacidad aplica para toda la informaci&oacute;n que recolectamos sobre usted. Contar con su confianza es nuestra principal preocupaci&oacute;n, y por tanto, observamos los siguientes principios para proteger su privacidad:</p>\r\n\r\n<p>Protegemos su informaci&oacute;n personal y solo se la proporcionaremos a terceros: (1) con su consentimiento; (2) cuando sea necesario para tramitar cualquier relaci&oacute;n comercial; (3) en la medida razonablemente necesaria para mantener las funciones y funcionalidades de &ldquo;BG&rdquo;; (4) cuando consideremos razonablemente que se exige por ley, en una citaci&oacute;n u otro procedimiento judicial; o (5) cuando sea necesario para hacer cumplir las condiciones de uso o para proteger los derechos, la propiedad o la seguridad de &ldquo;BG&rdquo;, de sus miembros y visitantes, y del p&uacute;blico en general.</p>\r\n\r\n<p>Hemos adoptado medidas de seguridad adecuadas para proteger su informaci&oacute;n de acuerdo con los est&aacute;ndares del sector.</p>\r\n\r\n<p><strong>Como Contactarnos</strong></p>\r\n\r\n<p>Si tiene alguna pregunta sobre esta pol&iacute;tica de privacidad, o si quisiera ponerse en contacto con &ldquo;BG&rdquo; por alguna otra raz&oacute;n, por favor env&iacute;enos su mensaje a: info@bgreatsolutions.com, o a trav&eacute;s de la p&aacute;gina web bgreatsolutions.com, utilizando el enlace &ldquo;Cont&aacute;ctenos&rdquo;.</p>\r\n\r\n<p><strong>Informaci&oacute;n que Recabamos</strong></p>\r\n\r\n<p>No es necesario que usted nos proporcione ning&uacute;n tipo de informaci&oacute;n personal para acceder a nuestro sitio web ni para ver la informaci&oacute;n que proveemos generalmente en nuestro sitio. A pesar de que no es necesario registrarse para acceder a nuestro sitio web, s&iacute; es necesario proporcionar informaci&oacute;n si desea laborar con nosotros; deber&aacute; proveer cierta informaci&oacute;n personal, incluyendo su nombre y apellido, el pa&iacute;s donde vive, su n&uacute;mero telef&oacute;nico entre otros. En otras ocasiones, puede que tambi&eacute;n se le pida que nos proporcione informaci&oacute;n adicional, como su edad, g&eacute;nero, y otros datos personales, con el fin de que usted reciba informaci&oacute;n adicional sobre nuestros servicios o participar en ciertas promociones ofrecidas por &ldquo;BG&rdquo; como rifas, competencias, encuestas, boletines informativos, etc., &ldquo;BG&rdquo; podr&iacute;a necesitar esta informaci&oacute;n para conocerlo mejor, ayudarlo a entender nuevos servicios, programas y ofertas en las cuales usted pueda estar interesado, y as&iacute; mejorar su experiencia online.&nbsp;</p>\r\n\r\n<p><strong>Recolecci&oacute;n autom&aacute;tica de datos</strong>.&nbsp;</p>\r\n\r\n<p>Usted podr&aacute; visitar nuestro sitio web y usar algunos de nuestros servicios de manera an&oacute;nima. Independientemente de que haya proporcionado o no informaci&oacute;n &ldquo;BG&rdquo; puede recolectar cierta informaci&oacute;n personal para el uso de nuestros servicios. Por ejemplo, &ldquo;BG&rdquo; puede recolectar informaci&oacute;n concerniente al tipo de navegador de Internet que usted usa, el tipo de computadora o sistema operativo, su direcci&oacute;n de IP, la velocidad de su conexi&oacute;n, el nombre del dominio de su proveedor de servicio Internet, la localidad geogr&aacute;fica desde d&oacute;nde usted est&aacute; accediendo a nuestros servicios y/o la p&aacute;gina web o propaganda desde donde usted se conect&oacute; a nuestro sitio web. Cuando usted utiliza un dispositivo m&oacute;vil (como por ejemplo una tableta o un tel&eacute;fono inteligente) para acceder a nuestro servicio, podr&iacute;amos acceder, recopilar, y almacenar en su dispositivo y/o guardar de manera de remota uno o m&aacute;s &ldquo;Identificadores de Dispositivos&rdquo; en su equipo. Estos identificadores de dispositivos, son peque&ntilde;os archivos de datos o estructuras l&oacute;gicas de datos que se asocian o almacenan en su dispositivo m&oacute;vil para poder identificar de forma &uacute;nica su dispositivo m&oacute;vil. Tambi&eacute;n rastreamos y recolectamos informaci&oacute;n sobre usted incluyendo sus transacciones con nosotros, nuestros afiliados, y otros; y los patrones que sigui&oacute; usted al usar nuestro sitio web, como las p&aacute;ginas&');

-- --------------------------------------------------------

--
-- Table structure for table `imagenes`
--

CREATE TABLE IF NOT EXISTS `imagenes` (
  `id` int(11) NOT NULL,
  `img` varchar(200) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `imagenes`
--

INSERT INTO `imagenes` (`id`, `img`) VALUES
(1, 'upload/2017-11-23_14-15-06_0.png'),
(2, 'upload/2017-11-23_14-15-06_1.png'),
(3, 'upload/2017-11-23_14-15-06_2.png'),
(4, 'upload/2017-11-23_14-15-06_3.png'),
(5, 'upload/2017-11-23_14-15-06_4.jpg'),
(6, 'upload/2017-11-23_14-16-04_0.jpg'),
(7, 'upload/2017-11-23_14-16-04_1.jpg'),
(8, 'upload/2017-11-23_14-16-04_2.png'),
(9, 'upload/2017-11-23_14-16-04_3.jpg'),
(10, 'upload/2017-11-23_14-16-04_4.png'),
(12, 'upload/2017-11-23_14-17-04_0.jpg'),
(13, 'upload/2017-11-23_14-17-04_1.jpg'),
(14, 'upload/2017-11-23_14-17-04_2.jpg'),
(15, 'upload/2017-11-23_14-17-04_3.png'),
(16, 'upload/2017-11-23_14-17-04_4.png'),
(17, 'upload/2017-11-23_14-17-17_0.png'),
(18, 'upload/2017-12-15_13-32-58_0.png'),
(19, 'upload/2017-12-15_13-40-42_0.png'),
(20, 'upload/2017-12-15_13-42-16_0.png');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE IF NOT EXISTS `item` (
  `id` int(11) NOT NULL,
  `soluciones_id` int(11) DEFAULT NULL,
  `titulo` varchar(100) DEFAULT NULL,
  `texto` varchar(10000) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`id`, `soluciones_id`, `titulo`, `texto`) VALUES
(1, 1, 'Consultoría', '<p><strong>*Implementaci&oacute;n de proyectos de plataforma tecnol&oacute;gica</strong></p>\r\n\r\n<p>Fortinet:&nbsp;Proteger la red interna de una organizaci&oacute;n, separando los servicios privados de la red p&uacute;blica de los servicios personales as&iacute; como asegurar la transferencia de datos, reducir el ancho de banda para evitar cuellos de botella en horarios cr&iacute;ticos.</p>\r\n\r\n<p>Central telef&oacute;nica:&nbsp;actualizaci&oacute;n de la central telef&oacute;nica que ten&iacute;a la empresa.</p>\r\n\r\n<p>Creaci&oacute;n, configuraci&oacute;n e instalaci&oacute;n de un Sistema de Backup (Nass /Google Drive): implementaci&oacute;n de una herramienta de backup, con su esquema de sheduler de los servidores y la subida a google drive como segundo respaldo.</p>\r\n\r\n<p><strong>*Diagn&oacute;stico en materia de infraestructura y procesos de TI</strong></p>\r\n\r\n<p>Auditor&iacute;a Virtual: MONITOR TECNOLOGICO Se basa en la aplicaci&oacute;n de las &uacute;ltimas tecnolog&iacute;as en monitoreo y control mediante la instalaci&oacute;n y uso de agentes virtuales en las estaciones de trabajo.</p>\r\n'),
(9, 4, 'Consultoría', '<p><strong>*Valoraci&oacute;n de Negocios</strong></p>\r\n\r\n<p>Tiene el prop&oacute;sito de brindarles un servicio &uacute;nico que provea una evaluaci&oacute;n financiera exhaustiva que valore los principales elementos de &eacute;xito del proyecto. Y cuenten con argumentos s&oacute;lidos y suficiente informaci&oacute;n para determinar la viabilidad del mismo con el objetivo de capta nuevos inversionistas o endeudamiento ante una instituci&oacute;n financiera</p>\r\n\r\n<p><strong>*Entrenamiento en materia financiera.</strong></p>\r\n\r\n<p>Ilernus: la mejor soluci&oacute;n que ofrece la m&aacute;s alta calidad en contenidos y metodolog&iacute;a instruccional e-learning, soluciones de gesti&oacute;n de aprendizaje en l&iacute;nea y virtualizaci&oacute;n de contenidos especializados en una plataforma que permite planificar, gestionar, preservar y monitorear el proceso de formaci&oacute;n y desarrollo profesional de tus colaboradores.</p>\r\n\r\n<p>Capacitaci&oacute;n In Company: a trav&eacute;s de una amplia red de instructores plenamente capacitados en las diversas &aacute;reas de Recursos Humanos</p>\r\n\r\n<p><strong>*Asesor&iacute;a en materia de levantamiento de capitales</strong></p>\r\n\r\n<p>Con el firme prop&oacute;sito de lograr la obtenci&oacute;n de fondos provenientes de la banca con un nivel de efectividad muy cercano al 100% y de una manera r&aacute;pida y basada en un modelo de contrataci&oacute;n sujeta a resultados hemos estudiado profundamente la econom&iacute;a, cultivando relaciones con el sector bancario y analizando las diferentes teor&iacute;as sobre la &oacute;ptima estructura de capital, lo cual nos permite afirmar que &ldquo;contar con deuda bancaria en su organizaci&oacute;n en la econom&iacute;a actual es bueno&rdquo;</p>\r\n\r\n<p><strong>*Acompa&ntilde;amiento</strong></p>\r\n\r\n<p>Asesor&iacute;a cercana bajo la demanda del cliente y sus necesidades.</p>\r\n'),
(10, 4, 'Soluciones', '<p><strong>*Dise&ntilde;o e implementaci&oacute;n de modelos de reporte financiero para la alta gerencia</strong></p>\r\n\r\n<p>Implementaci&oacute;n de esquema de control de gesti&oacute;n que promueve mejores niveles de productividad mediante m&eacute;tricas o KPI&acute;s del &aacute;rea financiera del negocio, su proceso de rendici&oacute;n y vinculaci&oacute;n a la remuneraci&oacute;n de los talentos que inciden en el cumplimiento de los mismos.</p>\r\n'),
(3, 1, 'Soluciones', '<p><strong>*Outsourcing de soporte TI</strong></p>\r\n\r\n<p>Somos pioneros en el mercado venezolano con una Plataforma poderosa, segura, proactiva,&nbsp; que permite la Gesti&oacute;n Preventiva de manera remota como ninguna otra en el mercado. Ofrecemos Soporte Preventivo Remoto e Ingenier&iacute;a de Proyectos para aplicar tecnolog&iacute;a madura en la &Aacute;rea de Infraestructura y Telecomunicaciones.</p>\r\n\r\n<p><strong>*Desarrollo de Software</strong></p>\r\n\r\n<p>Desarrollo de aplicaciones de software basada en las necesidades y procesos que ponen sus productos y servicios por encima de la competencia.</p>\r\n\r\n<p>Servicios de reingenier&iacute;a y de migraci&oacute;n que transforman sus aplicaciones heredadas en soluciones tecnol&oacute;gicas modernas y rentables.</p>\r\n\r\n<p>Servicios de mantenimiento de software para garantizar los m&aacute;s altos niveles de rendimiento de las aplicaciones y los niveles cr&iacute;ticos para la empresa de servicio.</p>\r\n'),
(6, 1, 'Suministros', '<p><strong>*Comercializaci&oacute;n de equipos, papeler&iacute;a y consumibles de oficina (t&oacute;ner, papel t&eacute;rmico, papel bond y etiquetas)</strong></p>\r\n\r\n<p>Garantizamos el suministro oportuno de papeler&iacute;a y consumibles de oficina ya que contamos con alianzas estrat&eacute;gicas con marcas reconocidas mundialmente.</p>\r\n\r\n<p>&bull;&nbsp; T&oacute;ner &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &bull;&nbsp; Papel t&eacute;rmico &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>\r\n\r\n<p>&bull;&nbsp; Caja de papel tama&ntilde;o carta u oficio &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &bull;&nbsp; Etiquetas</p>\r\n\r\n<p><strong>*Comercializaci&oacute;n de Hardware (laptop, celulares, Tablet, servidores o equipos especializados</strong></p>\r\n\r\n<p>Todo lo que necesite en equipos tecnol&oacute;gicos; Laptops, Celulares, Tablets, Servidores o cualquier equipo especializado</p>\r\n\r\n<p><strong>*Venta de Software (licenciamiento, Instalaci&oacute;n y configuraci&oacute;n de Backup, Microsoft y antivirus)</strong></p>\r\n\r\n<p>Licenciamiento, instalaci&oacute;n y configuraci&oacute;n de Backup, Microsoft y Antivirus</p>\r\n'),
(7, 3, 'Consultoría', '<p><strong>*Acompa&ntilde;amiento</strong></p>\r\n\r\n<p>Asesor&iacute;a cercana bajo la demanda del cliente y sus necesidades.</p>\r\n'),
(8, 3, 'Soluciones', '<p><strong>*Asignaci&oacute;n de personal</strong></p>\r\n\r\n<p>B&uacute;squeda, selecci&oacute;n y contrataci&oacute;n en nuestra n&oacute;mina y asignaci&oacute;n de talento a las instalaciones del cliente, bajo su control y supervisi&oacute;n, asumiendo BG la carga patronal; permiti&eacute;ndole de esta forma a nuestro cliente reducci&oacute;n de los riesgos patronales, mayor flexibilidad en el manejo de su n&oacute;mina, ahorros en el costo de reclutamiento, posibilidad de absorber personal temporal destacado, ahorros en la desincorporaci&oacute;n de personal, sustituci&oacute;n de costos fijos por variables y mayor tiempo para despe&ntilde;ar roles estrat&eacute;gicos en la Gesti&oacute;n Humana.</p>\r\n\r\n<p><strong>*Reclutamiento y selecci&oacute;n de personal</strong></p>\r\n\r\n<p>Nos encargamos de atraer y seleccionar oportunamente el candidato id&oacute;neo para la posici&oacute;n que requiere su negocio. BG le ayuda a manejar las necesidades de talento con acceso r&aacute;pido al m&aacute;s adecuado. Con nuestro profundo conocimiento de las tendencias del mundo laboral y nuestra profunda base de candidatos altamente calificados, BG puede entregar el talento adecuado en el tiempo oportuno.</p>\r\n\r\n<p>Realizamos desde una persona hasta reclutamiento masivo, en forma constante o por &uacute;nica vez, para puestos temporales o permanentes, para todas las &aacute;reas y niveles de la organizaci&oacute;n, en la regi&oacute;n Venezuela, Panam&aacute;, Colombia y Centroam&eacute;rica. Podemos reclutar y seleccionar el mejor talento para los distintos niveles de su organizaci&oacute;n</p>\r\n\r\n<p><strong>*Outsourcing de administraci&oacute;n de personal</strong></p>\r\n\r\n<p>Gestionamos y ejecutamos todas las actividades relacionadas con la administraci&oacute;n de su N&oacute;mina, mediante un excelente equipo de especialistas apoyados en un robusto&nbsp; sistema de administraci&oacute;n de n&oacute;mina, garantiz&aacute;ndoles a sus empleados un pago oportuno y apegado a las normativas laborales.</p>\r\n\r\n<p><strong>*Desarrollo del potencial humano</strong></p>\r\n\r\n<p>Ilernus: la mejor soluci&oacute;n que ofrece la m&aacute;s alta calidad en contenidos y metodolog&iacute;a instruccional e-learning, soluciones de gesti&oacute;n de aprendizaje en l&iacute;nea y virtualizaci&oacute;n de contenidos especializados en una plataforma que permite planificar, gestionar, preservar y monitorear el proceso de formaci&oacute;n y desarrollo profesional de tus colaboradores.</p>\r\n\r\n<p>Capacitaci&oacute;n In Company: a trav&eacute;s de una amplia red de instructores plenamente capacitados en las diversas &aacute;reas de Recursos Humanos</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `nosotros`
--

CREATE TABLE IF NOT EXISTS `nosotros` (
  `id` int(11) NOT NULL,
  `img_video` varchar(200) DEFAULT NULL,
  `url_video` varchar(200) DEFAULT NULL,
  `text_right` varchar(2000) DEFAULT NULL,
  `text_center` varchar(2000) DEFAULT NULL,
  `valores` varchar(500) DEFAULT NULL,
  `mision` varchar(500) DEFAULT NULL,
  `vision` varchar(500) DEFAULT NULL,
  `img_valora` varchar(200) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nosotros`
--

INSERT INTO `nosotros` (`id`, `img_video`, `url_video`, `text_right`, `text_center`, `valores`, `mision`, `vision`, `img_valora`) VALUES
(1, 'upload/2017_11_23_02.12.38video.jpg.jpg', 'https://www.youtube.com/watch?v=uO8vRa3t4J4', '<p>BG es una consultora internacional que trabaja con los l&iacute;deres de las organizaciones para producir cambios positivos en sus procesos y su gente. Logramos que las organizaciones sean m&aacute;s eficaces al producir cambios que transforman sus &aacute;reas de apoyo en aliados estrat&eacute;gicos para el alcance de sus objetivos.&nbsp;</p>\r\n\r\n<p>Nuestros clientes provienen de los sectores p&uacute;blicos, privados y sin &aacute;nimos de lucro en todas las industrias y, por lo tanto, representan diferentes retos de negocio.</p>\r\n\r\n<p>Durante m&aacute;s de 12 a&ntilde;os hemos destacado por la calidad de nuestras soluciones, las transformaciones que hemos generado, as&iacute; como el intenso rigor intelectual de nuestro trabajo.&nbsp;</p>\r\n', '<p>Proporcionamos a nuestros clientes ideas vanguardistas sobre su organizaci&oacute;n con el prop&oacute;sito de lograr las transformaciones deseadas. Hacemos que las cosas cambien, ninguna otra consultora puede igualar nuestra capacidad de generar y desarrollar soluciones a partir de nuestro conocimiento y entendimiento de los desaf&iacute;os de nuestros clientes. Nosotros creamos, desarrollamos y poseemos la &uacute;nica metodolog&iacute;a capaz de determinar de una manera r&aacute;pida y eficaz las brechas en las &aacute;reas de apoyo. Somos pioneros en integrar las metodolog&iacute;as cl&aacute;sicas de la consultor&iacute;a y las capacidades innovadoras de una empresa de desarrollo de software lo cual nos permite producir soluciones de vanguardia. Ayudamos a nuestros clientes a evaluar, seleccionar y desarrollar a su gente mediante las herramientas y metodolog&iacute;as innovadoras generadas por nuestro centro de innovaci&oacute;n e investigaci&oacute;n. Hemos elaborado la soluci&oacute;n &uacute;nica para el diagn&oacute;stico, acompa&ntilde;amiento y entrenamiento de las &aacute;reas de apoyo, de este modo, nuestros clientes pueden obtener transformaciones positivas de sus &aacute;rea a una fracci&oacute;n del costo de la consultor&iacute;a y entrenamiento tradicional.</p>\r\n', 'Trabajo en Equipo, Pasión, Excelencia, Compromiso, Ética, Innovación, Entusiasmo.', 'Generar cambios positivos en las organizaciones y las personas.', 'Ser el aliado referente en soluciones vanguardistas para la eficiencia corporativa de Latinoamérica.', 'upload/2017_12_12_08.30.21people.jpg.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `parallax`
--

CREATE TABLE IF NOT EXISTS `parallax` (
  `id` int(11) NOT NULL,
  `valora` varchar(20) DEFAULT NULL,
  `textoa` varchar(100) DEFAULT NULL,
  `valorb` varchar(20) DEFAULT NULL,
  `textob` varchar(100) DEFAULT NULL,
  `valorc` varchar(20) DEFAULT NULL,
  `textoc` varchar(100) DEFAULT NULL,
  `valord` varchar(20) DEFAULT NULL,
  `textod` varchar(100) DEFAULT NULL,
  `valore` varchar(20) DEFAULT NULL,
  `textoe` varchar(100) DEFAULT NULL,
  `valorf` varchar(20) DEFAULT NULL,
  `textof` varchar(100) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parallax`
--

INSERT INTO `parallax` (`id`, `valora`, `textoa`, `valorb`, `textob`, `valorc`, `textoc`, `valord`, `textod`, `valore`, `textoe`, `valorf`, `textof`) VALUES
(1, '14,000', 'Empleados administrados', '300', 'Talentos reclutados', '6,000', 'Participantes capacitados', '12,000', 'Incidentes tecnológicos atendidos', '100,000', 'Horas de consultoría', '5,000', 'HORAS DE DESARROLLO EN SOLUCIONES TECNOLÓGICAS');

-- --------------------------------------------------------

--
-- Table structure for table `postulaciones`
--

CREATE TABLE IF NOT EXISTS `postulaciones` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `telefono` varchar(50) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `profesion` varchar(500) DEFAULT NULL,
  `area` varchar(500) DEFAULT NULL,
  `grado` varchar(500) DEFAULT NULL,
  `pais` varchar(255) DEFAULT NULL,
  `mensaje` varchar(5000) DEFAULT NULL,
  `adjunto` varchar(255) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `postulaciones`
--

INSERT INTO `postulaciones` (`id`, `nombre`, `telefono`, `email`, `profesion`, `area`, `grado`, `pais`, `mensaje`, `adjunto`, `fecha`, `estado`) VALUES
(1, 'Steffany G. Teran J.', '04241778844', 'steffanytj@gmail.com', 'Ingeniero en Informatica', 'Desarrollo Web', 'Universitario', 'Estados Unidos', 'Prueba', 'upload/cvs/2018_01_25_02.12.22CV STEFFANY TERAN.pdf', '2018-01-25', 'No definido');

-- --------------------------------------------------------

--
-- Table structure for table `soluciones`
--

CREATE TABLE IF NOT EXISTS `soluciones` (
  `id` int(11) NOT NULL,
  `img` varchar(200) DEFAULT NULL,
  `titulo` varchar(100) DEFAULT NULL,
  `descripcion` varchar(1000) DEFAULT NULL,
  `texto` varchar(10000) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `soluciones`
--

INSERT INTO `soluciones` (`id`, `img`, `titulo`, `descripcion`, `texto`) VALUES
(1, 'upload/2017_12_09_06.38.36tecnologia.jpg.jpg', 'Tecnología', 'Orientación para la adquisición de equipos y suministros acordes con su requerimiento. Ofrecemos Software, Hardware, Arrendamiento de equipos, Papelería y consumibles de oficina.', '<p><strong>Haz clic sobre cada producto o servicio para ver detalle.</strong></p>\r\n'),
(3, 'upload/2017_12_09_06.39.23rh.jpg.jpg', 'Gestión de Talentos', 'Soluciones innovadoras adaptadas a cada necesidad para que pueda dedicar el 100% de sus recursos al core de su negocio. Comprenden todos los procesos de apoyo en: Informática, Administración y Gestión Humana.', '<p><strong>Haz clic sobre cada producto o servicio para ver detalle.</strong></p>\r\n'),
(4, 'upload/2017_12_09_06.39.45finanzas.jpg.jpg', 'Finanzas', 'Contamos con un equipo especializado en la ejecución y puesta en marcha de Proyectos de Gestión Humana, Finanzas e Informática, acompañándolo en los procesos de desarrollo y cambio. Asesoría especializada en proyectos de: Infraestructura de TI, Business Intelligence, Valoración de Empresas y mucho más.', '<p><strong>Haz clic sobre cada producto o servicio para ver detalle.</strong></p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `testimonios`
--

CREATE TABLE IF NOT EXISTS `testimonios` (
  `id` int(11) NOT NULL,
  `empresa` varchar(100) DEFAULT NULL,
  `cargo` varchar(100) DEFAULT NULL,
  `img` varchar(200) DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `texto` varchar(1000) DEFAULT NULL,
  `img_video` varchar(100) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testimonios`
--

INSERT INTO `testimonios` (`id`, `empresa`, `cargo`, `img`, `nombre`, `texto`, `img_video`, `url`) VALUES
(1, 'Del Sur', 'Vicepresidente de Planificación', 'upload/2018_01_19_04.06.31Del sur.jpg.jpg', 'Edgar Rosales M.', '“B&G ha implementado exitosamente para el Banco la plataforma tecnología B&G ® MONITOR adaptada a nuestros requerimientos, esta herramienta constituye un innovador y eficaz enfoque para la toma de decisiones de la alta gerencia del Banco; reduce considerablemente los tiempos de preparación de información, oportunidad en su emisión, confiabilidad y nos brinda un nuevo enfoque que contribuye a mejores resultados por la toma de mejores decisiones”', 'upload/2018_01_09_05.40.30Imagen1.png.png', 'https://www.youtube.com/watch?v=4sq77P0NBGg'),
(3, 'Eurobuilding', 'Dir. Gerente General/General Manager ', 'upload/2018_01_19_04.26.27Eurobuilding.jpg.jpg', 'Tachi Molina', '“Mi sincero agradecimiento por la oportunidad de poder ser parte de los equipos que han participado en el Taller: “Gerencia de Sueños”…Palabras especiales de elogio para la inagotable Larissa. La actitud positiva y de servicio incondicional de ella, quien trabajó con un entusiasmo característico de un profesional, dando tiempo personal para que todos quedaran satisfechos y con sus expectativas cubiertas acerca del taller, nos indicó que fue una buena elección tomar el taller y que haya sido impartido por ella. ”Una vez más me despido agradeciendo todo el apoyo recibido y te reitero mis deseos de servirte, será un placer para mi atenderte”', NULL, 'https://www.youtube.com/watch?v=qXCNQh_dCq0'),
(2, 'DIRECTV', 'Director Capital Humano', 'upload/2018_01_19_04.22.33DirecTV.png.jpg.jpg', 'Marisol Cianciarullo', '“B&G Consultores Corporativos, ha sido un aliado en las acciones continuas que DIRECTV desarrolla para conocer cómo se sienten nuestros colaboradores. Su oferta de servicios se distingue por una excelente mezcla de consultores, metodología, conocimiento rápido del cliente y su consecuente adaptación a sus necesidades, así como una tecnología que aporta valor a la gestión. Recomendamos estos servicios para cualquier empresa que busque un acompañamiento en este ámbito”. ', 'upload/2017_12_12_09.18.28video.jpg.jpg', 'https://www.youtube.com/watch?v=dOp0lTU-dv0'),
(4, 'Hippocampus Vacation Club', 'Directora General ', 'upload/2018_01_09_05.49.59Hippocampus.jpg.jpg', 'Gissela Tinoco', '“B&G nos guio en todo el proceso y en la obtención de nuestro requerimientos de fondos para mejora de nuestra complejo turístico, dentro del macro de la política financiera vigente para el sector Turístico, descanso el nivel de compromiso, experiencia y efectividad de su equipo de consultores”.', NULL, 'https://www.youtube.com/watch?v=XpJ6FffG8L0'),
(5, 'CAM', 'Director General ', 'upload/2018_01_19_04.24.44CAM.jpg.jpg', 'Carlos Toscano.', '“Me siento muy satisfecho con el apoyo que AxionTI me ha brindado en todos los requerimientos que he tenido en el último año.  A través del tiempo he venido notando un proceso de mejora continua que queda evidenciado en la velocidad de atención a los casos” \r\n', NULL, 'https://www.youtube.com/watch?v=pMxWYkWH_YQ'),
(6, 'Otepi', 'Presidente OTEPI', 'upload/2018_01_19_04.17.02Imagen4.jpg.jpg', 'Luis E. Paúl K.', '“Contar con asesoría financiera por parte de B&G ha sido de gran utilidad para el grupo Otepi; la aproximación estratégica, velocidad y calidad de respuesta constituye para nosotros una de sus principales cualidades”', NULL, 'https://www.youtube.com/watch?v=x8-fhXlI8Z0'),
(7, 'ISC Bunker Ramo', 'Presidente', 'upload/2018_01_19_04.09.04ISC Bunker Ramo.png.jpg.jpg', 'Ricardo A. Tinoco ', '“Contar con los servicios de B&G Consultores Corporativos, empresa que nos ofrece el producto “B&G Monitor Financiero”, nos ha permitido obtener asesoría temprana sobre desafíos financieros y sus eventuales alternativas, generando alertas y aplicando recomendaciones en las áreas Financieras y de Negocios, control de gestión y soporte eficaz sobre las funciones de Administración y Finanzas, además de recibir y procesar oportunamente información financiera de alto nivel clave para la toma de decisiones en nuestro negocio con destacados componentes de calidad de servicio, conocimiento, compromiso, responsabilidad lo que se ha constituido en una excelente forma de contar con un equipo de Finanzas Corporativas, hecho a nuestra medida.”', NULL, 'https://www.youtube.com/watch?v=XLJ0Fj-CkZk'),
(8, 'Prosalud', 'Directora Ejecutiva Prosalud', 'upload/2018_01_19_04.28.02Imagen2.jpg.jpg', 'Mariana Maza', '"Hemos sido clientes de AXION TI desde hace mas de 7 años y sus servicios siempre han sido de gran relevancia para nosotros. Ante algunos escenarios de incertidumbre de nuestro funcionamiento hemos contado con esta expresa no solo en su calidad, profesionalismo, esfuerzo, empeño y mística de sus profesionales, sino además hemos recibido el apoyo técnico y financiero para seguir funcionando con este servicio. Reiterando nuestra gratitud y considerados en nuestra alianza social por un país mejor“', NULL, 'https://www.youtube.com/watch?v=vv9tOx3dMEo'),
(9, 'Directa Group', 'Gerente General', 'upload/2018_01_09_06.00.30Directa.jpg.jpg', 'Leonel Barradas', '“B&G Consultores es el aliado estratégico necesario para la etapa de crecimiento y transformación de cualquier empresa. Resalta la experiencia y el profesionalismo de su equipo comprometiéndose con la consecución  de los objetivos y por consiguiente la mejora del desempeño de la organización. Les estoy agradecido y los recomiendo ampliamente”.', NULL, 'https://www.youtube.com/watch?v=xrTDk7Wvrq8'),
(10, 'Dierck', 'Gerente de Gestión del Talento Humano', 'upload/2018_01_09_06.01.37Dierck.jpg.jpg', 'Alexandra Mijares', '“Psicología al Día nos sirvió de aliciente para propagar el buen trato del personal, todas as mañanas cuando algún compañero comienza a tener estrés enseguida le decimos. ¡Epa! ¿Y la Felicidad?  Automáticamente cambia la tónica a los problemas que pueda estar presentado.Indiscutiblemente nos proporcionaron una excelente herramienta para poder llevar a cabo los cambios.”.', NULL, 'https://www.youtube.com/watch?v=tK1qAIfeVXs'),
(11, 'DMC Catering', 'Coordinador de Formación y Desarrollo ', 'upload/2018_01_19_04.09.52DMC Catering.jpg.jpg', 'Regina Lazzarin', '“El taller fue todo un éxito, la receptividad de los participantes fue increíble, el especialista supo vivenciar todos y cada uno de los ejemplos planteados, y las estrategias que se suman a sus conocimientos. Estamos convencidos que sin duda alguna todo lo que se presento durante las horas del taller supero las expectativas de a organización.”.', NULL, 'https://www.youtube.com/watch?v=l8TCPPjtPow'),
(12, 'Dynasty', 'Contadora', 'upload/2018_01_19_04.10.08Margarita Dynasty.jpg.jpg', 'Lisbeth Millán M.', '“Psicología al Día ha ayudado a Margarita Dynasty a desarrollar habilidades de liderazgo para conseguir excelentes resultados..”.', NULL, 'https://www.youtube.com/watch?v=pMxWYkWH_YQ');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `clave` varchar(150) NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `admin` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `usuario`, `clave`, `status`, `email`, `admin`) VALUES
(1, 'admin', 'd4ed0416532720c50e8254eecacf348d', 1, 'steffanytj@gmail.com', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categoriablog`
--
ALTER TABLE `categoriablog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cronologia`
--
ALTER TABLE `cronologia`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `empleo`
--
ALTER TABLE `empleo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `equipo`
--
ALTER TABLE `equipo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general`
--
ALTER TABLE `general`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `imagenes`
--
ALTER TABLE `imagenes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nosotros`
--
ALTER TABLE `nosotros`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parallax`
--
ALTER TABLE `parallax`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `postulaciones`
--
ALTER TABLE `postulaciones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `soluciones`
--
ALTER TABLE `soluciones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonios`
--
ALTER TABLE `testimonios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `categoriablog`
--
ALTER TABLE `categoriablog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=65;
--
-- AUTO_INCREMENT for table `cronologia`
--
ALTER TABLE `cronologia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `empleo`
--
ALTER TABLE `empleo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `equipo`
--
ALTER TABLE `equipo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `general`
--
ALTER TABLE `general`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `imagenes`
--
ALTER TABLE `imagenes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `nosotros`
--
ALTER TABLE `nosotros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `parallax`
--
ALTER TABLE `parallax`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `postulaciones`
--
ALTER TABLE `postulaciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `soluciones`
--
ALTER TABLE `soluciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `testimonios`
--
ALTER TABLE `testimonios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
