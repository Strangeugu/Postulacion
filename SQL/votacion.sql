-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-04-2023 a las 01:48:32
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `votacion`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `candidatos`
--

CREATE TABLE `candidatos` (
  `ID` int(250) NOT NULL,
  `id_comuna` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `candidatos`
--

INSERT INTO `candidatos` (`ID`, `id_comuna`, `nombre`) VALUES
(1, 674, 'Nicolas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comunas`
--

CREATE TABLE `comunas` (
  `id_city` int(10) UNSIGNED NOT NULL,
  `id_region` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `comunas`
--

INSERT INTO `comunas` (`id_city`, `id_region`, `name`) VALUES
(348, 1, 'Arica'),
(349, 1, 'Camarones'),
(350, 1, 'Putre'),
(351, 1, 'General Lagos'),
(352, 2, 'Iquique'),
(353, 2, 'Alto Hospicio'),
(354, 2, 'Pozo Almonte'),
(355, 2, 'Camiña'),
(356, 2, 'Colchane'),
(357, 2, 'Huara'),
(358, 2, 'Pica'),
(359, 3, 'Antofagasta'),
(360, 3, 'Mejillones'),
(361, 3, 'Sierra Gorda'),
(362, 3, 'Taltal'),
(363, 3, 'Calama'),
(364, 3, 'Ollagüe'),
(365, 3, 'San Pedro de Atacama'),
(366, 3, 'Tocopilla'),
(367, 3, 'María Elena'),
(368, 4, 'Copiapó'),
(369, 4, 'Caldera'),
(370, 4, 'Tierra Amarilla'),
(371, 4, 'Chañaral'),
(372, 4, 'Diego de Almagro'),
(373, 4, 'Vallenar'),
(374, 4, 'Alto del Carmen'),
(375, 4, 'Freirina'),
(376, 4, 'Huasco'),
(377, 5, 'La Serena'),
(378, 5, 'Coquimbo'),
(379, 5, 'Andacollo'),
(380, 5, 'La Higuera'),
(381, 5, 'Paihuano'),
(382, 5, 'Vicuña'),
(383, 5, 'Illapel'),
(384, 5, 'Canela'),
(385, 5, 'Los Vilos'),
(386, 5, 'Salamanca'),
(387, 5, 'Ovalle'),
(388, 5, 'Combarbalá'),
(389, 5, 'Monte Patria'),
(390, 5, 'Punitaqui'),
(391, 5, 'Río Hurtado'),
(392, 6, 'Valparaíso'),
(393, 6, 'Casablanca'),
(394, 6, 'Concón'),
(395, 6, 'Juan Fernández'),
(396, 6, 'Puchuncaví'),
(397, 6, 'Quintero'),
(398, 6, 'Viña del Mar'),
(399, 6, 'Isla de Pascua'),
(400, 6, 'Los Andes'),
(401, 6, 'Calle Larga'),
(402, 6, 'Rinconada'),
(403, 6, 'San Esteban'),
(404, 6, 'La Ligua'),
(405, 6, 'Cabildo'),
(406, 6, 'Papudo'),
(407, 6, 'Petorca'),
(408, 6, 'Zapallar'),
(409, 6, 'Quillota'),
(410, 6, 'La Calera'),
(411, 6, 'Hijuelas'),
(412, 6, 'La Cruz'),
(413, 6, 'Nogales'),
(414, 6, 'San Antonio'),
(415, 6, 'Algarrobo'),
(416, 6, 'Cartagena'),
(417, 6, 'El Quisco'),
(418, 6, 'El Tabo'),
(419, 6, 'Santo Domingo'),
(420, 6, 'San Felipe'),
(421, 6, 'Catemu'),
(422, 6, 'Llay-Llay'),
(423, 6, 'Panquehue'),
(424, 6, 'Putaendo'),
(425, 6, 'Santa María'),
(426, 6, 'Quilpué'),
(427, 6, 'Limache'),
(428, 6, 'Olmué'),
(429, 6, 'Villa Alemana'),
(430, 8, 'Rancagua'),
(431, 8, 'Codegua'),
(432, 8, 'Coinco'),
(433, 8, 'Coltauco'),
(434, 8, 'Doñihue'),
(435, 8, 'Graneros'),
(436, 8, 'Las Cabras'),
(437, 8, 'Machalí'),
(438, 8, 'Malloa'),
(439, 8, 'Mostazal'),
(440, 8, 'Olivar'),
(441, 8, 'Peumo'),
(442, 8, 'Pichidegua'),
(443, 8, 'Quinta de Tilcoco'),
(444, 8, 'Rengo'),
(445, 8, 'Requínoa'),
(446, 8, 'San Vicente'),
(447, 8, 'Pichilemu'),
(448, 8, 'La Estrella'),
(449, 8, 'Litueche'),
(450, 8, 'Marchihue'),
(451, 8, 'Navidad'),
(452, 8, 'Paredones'),
(453, 8, 'San Fernando'),
(454, 8, 'Chépica'),
(455, 8, 'Chimbarongo'),
(456, 8, 'Lolol'),
(457, 8, 'Nancagua'),
(458, 8, 'Palmilla'),
(459, 8, 'Peralillo'),
(460, 8, 'Placilla'),
(461, 8, 'Pumanque'),
(462, 8, 'Santa Cruz'),
(463, 9, 'Talca'),
(464, 9, 'Constitución'),
(465, 9, 'Curepto'),
(466, 9, 'Empedrado'),
(467, 9, 'Maule'),
(468, 9, 'Pelarco'),
(469, 9, 'Pencahue'),
(470, 9, 'Río Claro'),
(471, 9, 'San Clemente'),
(472, 9, 'San Rafael'),
(473, 9, 'Cauquenes'),
(474, 9, 'Chanco'),
(475, 9, 'Pelluhue'),
(476, 9, 'Curicó'),
(477, 9, 'Hualañé'),
(478, 9, 'Licantén'),
(479, 9, 'Molina'),
(480, 9, 'Rauco'),
(481, 9, 'Romeral'),
(482, 9, 'Sagrada Familia'),
(483, 9, 'Teno'),
(484, 9, 'Vichuquén'),
(485, 9, 'Linares'),
(486, 9, 'Colbún'),
(487, 9, 'Longaví'),
(488, 9, 'Parral'),
(489, 9, 'Retiro'),
(490, 9, 'San Javier'),
(491, 9, 'Villa Alegre'),
(492, 9, 'Yerbas Buenas'),
(493, 10, 'Chillán'),
(494, 10, 'Bulnes'),
(495, 10, 'Chillán Viejo'),
(496, 10, 'El Carmen'),
(497, 10, 'Pemuco'),
(498, 10, 'Pinto'),
(499, 10, 'Quillón'),
(500, 10, 'San Ignacio'),
(501, 10, 'Yungay'),
(502, 10, 'Quirihue'),
(503, 10, 'Cobquecura'),
(504, 10, 'Coelemu'),
(505, 10, 'Ninhue'),
(506, 10, 'Portezuelo'),
(507, 10, 'Ránquil'),
(508, 10, 'Treguaco'),
(509, 10, 'San Carlos'),
(510, 10, 'Coihueco'),
(511, 10, 'Ñiquén'),
(512, 10, 'San Fabián'),
(513, 10, 'San Nicolás'),
(514, 11, 'Concepción'),
(515, 11, 'Coronel'),
(516, 11, 'Chiguayante'),
(517, 11, 'Florida'),
(518, 11, 'Hualqui'),
(519, 11, 'Lota'),
(520, 11, 'Penco'),
(521, 11, 'San Pedro de La Paz'),
(522, 11, 'Santa Juana'),
(523, 11, 'Talcahuano'),
(524, 11, 'Tomé'),
(525, 11, 'Hualpén'),
(526, 11, 'Lebu'),
(527, 11, 'Arauco'),
(528, 11, 'Cañete'),
(529, 11, 'Contulmo'),
(530, 11, 'Curanilahue'),
(531, 11, 'Los Álamos'),
(532, 11, 'Tirúa'),
(533, 11, 'Los Ángeles'),
(534, 11, 'Antuco'),
(535, 11, 'Cabrero'),
(536, 11, 'Laja'),
(537, 11, 'Mulchén'),
(538, 11, 'Nacimiento'),
(539, 11, 'Negrete'),
(540, 11, 'Quilaco'),
(541, 11, 'Quilleco'),
(542, 11, 'San Rosendo'),
(543, 11, 'Santa Bárbara'),
(544, 11, 'Tucapel'),
(545, 11, 'Yumbel'),
(546, 11, 'Alto Biobío'),
(547, 12, 'Temuco'),
(548, 12, 'Carahue'),
(549, 12, 'Cunco'),
(550, 12, 'Curarrehue'),
(551, 12, 'Freire'),
(552, 12, 'Galvarino'),
(553, 12, 'Gorbea'),
(554, 12, 'Lautaro'),
(555, 12, 'Loncoche'),
(556, 12, 'Melipeuco'),
(557, 12, 'Nueva Imperial'),
(558, 12, 'Padre Las Casas'),
(559, 12, 'Perquenco'),
(560, 12, 'Pitrufquén'),
(561, 12, 'Pucón'),
(562, 12, 'Saavedra'),
(563, 12, 'Teodoro Schmidt'),
(564, 12, 'Toltén'),
(565, 12, 'Vilcún'),
(566, 12, 'Villarrica'),
(567, 12, 'Cholchol'),
(568, 12, 'Angol'),
(569, 12, 'Collipulli'),
(570, 12, 'Curacautín'),
(571, 12, 'Ercilla'),
(572, 12, 'Lonquimay'),
(573, 12, 'Los Sauces'),
(574, 12, 'Lumaco'),
(575, 12, 'Purén'),
(576, 12, 'Renaico'),
(577, 12, 'Traiguén'),
(578, 12, 'Victoria'),
(579, 13, 'Valdivia'),
(580, 13, 'Corral'),
(581, 13, 'Lanco'),
(582, 13, 'Los Lagos'),
(583, 13, 'Máfil'),
(584, 13, 'Mariquina'),
(585, 13, 'Paillaco'),
(586, 13, 'Panguipulli'),
(587, 13, 'La Unión'),
(588, 13, 'Futrono'),
(589, 13, 'Lago Ranco'),
(590, 13, 'Río Bueno'),
(591, 14, 'Puerto Montt'),
(592, 14, 'Calbuco'),
(593, 14, 'Cochamó'),
(594, 14, 'Fresia'),
(595, 14, 'Frutillar'),
(596, 14, 'Los Muermos'),
(597, 14, 'Llanquihue'),
(598, 14, 'Maullín'),
(599, 14, 'Puerto Varas'),
(600, 14, 'Castro'),
(601, 14, 'Ancud'),
(602, 14, 'Chonchi'),
(603, 14, 'Curaco de Vélez'),
(604, 14, 'Dalcahue'),
(605, 14, 'Puqueldón'),
(606, 14, 'Queilén'),
(607, 14, 'Quellón'),
(608, 14, 'Quemchi'),
(609, 14, 'Quinchao'),
(610, 14, 'Osorno'),
(611, 14, 'Puerto Octay'),
(612, 14, 'Purranque'),
(613, 14, 'Puyehue'),
(614, 14, 'Río Negro'),
(615, 14, 'San Juan de la Costa'),
(616, 14, 'San Pablo'),
(617, 14, 'Chaitén'),
(618, 14, 'Futaleufú'),
(619, 14, 'Hualaihué'),
(620, 14, 'Palena'),
(621, 15, 'Coyhaique'),
(622, 15, 'Lago Verde'),
(623, 15, 'Aysén'),
(624, 15, 'Cisnes'),
(625, 15, 'Guaitecas'),
(626, 15, 'Cochrane'),
(627, 15, 'O\'Higgins'),
(628, 15, 'Tortel'),
(629, 15, 'Chile Chico'),
(630, 15, 'Río Ibáñez'),
(631, 16, 'Punta Arenas'),
(632, 16, 'Laguna Blanca'),
(633, 16, 'Río Verde'),
(634, 16, 'San Gregorio'),
(635, 16, 'Cabo de Hornos'),
(636, 16, 'Antártica'),
(637, 16, 'Porvenir'),
(638, 16, 'Primavera'),
(639, 16, 'Timaukel'),
(640, 16, 'Natales'),
(641, 16, 'Torres del Paine'),
(642, 7, 'Santiago'),
(643, 7, 'Cerrillos'),
(644, 7, 'Cerro Navia'),
(645, 7, 'Conchalí'),
(646, 7, 'El Bosque'),
(647, 7, 'Estación Central'),
(648, 7, 'Huechuraba'),
(649, 7, 'Independencia'),
(650, 7, 'La Cisterna'),
(651, 7, 'La Florida'),
(652, 7, 'La Granja'),
(653, 7, 'La Pintana'),
(654, 7, 'La Reina'),
(655, 7, 'Las Condes'),
(656, 7, 'Lo Barnechea'),
(657, 7, 'Lo Espejo'),
(658, 7, 'Lo Prado'),
(659, 7, 'Macul'),
(660, 7, 'Maipú'),
(661, 7, 'Ñuñoa'),
(662, 7, 'Pedro Aguirre Cerda'),
(663, 7, 'Peñalolén'),
(664, 7, 'Providencia'),
(665, 7, 'Pudahuel'),
(666, 7, 'Quilicura'),
(667, 7, 'Quinta Normal'),
(668, 7, 'Recoleta'),
(669, 7, 'Renca'),
(670, 7, 'San Joaquín'),
(671, 7, 'San Miguel'),
(672, 7, 'San Ramón'),
(673, 7, 'Vitacura'),
(674, 7, 'Puente Alto'),
(675, 7, 'Pirque'),
(676, 7, 'San José de Maipo'),
(677, 7, 'Colina'),
(678, 7, 'Lampa'),
(679, 7, 'Til Til'),
(680, 7, 'San Bernardo'),
(681, 7, 'Buin'),
(682, 7, 'Calera de Tango'),
(683, 7, 'Paine'),
(684, 7, 'Melipilla'),
(685, 7, 'Alhué'),
(686, 7, 'Curacaví'),
(687, 7, 'María Pinto'),
(688, 7, 'San Pedro'),
(689, 7, 'Talagante'),
(690, 7, 'El Monte'),
(691, 7, 'Isla de Maipo'),
(692, 7, 'Padre Hurtado'),
(693, 7, 'Peñaflor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `regiones`
--

CREATE TABLE `regiones` (
  `id_region` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `regiones`
--

INSERT INTO `regiones` (`id_region`, `name`) VALUES
(1, 'Región de Arica y Parinacota'),
(2, 'Región de Tarapacá'),
(3, 'Región de Antofagasta'),
(4, 'Región de Atacama'),
(5, 'Región de Coquimbo'),
(6, 'Región de Valparaíso'),
(7, 'Región Metropolitana de Santiago'),
(8, 'Región del Libertador General Bernardo OHiggins'),
(9, 'Región del Maule'),
(10, 'Región de Ñuble'),
(11, 'Región del Biobío'),
(12, 'Región de La Araucanía'),
(13, 'Región de Los Ríos'),
(14, 'Región de Los Lagos'),
(15, 'Región Aysén del General Carlos Ibáñez del Campo'),
(16, 'Región de Magallanes y de la Antártica Chilena');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `votos`
--

CREATE TABLE `votos` (
  `ID` int(250) NOT NULL,
  `nombreyapellido` varchar(250) NOT NULL,
  `alias` varchar(250) NOT NULL,
  `RUT` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `region` varchar(250) NOT NULL,
  `comuna` varchar(250) NOT NULL,
  `candidato` varchar(250) NOT NULL,
  `entere` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `votos`
--

INSERT INTO `votos` (`ID`, `nombreyapellido`, `alias`, `RUT`, `email`, `region`, `comuna`, `candidato`, `entere`) VALUES
(1, 'Nicolas caceres', 'Strangeugu', '19879040-0', 'nicolasivancaceres@gmail.com', '7', '674', '1', 'WEB, Redes Sociales');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `candidatos`
--
ALTER TABLE `candidatos`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_candidato_comuna` (`id_comuna`);

--
-- Indices de la tabla `comunas`
--
ALTER TABLE `comunas`
  ADD PRIMARY KEY (`id_city`),
  ADD KEY `FK_cities_regions` (`id_region`);

--
-- Indices de la tabla `regiones`
--
ALTER TABLE `regiones`
  ADD PRIMARY KEY (`id_region`);

--
-- Indices de la tabla `votos`
--
ALTER TABLE `votos`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `candidatos`
--
ALTER TABLE `candidatos`
  MODIFY `ID` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `comunas`
--
ALTER TABLE `comunas`
  MODIFY `id_city` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=694;

--
-- AUTO_INCREMENT de la tabla `regiones`
--
ALTER TABLE `regiones`
  MODIFY `id_region` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `votos`
--
ALTER TABLE `votos`
  MODIFY `ID` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `candidatos`
--
ALTER TABLE `candidatos`
  ADD CONSTRAINT `FK_candidato_comuna` FOREIGN KEY (`id_comuna`) REFERENCES `comunas` (`id_city`);

--
-- Filtros para la tabla `comunas`
--
ALTER TABLE `comunas`
  ADD CONSTRAINT `FK_cities_regions` FOREIGN KEY (`id_region`) REFERENCES `regiones` (`id_region`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
