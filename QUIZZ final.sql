-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : mar. 15 fév. 2022 à 10:05
-- Version du serveur :  8.0.28-0ubuntu0.20.04.3
-- Version de PHP : 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `QUIZZ`
--

-- --------------------------------------------------------

--
-- Structure de la table `Game`
--

CREATE TABLE `Game` (
  `idGame` int UNSIGNED NOT NULL,
  `numGame` varchar(10) NOT NULL,
  `Q1` varchar(300) NOT NULL,
  `R1` varchar(300) NOT NULL,
  `Q2` varchar(300) NOT NULL,
  `R2` varchar(300) NOT NULL,
  `Q3` varchar(300) NOT NULL,
  `R3` varchar(300) NOT NULL,
  `Q4` varchar(300) NOT NULL,
  `R4` varchar(300) NOT NULL,
  `Q5` varchar(300) NOT NULL,
  `R5` varchar(300) NOT NULL,
  `idUser` int UNSIGNED DEFAULT NULL,
  `idHistorique` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `Historique`
--

CREATE TABLE `Historique` (
  `idHistorique` int UNSIGNED NOT NULL,
  `numHistorique` varchar(15) NOT NULL,
  `idUser` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `Lien`
--

CREATE TABLE `Lien` (
  `idLien` int UNSIGNED NOT NULL,
  `idTheme` int UNSIGNED DEFAULT NULL,
  `idQuestion` int UNSIGNED DEFAULT NULL,
  `idReponse` int UNSIGNED DEFAULT NULL,
  `idGame` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `Question`
--

CREATE TABLE `Question` (
  `idQuestion` int UNSIGNED NOT NULL,
  `question` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `idTheme` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `Question`
--

INSERT INTO `Question` (`idQuestion`, `question`, `idTheme`) VALUES
(1, 'Où est-ce que Kaneki décide de travailler ?', 1),
(2, 'Comment s’appelle l’auteur que Kaneki aime beaucoup ?', 1),
(3, 'Dans quel manga ou anime, le héros est un petit robot ?', 1),
(4, 'Qui est l’étudiant  qui dépasse certain héro pro ?', 1),
(5, 'Qui emmène Eren au tribunal ?', 1),
(6, 'Lors du combat final contre Buu buu , Vegeta déclare que ?', 1),
(7, 'Quelle est l\'année de sortie de la Super Nintendo en France ? ', 2),
(8, 'Dans quelle ville est né Altaïr, le héros du premier Assassin\'s Creed ?', 2),
(9, 'Comment s’appel le puissant héro de God of war ?', 2),
(10, 'De quels jeux Franklin Michael Trevor sont-ils  issus ?', 2),
(11, 'Quel studio a développé Call of Duty: Advanced Warfare ?', 2),
(12, 'Quel est le nom du créateur de Mario ?', 2),
(13, 'Quel moteur graphique utilisé dans les jeux battlefield ?', 2),
(14, 'Dans the last of us comment appelle t’on le champignon responsable de l’infection ?', 2),
(15, 'Dans Apex Legend comment se nomme le héros possédant un corbeau ?', 2),
(16, 'Quel est le studio qui a crée la licence Assassin’s Creed ?', 2),
(17, 'De quel film est issu la musique culte « Now we are free »?', 3),
(18, 'Dans le film « La Chute du Faucon noir » quel est la force d’intervention à pied ?', 3),
(19, 'Dans le film gladiator qui assassine Marc Aurèle ? ', 3),
(20, 'En quel lieu Frodon se fait-il blesser par l\'un des neuf cavaliers noirs ?', 3),
(21, 'A travers quel artefact possédé par Saroumane voit-on luire l\'oeil de Sauron ?', 3),
(22, 'Dans intouchable, qu’elle est l’handicape de Phillipe ?', 3),
(23, 'Dans The Amazing Spiderman quel est la vraie identité d’électro ?', 3),
(24, 'Dans X men origins Wolwerine Logan se prend une explosion de quel type ?', 3),
(25, 'Comment s’ appel le méchant qui a copié la technologie Stark lors du grand prix à Monaco ?', 3),
(26, 'Dans Transformers comment appelle t’on l’élément pouvant réanimer un transformers ?', 3),
(27, 'Que veut dire High tech ?', 4),
(28, 'Que veut dire RAM ?', 4),
(29, 'Quel est le role d’un processeur ?', 4),
(30, 'Où se trouve le siège d’Intel Corporation ?', 4),
(31, 'Que veut dire CPL ?', 4),
(32, 'Quel est le le classement juste  des stockages les plus rapides ?', 4),
(33, 'Quel type de connexion est la plus rapide ?', 4),
(34, 'Quel débit est le plus rapide ?', 4),
(35, 'Quel est le nouveau nom de Facebook?', 4),
(36, 'Qui est le successeur de Steve Jobs ?', 4);

-- --------------------------------------------------------

--
-- Structure de la table `Reponse`
--

CREATE TABLE `Reponse` (
  `idReponse` int UNSIGNED NOT NULL,
  `r1` varchar(150) NOT NULL,
  `r2` varchar(150) NOT NULL,
  `r3` varchar(150) NOT NULL,
  `r4` varchar(150) NOT NULL,
  `bReponse` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `Reponse`
--

INSERT INTO `Reponse` (`idReponse`, `r1`, `r2`, `r3`, `r4`, `bReponse`) VALUES
(1, 'Dans un bar.', 'Dans un café appelé l’Antique.', 'Dans un restaurant pour Goule. ', 'À l’université.', 'Dans un café appelé l’Antique.'),
(2, 'Takatsuki Sen', 'Tachibana Sen', 'Takatsuki Seido', 'Akira Mado', 'Takatsuki Sen'),
(3, 'Yume Senshi', 'Wingman', 'Astro Boy', ' Gundam Wing, Gundam Seed et Gundam 00 Mazinger', 'Astro Boy'),
(4, 'Lemillion', 'Endevor', 'Hawks', 'Stain ', 'Lemillion'),
(5, 'Erwin Smith', 'Levy', 'Hanzi Zoé', 'Mikasa Ackerman', 'Levy'),
(6, 'Goku est un imbécile', 'Goku est le numéro 1', 'Goku est le plus gentil des sayan', 'Goku est son plus grand rival', 'Goku est le numéro 1'),
(7, '1990', '1991', '1992', '1993', '1991'),
(8, 'Jérusalemen', 'Rome', 'Masyaf', 'Sparte', 'Masyaf'),
(9, 'Credos ', 'Démios ', 'Kratos ', 'Sakrot', 'Kratos'),
(10, 'Unity ', 'Unreal Engine', 'Rage ', 'Frostbite ', 'Frostbite'),
(11, 'Treyarch studio', 'Sledge Hammer Games', 'Rockstar Games', 'Infinity Ward', 'Rockstar Games'),
(12, 'Akira Toriyama', 'Shigeru Miyamoto', 'Zang Yamoto', 'Dashan Wang', 'Shigeru Miyamoto'),
(13, 'Unity', 'Unreal Engine', 'Rage', 'Frostbite', 'Frostbite'),
(14, 'Cordyceps', 'Coprin', 'Amanite Phalloïde', 'Lactarius Amirus', 'Cordyceps'),
(15, 'Wraith', 'Sombra', 'Bloodhound', 'Mirage', 'Bloodhound'),
(16, 'Valve', 'Bethesda', 'Criterion', 'Ubisoft', 'Ubisoft'),
(17, 'Gladiator', 'Star Wars', 'Le seigneur des Anneaux', 'Il faut sauver le soldat Rayan', 'Gladiator'),
(18, 'Mac V SOG', 'Les Marines', 'La Delta Force', 'Les Spetsnaz', 'Les Marines'),
(19, 'Spartacus', 'Octave', 'Comode', 'Maximus', 'Comode'),
(20, 'Amon sûl', 'Le mont Ventoux', 'Le Gué de Bruinen', 'Le mont Valérien', 'Le mont Ventoux'),
(21, 'Le miroir Galadriel', 'Le bâton de pouvoir', 'Le Palantir', 'Le Tesseract', 'Le Palantir'),
(22, 'Il est paraplégique', 'Il est tétraplégique', 'Il est hémiplégique', 'Il est polyphylétique', 'Il est tétraplégique'),
(23, 'Arthur Parks', 'Steeve Rogers', 'Max Dillon', 'Curtis Connors', 'Max Dillon'),
(24, 'Incident industrielle', 'Une explosion', 'Une Explosion atomique', 'Un tir de mortier', 'Une Explosion atomique'),
(25, 'Enton Vanko', 'Ivan Vanko', 'Jin Khanè', 'Raymon Barkov', 'Ivan Vanko'),
(26, 'La Matrice de commandement', 'Le All Spark', 'Le cube de commandement', 'Le tesseract commandement', 'La Matrice de commandement'),
(27, 'Technologie', 'La petite technologie', 'La haute technologie', 'La techno', 'La haute technologie'),
(28, 'Random Access Memory', 'Right Acces Mobile', 'Rainbow Acces Memory', 'Random Admin Memory', 'Random Access Memory'),
(29, 'D’exécuter des fréquences d’images', 'D’échanger des données entre les différents composants informatique', 'De stocker des données', 'De centraliser la prise en charge de la RAM', 'D’échanger des données entre les différents composants informatique'),
(30, 'Santa Monica', 'Santa Clara', 'Santa Barbara', 'Santa Clause', 'Santa Clara'),
(31, 'Courant porteur de liens', 'Couverture pérméable de ligne', 'Courant porteur en ligne', 'Courant paramétrable de ligne', 'Courant porteur de liens'),
(32, 'HDD<SSD<SD<Flash Memory', 'Flash Memory <SD<HDD<SSD', 'SD<SSD<Flash Memory<HDD', 'SSD<HDD<Flash Memory<SD', 'SSD<HDD<Flash Memory<SD'),
(33, 'VDSL2', 'Modem', 'ADSL', 'Fibre', 'Fibre'),
(34, 'Tera bits/s', 'Gigabyte /s', 'Mégabyte/s', 'Microbytes /s', 'Tera bits/s'),
(35, 'Méta', 'Messenger', 'Discord', 'Zétaverse', 'Méta'),
(36, 'Ragnar Lothbrok', 'Mark Zuckerberg', 'Richard Branson', 'Tim Cook', 'Tim Cook');

-- --------------------------------------------------------

--
-- Structure de la table `Theme`
--

CREATE TABLE `Theme` (
  `idTheme` int UNSIGNED NOT NULL,
  `categorie` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `Theme`
--

INSERT INTO `Theme` (`idTheme`, `categorie`) VALUES
(1, 'anime'),
(2, 'gaming'),
(3, 'cinema'),
(4, 'tech');

-- --------------------------------------------------------

--
-- Structure de la table `User`
--

CREATE TABLE `User` (
  `idUser` int UNSIGNED NOT NULL,
  `nom` varchar(45) NOT NULL,
  `prenom` varchar(45) NOT NULL,
  `age` date NOT NULL,
  `pseudo` char(15) NOT NULL,
  `mail` varchar(45) NOT NULL,
  `mdp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `User`
--

INSERT INTO `User` (`idUser`, `nom`, `prenom`, `age`, `pseudo`, `mail`, `mdp`) VALUES
(1, 'mouret', 'sebastien', '1989-07-12', 'furi', 's.mouret.pro@gmail.com', 'test1234');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Game`
--
ALTER TABLE `Game`
  ADD PRIMARY KEY (`idGame`),
  ADD KEY `fk_GameHistorique_id` (`idHistorique`),
  ADD KEY `fk_GameUser_id` (`idUser`);

--
-- Index pour la table `Historique`
--
ALTER TABLE `Historique`
  ADD PRIMARY KEY (`idHistorique`),
  ADD KEY `fk_HistoriqueUser_id` (`idUser`);

--
-- Index pour la table `Lien`
--
ALTER TABLE `Lien`
  ADD PRIMARY KEY (`idLien`),
  ADD KEY `fk_LienTheme_id` (`idTheme`),
  ADD KEY `fk_LienQuestion_id` (`idQuestion`),
  ADD KEY `fk_LienReponse_id` (`idReponse`),
  ADD KEY `fk_LienGame_id` (`idGame`);

--
-- Index pour la table `Question`
--
ALTER TABLE `Question`
  ADD PRIMARY KEY (`idQuestion`),
  ADD KEY `fk_QuestionTheme_id` (`idTheme`);

--
-- Index pour la table `Reponse`
--
ALTER TABLE `Reponse`
  ADD PRIMARY KEY (`idReponse`);

--
-- Index pour la table `Theme`
--
ALTER TABLE `Theme`
  ADD PRIMARY KEY (`idTheme`);

--
-- Index pour la table `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`idUser`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `Game`
--
ALTER TABLE `Game`
  MODIFY `idGame` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `Historique`
--
ALTER TABLE `Historique`
  MODIFY `idHistorique` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `Lien`
--
ALTER TABLE `Lien`
  MODIFY `idLien` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `Question`
--
ALTER TABLE `Question`
  MODIFY `idQuestion` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT pour la table `Reponse`
--
ALTER TABLE `Reponse`
  MODIFY `idReponse` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT pour la table `Theme`
--
ALTER TABLE `Theme`
  MODIFY `idTheme` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `User`
--
ALTER TABLE `User`
  MODIFY `idUser` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `Game`
--
ALTER TABLE `Game`
  ADD CONSTRAINT `fk_GameHistorique_id` FOREIGN KEY (`idHistorique`) REFERENCES `Historique` (`idHistorique`),
  ADD CONSTRAINT `fk_GameUser_id` FOREIGN KEY (`idUser`) REFERENCES `User` (`idUser`);

--
-- Contraintes pour la table `Historique`
--
ALTER TABLE `Historique`
  ADD CONSTRAINT `fk_HistoriqueUser_id` FOREIGN KEY (`idUser`) REFERENCES `User` (`idUser`);

--
-- Contraintes pour la table `Lien`
--
ALTER TABLE `Lien`
  ADD CONSTRAINT `fk_LienGame_id` FOREIGN KEY (`idGame`) REFERENCES `Game` (`idGame`),
  ADD CONSTRAINT `fk_LienQuestion_id` FOREIGN KEY (`idQuestion`) REFERENCES `Question` (`idQuestion`),
  ADD CONSTRAINT `fk_LienReponse_id` FOREIGN KEY (`idReponse`) REFERENCES `Reponse` (`idReponse`),
  ADD CONSTRAINT `fk_LienTheme_id` FOREIGN KEY (`idTheme`) REFERENCES `Theme` (`idTheme`);

--
-- Contraintes pour la table `Question`
--
ALTER TABLE `Question`
  ADD CONSTRAINT `fk_QuestionTheme_id` FOREIGN KEY (`idTheme`) REFERENCES `Theme` (`idTheme`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
