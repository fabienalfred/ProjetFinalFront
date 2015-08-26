SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


CREATE DATABASE IF NOT EXISTS `dbbovoyage` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `dbbovoyage`;

-- --------------------------------------------------------

--
-- Structure de la table `dates_voyages`
--

CREATE TABLE IF NOT EXISTS `DateVoyage` (
  `kp_datevoyage` int(11) NOT NULL DEFAULT '0',
  `dateDepart` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `dateRetour` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `prix` double NOT NULL DEFAULT '0',
  `ke_destination` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY(`kp_datevoyage`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Contenu de la table `dates_voyages`
--

INSERT INTO `DateVoyage` (`kp_datevoyage`, `dateDepart`, `dateRetour`, `prix`, `ke_destination`) VALUES
(1, '2016-06-12 00:00:00', '2016-06-24 00:00:00', 1359, 1),
(2, '2016-08-01 00:00:00', '2016-08-15 00:00:00', 2450, 1),
(3, '2016-09-03 00:00:00', '2016-09-15 00:00:00', 2420, 1),
(4, '2016-06-03 00:00:00', '2016-06-15 00:00:00', 2250, 2),
(5, '2016-07-08 00:00:00', '2016-07-18 00:00:00', 2300, 2),
(6, '2016-07-02 00:00:00', '2016-07-15 00:00:00', 2700, 3),
(7, '2016-11-12 00:00:00', '2016-11-25 00:00:00', 2890, 3),
(8, '2016-12-27 00:00:00', '2017-01-03 00:00:00', 3200, 4),
(9, '2015-11-30 00:00:00', '2015-12-26 00:00:00', 2750, 5),
(10, '2016-01-15 00:00:00', '2016-02-03 00:00:00', 3225, 5);

-- --------------------------------------------------------

--
-- Structure de la table `destinations`
--

CREATE TABLE IF NOT EXISTS `Destination` (
  `kp_destination` int(11) NOT NULL DEFAULT '0',
  `region` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL,
  PRIMARY KEY(`kp_destination`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6;

--
-- Contenu de la table `destinations`
--

INSERT INTO `Destination` (`kp_destination`, `region`, `description`) VALUES
(1, 'Guadeloupe', 'Dans un site exceptionnel,en bordure d''un petit lagon turquoise, tout est réuni pour un séjour paradisiaque à la découverte des merveilles de la terre et de la mer'),
(2, 'Saint-Barthélémy', 'Imaginez une île où il fait 26 à 28 °C toute l''année, et où la température de la mer est la même que celle de l''air'),
(3, 'Birmanie', 'La Birmanie est un pays passionnant pour tous ceux qui s''interessent à l''art, aux civilisations, à l''hindouisme. Ce pays s''ouvre et a conservé toute la richesse de son patrimoine culturel'),
(4, 'Canada', 'Découvrez la nature généreuse et les grandes villes du Canada en toute saison, grâce aux nombreux circuits que nous avons élaborés.'),
(5, 'Australie', 'Envie de lézarder sur une plage dorée, de plonger dans le grand bleu, de vous relaxer et vous ressourcer dans un cadre idyllique, vous trouverez vous aussi votre petit coin de paradis !');

-- --------------------------------------------------------

--
-- Structure de la table `images`
--

CREATE TABLE IF NOT EXISTS `images` (
  `ke_destination` int(11) NOT NULL DEFAULT '0',
  `image` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `images`
--

INSERT INTO `images` (`ke_destination`, `image`) VALUES
(1, 'palmier.jpeg'),
(2, 'saint-barth_1.jpg'),
(2, 'saint-barth_2.jpg'),
(3, 'myanmar_1.jpg'),
(3, 'myanmar_2.jpg'),
(3, 'myanmar_3.jpg'),
(4, 'canadat.gif'),
(4, 'canada_2.jpg'),
(5, 'australie_1.jpg'),
(5, 'australie_2.jpg'),
(5, 'australie_3.jpg');
