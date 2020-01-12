-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  Dim 12 jan. 2020 à 01:14
-- Version du serveur :  10.4.11-MariaDB
-- Version de PHP :  7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `fotscor`
--

-- --------------------------------------------------------

--
-- Structure de la table `competition`
--

CREATE TABLE `competition` (
  `id` int(11) NOT NULL,
  `code` varchar(5) NOT NULL,
  `name` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `onHoverLogo` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `participation`
--

CREATE TABLE `participation` (
  `teamId` int(11) NOT NULL,
  `competitionId` int(255) NOT NULL,
  `saison` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `team`
--

CREATE TABLE `team` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `team`
--

INSERT INTO `team` (`id`, `name`, `logo`) VALUES
(1, 'Germany', 'https://images.vexels.com/media/users/3/152460/isolated/preview/825e80bac186d247dd9332f1440d20df-logotipo-del-equipo-de-f-tbol-de-alemania-by-vexels.png'),
(2, 'Spain', 'https://www.trzcacak.rs/myfile/detail/126-1262059_spain-national-football-team-logo-png-spain-national.png'),
(3, ' Portugal', 'https://www.futboldecostarica.com/wp-content/uploads/2016/06/portugal-official-logo-soccer.png'),
(4, ' England', 'https://www.stickpng.com/assets/images/5b43227ae99939b4572e329c.png'),
(5, 'France', 'https://pngimage.net/wp-content/uploads/2018/06/france-football-logo-png-8.png'),
(6, 'Denmark', 'https://cdn.freelogovectors.net/wp-content/uploads/2018/03/danish_football_association-logo.png'),
(7, 'Italy', 'http://www.logo-designer.co/wp-content/uploads/2017/10/2017-italy-football-logo-figc-2018-world-cup.png'),
(8, 'Switzerland', 'https://www.pngkey.com/png/detail/105-1050508_switzerland-national-football-team-switzerland-football-logo.png'),
(9, 'Ukraine', 'https://i.pinimg.com/originals/27/cd/5f/27cd5fcfe5b9431136556b5acd6d9e34.png'),
(10, 'Sweden', 'https://upload.wikimedia.org/wikipedia/ar/archive/3/35/20180720000737%21Sweden_national_football_team_logo.png'),
(11, 'Poland', 'https://cdn.freelogovectors.net/wp-content/uploads/2018/03/polish_football_association_logo.png'),
(12, 'Czech Republic', 'https://1.bp.blogspot.com/-5eAqM5fFTbY/WC-CzCy1v-I/AAAAAAABFzc/yU4wQMwQsL4W4YJ_Y-vLCnMFt2MZQqWUgCLcB/s400/REP.%2BTCHECA%2BESCUDO%2B2.png'),
(13, 'Croatia', 'https://seeklogo.com/images/C/croacia-logo-59BE0ED23D-seeklogo.com.png'),
(14, 'Turkey', 'https://i.pinimg.com/originals/76/67/58/766758439534dbbe0ff2e08a82b89460.png'),
(15, 'Belgium', 'https://brandslogo.net/wp-content/uploads/2013/09/urbsfa-kbvb-vector-logo.png'),
(16, 'Russia', 'https://upload.wikimedia.org/wikipedia/en/thumb/6/65/Russia_national_football_team_crest.svg/1200px-Russia_national_football_team_crest.svg.png'),
(17, 'Austria', 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4a/Coat_of_arms_of_Austria.svg/1200px-Coat_of_arms_of_Austria.svg.png'),
(18, 'Wales', 'https://www.clipartkey.com/mpngs/m/136-1369666_wales-national-soccer-team-logo-wales-football-team.png'),
(19, 'Finland', 'https://upload.wikimedia.org/wikipedia/fi/thumb/f/f3/Suomen_Palloliiton_maajoukkuetunnus.svg/593px-Suomen_Palloliiton_maajoukkuetunnus.svg.png'),
(20, 'Netherlands', 'https://upload.wikimedia.org/wikipedia/it/4/45/Scudo_nazionale_calcio_femminile_Paesi_Bassi.png'),
(21, 'Fluminense FC', 'https://upload.wikimedia.org/wikipedia/en/thumb/9/9e/Fluminense_fc_logo.svg/1200px-Fluminense_fc_logo.svg.png'),
(22, 'CA Mineiro', 'https://upload.wikimedia.org/wikipedia/commons/5/5f/Atletico_mineiro_galo.png'),
(23, 'Grêmio FBPA', 'https://i.pinimg.com/originals/2e/6a/74/2e6a74e655769475c28bbb5af5d9964e.png'),
(24, 'CA Paranaense', 'https://www.logofootball.net/wp-content/uploads/Athletico-Paranaense-Logo.png'),
(25, 'SE Palmeiras', 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/10/Palmeiras_logo.svg/1200px-Palmeiras_logo.svg.png'),
(26, 'Botafogo FR', 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/52/Botafogo_de_Futebol_e_Regatas_logo.svg/1200px-Botafogo_de_Futebol_e_Regatas_logo.svg.png'),
(27, 'Cruzeiro EC', 'https://upload.wikimedia.org/wikipedia/en/9/9a/Cruzeiro_ec_crest.png'),
(28, 'Chapecoense AF', 'http://as00.epimg.net/img/comunes/fotos/fichas/equipos/large/1149.png'),
(29, 'Avaí FC', 'https://1.bp.blogspot.com/-Y4dDdAYT7GI/XM751Iln46I/AAAAAAAAs8s/C29ISZ-ZsMUTZLiDxT50SLxq-brVoqGTgCLcBGAs/s1600/Avai-Futebol-Clube-SC-1985.png'),
(30, 'São Paulo FC', 'https://i.pinimg.com/originals/78/de/54/78de548066c67ce08670bb61bbeb0c3c.png'),
(31, 'EC Bahia', 'http://as00.epimg.net/img/comunes/fotos/fichas/equipos/large/1853.png'),
(32, 'SC Corinthians Paulista', 'https://upload.wikimedia.org/wikipedia/en/thumb/5/5a/Sport_Club_Corinthians_Paulista_crest.svg/1200px-Sport_Club_Corinthians_Paulista_crest.svg.png'),
(33, 'CR Vasco da Gama', 'https://upload.wikimedia.org/wikipedia/fr/thumb/1/1a/ClubDeRegatasVascoDaGama.svg/1200px-ClubDeRegatasVascoDaGama.svg.png'),
(34, 'CR Flamengo', 'https://www.logofootball.net/wp-content/uploads/CR-Flamengo-Logo.png'),
(35, 'Ceará SC', 'https://upload.wikimedia.org/wikipedia/en/7/7d/Cear%C3%A1_SC.pngs'),
(36, 'Fortaleza EC', 'https://upload.wikimedia.org/wikipedia/commons/9/9e/Escudo_do_Fortaleza_EC.png'),
(37, 'CS Alagoano', 'https://www.logofootball.net/wp-content/uploads/CS-Alagoano-Logo-750x750.png'),
(38, 'Goiás EC', 'https://upload.wikimedia.org/wikipedia/en/a/a4/Goi%C3%A1s_Esporte_Clube.png'),
(39, 'SC Internacional', 'https://pbs.twimg.com/media/CaKELSmWwAA75ov.png'),
(40, 'Santos FC', 'https://logodownload.org/wp-content/uploads/2017/02/ponte-preta-logo-escudo-6.png');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` int(255) NOT NULL,
  `password` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `vote`
--

CREATE TABLE `vote` (
  `userId` int(11) NOT NULL,
  `matchId` int(11) NOT NULL,
  `homeTeam` int(11) DEFAULT NULL,
  `draw` int(11) DEFAULT NULL,
  `awayTeam` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `_match`
--

CREATE TABLE `_match` (
  `id` int(11) NOT NULL,
  `homeTeam` int(11) NOT NULL,
  `awayTeam` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `_date` date NOT NULL,
  `_time` time(6) NOT NULL,
  `homeTeamScore` int(11) DEFAULT NULL,
  `awayTeamScore` int(11) DEFAULT NULL,
  `winner` int(11) DEFAULT NULL,
  `competition` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `competition`
--
ALTER TABLE `competition`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `participation`
--
ALTER TABLE `participation`
  ADD KEY `teamId` (`teamId`),
  ADD KEY `competitionId` (`competitionId`);

--
-- Index pour la table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `vote`
--
ALTER TABLE `vote`
  ADD KEY `userId` (`userId`),
  ADD KEY `matchId` (`matchId`);

--
-- Index pour la table `_match`
--
ALTER TABLE `_match`
  ADD PRIMARY KEY (`id`),
  ADD KEY `homeTeam` (`homeTeam`),
  ADD KEY `awayTeam` (`awayTeam`),
  ADD KEY `competition` (`competition`),
  ADD KEY `winner` (`winner`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `team`
--
ALTER TABLE `team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `_match`
--
ALTER TABLE `_match`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
