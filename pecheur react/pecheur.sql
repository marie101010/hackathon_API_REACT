-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Ven 31 Juillet 2020 à 08:53
-- Version du serveur :  5.7.30-0ubuntu0.18.04.1
-- Version de PHP :  7.2.24-0ubuntu0.18.04.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `pecheur_api`
--

-- --------------------------------------------------------

--
-- Structure de la table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `post_id_id` int(11) DEFAULT NULL,
  `nom_auteur_c` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom_auteur_c` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contenu` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_comment` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `comment`
--

INSERT INTO `comment` (`id`, `post_id_id`, `nom_auteur_c`, `prenom_auteur_c`, `contenu`, `date_comment`) VALUES
(1, 1, 'Jean', 'Marc', 'Ceci est le contenu d\'un commentaire ', '2020-07-28'),
(2, 5, 'Moi', 'Même', 'Ceci est un test ', '2020-07-28');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20200728072301', '2020-07-28 09:23:33', 46);

-- --------------------------------------------------------

--
-- Structure de la table `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `nom_poisson` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo_poisson` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `taille_poisson` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `poids_poisson` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8mb4_unicode_ci,
  `nom_auteur_p` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom_auteur_p` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `post`
--

INSERT INTO `post` (`id`, `nom_poisson`, `photo_poisson`, `taille_poisson`, `poids_poisson`, `details`, `nom_auteur_p`, `prenom_auteur_p`, `created_at`) VALUES
(1, 'Anguille', '../public/photo/anguille.jpg', '200', '24', 'Bord du lac du Der', 'Daniel', 'Jacques', '2020-07-28 09:29:40'),
(2, 'Breme', './breme.jpg', '123', '45', 'Plage de Giffaumont', 'Poulet', 'Jean-Marc', '2020-07-28 09:29:40'),
(3, 'Brochet', 'brochet.jpg', '50', '87', 'Bord de la seille', 'Louise', 'Lucien', '2020-07-28 09:29:40'),
(4, 'Carassin', 'carassin.jpg', '4', '1.3', 'Avec un moulinet n°4', 'Do', 'Joseph', '2020-07-28 09:29:40'),
(5, 'Carpe', 'carpe.jpg', '44', '44', 'Au plan d\'eau', 'Nina', 'Achille', '2020-07-28 09:29:40'),
(6, 'Esturgeon', 'esturgeon.jpg', '87', '75', 'En famille, première prise', 'Camille', 'Jacqueline', '2020-07-28 09:29:40'),
(7, 'Tanche', 'tanche.jpg', '74', '54', 'Ce poisson a été péché avec amour.', 'Marc', 'Karl', '2020-07-28 09:29:40'),
(8, 'Brochet', '1', '127', '50', 'Aux bords de la Marne', 'Perrin', 'Simone', '2020-07-28 09:29:40'),
(9, 'Esturgeon', '2', '15', '85.2', 'Après 6h d\'attente', 'Drucker', 'Michel', '2020-07-28 09:29:40'),
(10, 'Tanche', '3', '257', '75.2', 'Avec un moulinet 12', 'Marois', 'Laurent', '2020-07-28 09:29:40'),
(11, 'Saumon', '4', '52', '59', 'Péché 3 minutes après avoir lancé l\'appât', 'Baralère', 'Lenny', '2020-07-28 09:29:40'),
(12, 'Carassin', '5', '77', '142', 'Pêché à la mouche', 'Croquette', 'Davy', '2020-07-28 09:29:40'),
(13, 'Brochet', '6', '68', '59', 'Ce poisson a été péché avec amour.', 'Dick', 'Moby', '2020-07-28 09:29:40'),
(14, 'Carpe', '7', '12', '7', 'J\'ai cru que c\'était une chaussure', 'Chloé', 'Thomas', '2020-07-28 09:29:40'),
(15, 'Breme', '8', '7', '0.6', 'Dans l\'étang derrière chez moi', 'Descend', 'Manu', '2020-07-28 09:29:40'),
(16, 'Grosse anguille', '9', '208', '103', 'Au filet', 'Forêt', 'Johnny', '2020-07-28 09:29:40'),
(17, 'Brochet', '10', '120', '42', 'Sur les bords du Rhin', 'Du Lac', 'Daniel', '2020-07-28 09:29:40'),
(18, 'Poisson-chat', '11', '88', '50', 'Péché aux bords du Nil', 'Louis', 'Emile', '2020-07-28 09:29:40'),
(19, 'Carassin', '12', '89', '57', 'Ce poisson a été péché avec amour.', 'Supérieur', 'Florian', '2020-07-28 09:29:40');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_9474526CE85F12B8` (`post_id_id`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `FK_9474526CE85F12B8` FOREIGN KEY (`post_id_id`) REFERENCES `post` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
