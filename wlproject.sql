-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Dim 26 Juin 2016 à 23:46
-- Version du serveur :  10.1.10-MariaDB
-- Version de PHP :  7.0.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `wlproject`
--

-- --------------------------------------------------------

--
-- Structure de la table `inscription`
--

CREATE TABLE `inscription` (
  `cne` text NOT NULL,
  `cin` text NOT NULL,
  `prenom` text NOT NULL,
  `nom` text NOT NULL,
  `email` text NOT NULL,
  `dn` text NOT NULL,
  `address` text NOT NULL,
  `bac` text NOT NULL,
  `mb` text NOT NULL,
  `bac2` text NOT NULL,
  `mb2` text NOT NULL,
  `bac3` text NOT NULL,
  `mb3` text NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `inscription`
--

INSERT INTO `inscription` (`cne`, `cin`, `prenom`, `nom`, `email`, `dn`, `address`, `bac`, `mb`, `bac2`, `mb2`, `bac3`, `mb3`, `id`) VALUES
('44', '44', '44', '44', '44', '44', '44', '44', '44', '44', '44', '44', '44', 44),
('44', '44', '44', '44', '44', '44', '44', '44', '44', '44', '44', '44', '44', 45),
('add', 'add', 'add', 'add', 'add', 'add', 'add', 'add', 'add', 'add', 'add', 'add', 'add', 46),
('add', 'add', 'add', 'add', 'add', 'add', 'add', 'add', 'add', 'add', 'add', 'add', 'add', 47),
('add', 'add', 'add', 'add', 'add', 'add', 'add', 'add', 'add', 'add', 'add', 'add', 'add', 48),
('addddd', 'addddd', 'addddd', 'addddd', 'addddd', 'addddd', 'addddd', 'addddd', 'addddd', 'addddd', 'addddd', 'addddd', 'addddd', 49),
('addddd', 'addddd', 'addddd', 'addddd', 'addddd', 'addddd', 'addddd', 'addddd', 'addddd', 'addddd', 'addddd', 'addddd', 'addddd', 50),
('addddd', 'addddd', 'addddd', 'addddd', 'addddd', 'addddd', 'addddd', 'addddd', 'addddd', 'addddd', 'addddd', 'addddd', 'addddd', 51),
('d', 'addddd', 'addddd', 'addddd', 'addddd', 'addddd', 'addddd', 'addddd', 'addddd', 'addddd', 'addddd', 'addddd', 'addddd', 52),
('d', 'd', 'ee', 'ee', 'ee', 'ee', 'ee', 'ee', 'ee', 'ee', 'ee', 'ee', 'ee', 53),
('d', 'd', 'd', 'd', 'ee', 'ee', 'ee', 'ee', 'ee', 'ee', 'ee', 'ee', 'ee', 54),
('d', 'd', 'dd', 'd', 'd@d.d', 'ee', 'ee', 'ee', 'ee', 'ee', 'ee', 'ee', 'ee', 55),
('z', 'z', 'z', 'z', 'z', 'z', 'z', 'z', '', 'z', '', 'z', '', 56),
('aaa', 'aaa', 'aaaa', 'aaaa', 'aaaa', 'aaaa', 'aaaa', 'aaaa', '444', 'aaaa', '444', 'aaaa', '444', 57);

-- --------------------------------------------------------

--
-- Structure de la table `status`
--

CREATE TABLE `status` (
  `id` int(11) NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `ID_User` int(11) NOT NULL,
  `UserName` text NOT NULL,
  `UserEmail` text NOT NULL,
  `Password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`ID_User`, `UserName`, `UserEmail`, `Password`) VALUES
(1, 'a', 'a', 'a');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `inscription`
--
ALTER TABLE `inscription`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID_User`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `inscription`
--
ALTER TABLE `inscription`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `ID_User` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
