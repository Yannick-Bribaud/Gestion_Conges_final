-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mer. 20 oct. 2021 à 04:38
-- Version du serveur :  10.4.11-MariaDB
-- Version de PHP :  7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `qxorm`
--

-- --------------------------------------------------------

--
-- Structure de la table `t_administrateur`
--

CREATE TABLE `t_administrateur` (
  `id` int(11) NOT NULL,
  `nom` varchar(30) DEFAULT NULL,
  `prenom` varchar(20) DEFAULT NULL,
  `genre` varchar(15) DEFAULT NULL,
  `dateNaissance` date DEFAULT NULL,
  `profession` varchar(40) DEFAULT NULL,
  `matricule` varchar(20) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  `login` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `adresse` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `t_administrateur`
--

INSERT INTO `t_administrateur` (`id`, `nom`, `prenom`, `genre`, `dateNaissance`, `profession`, `matricule`, `status`, `login`, `password`, `telephone`, `adresse`, `email`) VALUES
(12, 'David', 'James', 'Homme', '1969-01-01', 'Administrateur', '@dmi321S', 'Administrateur', 'admin', 'admin', '2289446466', 'Lomé', 'James@gmail.com');

-- --------------------------------------------------------

--
-- Structure de la table `t_congesforemploye`
--

CREATE TABLE `t_congesforemploye` (
  `idCng` int(11) NOT NULL,
  `idModelEmp` int(11) NOT NULL,
  `dbutCnge` date NOT NULL,
  `dureeCnge` int(11) NOT NULL,
  `finCnge` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `t_demandes`
--

CREATE TABLE `t_demandes` (
  `idDmnd` int(11) NOT NULL,
  `idEmploye` int(11) NOT NULL,
  `dateSoumission` date NOT NULL,
  `heureSoumission` time NOT NULL,
  `dbutCnge` date NOT NULL,
  `dureeConge` int(3) NOT NULL,
  `finConge` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `t_demandes`
--

INSERT INTO `t_demandes` (`idDmnd`, `idEmploye`, `dateSoumission`, `heureSoumission`, `dbutCnge`, `dureeConge`, `finConge`) VALUES
(457, 96, '2021-10-19', '12:26:48', '2021-01-01', 5, '2025-01-01');

-- --------------------------------------------------------

--
-- Structure de la table `t_directeur_rh`
--

CREATE TABLE `t_directeur_rh` (
  `id` int(11) NOT NULL,
  `nom` varchar(30) DEFAULT NULL,
  `prenom` varchar(20) DEFAULT NULL,
  `genre` varchar(15) DEFAULT NULL,
  `dateNaissance` date DEFAULT NULL,
  `profession` varchar(100) DEFAULT NULL,
  `matricule` varchar(15) DEFAULT NULL,
  `status` varchar(40) DEFAULT NULL,
  `login` varchar(20) DEFAULT NULL,
  `password` varchar(15) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `adresse` varchar(30) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `t_directeur_rh`
--

INSERT INTO `t_directeur_rh` (`id`, `nom`, `prenom`, `genre`, `dateNaissance`, `profession`, `matricule`, `status`, `login`, `password`, `email`, `adresse`, `telephone`) VALUES
(2, 'Bruno', 'Larvel', 'Homme', '1900-01-01', 'Directeur des Ressources Humaines', 'MKOO654', 'Directeur_Ressources_Humaines', 'DRH', 'DRH124', 'Bruno@gmail.com', 'Dakar', '39021145'),
(3, 'Jackie', 'Abraham', 'Femme', '1900-01-01', 'Chef de Projet', 'MKOO422', 'Directeur_Ressources_Humaines', 'Wazir', 'Pouvoir', 'Jackie@gmail.com', 'ACCRA', '82323116'),
(5, 'Moustapha', 'AbdelS', 'Homme', '1900-01-01', 'Architecte Logiciel', 'MKOO213', 'Directeur_Ressources_Humaines', 'crise', '8577748', 'Abdel@gmail.com', 'Rome', '332434534'),
(6, 'Christelle', 'merline', 'Homme', '1985-07-05', 'DRH', 'Drh121KJ', 'Directeur_Ressources_Humaines', 'Directeur', 'Directeur', 'merline@gmail.com', 'Port-gentil', '886765522');

-- --------------------------------------------------------

--
-- Structure de la table `t_employe`
--

CREATE TABLE `t_employe` (
  `id` int(11) NOT NULL,
  `nom` varchar(30) DEFAULT NULL,
  `prenom` varchar(20) DEFAULT NULL,
  `genre` varchar(15) DEFAULT NULL,
  `dateNaissance` date DEFAULT NULL,
  `matricule` varchar(20) DEFAULT NULL,
  `profession` varchar(100) DEFAULT NULL,
  `status` varchar(40) DEFAULT NULL,
  `login` varchar(20) DEFAULT NULL,
  `password` varchar(15) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `debutPeriode` date DEFAULT NULL,
  `soldeConge` int(3) DEFAULT NULL,
  `finPeriode` date DEFAULT NULL,
  `adresse` varchar(30) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `t_employe`
--

INSERT INTO `t_employe` (`id`, `nom`, `prenom`, `genre`, `dateNaissance`, `matricule`, `profession`, `status`, `login`, `password`, `email`, `debutPeriode`, `soldeConge`, `finPeriode`, `adresse`, `telephone`) VALUES
(47, 'Ange', 'Dombors', 'Femme', '1998-01-01', 'WBBVN', 'Codeuse', 'Employe', 'juste', 'pouvoir', 'ange@gmail.com', '2021-01-01', 68, '2026-01-01', 'N\'Djamena', '6659384833'),
(48, 'Jessica', 'bamba', 'Femme', '1992-01-01', 'QS998CV', 'Ingénieure Intelligence Artificielle', 'Employe', 'arbre', 'arbuste', 'jessi@gmail.com', '2021-01-01', 20, '2022-01-01', 'Yaoundé', '774442453'),
(50, 'Eric', 'Thiam', 'Homme', '1986-07-05', 'Empl744NJ', 'Testeur', 'Employe', 'employe_1', 'employe', 'Eric@gmail.com', '2021-10-10', 25, '2022-05-13', 'Dakar', '2218788983'),
(51, 'Romuald', 'Sidra', 'Homme', '1994-07-05', 'Emp93SD', 'architecte logiciel', 'Employe', 'employe_2', 'employe', 'Sidra@gmail.com', '2022-10-14', 25, '2023-04-04', 'Accra', '522949994'),
(52, 'Alfred', 'Carlos', 'Homme', '1996-07-05', 'Emp511H0', 'Ingenieur IA', 'Employe', 'employe_3', 'employe', 'Carlos@gmail.com', '2021-01-01', 25, '2024-04-04', 'Libreville', '898424152');

-- --------------------------------------------------------

--
-- Structure de la table `t_managers`
--

CREATE TABLE `t_managers` (
  `id` int(11) NOT NULL,
  `nom` varchar(30) DEFAULT NULL,
  `prenom` varchar(20) DEFAULT NULL,
  `genre` varchar(15) DEFAULT NULL,
  `dateNaissance` date DEFAULT NULL,
  `matricule` varchar(20) DEFAULT NULL,
  `profession` varchar(100) DEFAULT NULL,
  `status` varchar(40) DEFAULT NULL,
  `login` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `adresse` varchar(30) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `t_managers`
--

INSERT INTO `t_managers` (`id`, `nom`, `prenom`, `genre`, `dateNaissance`, `matricule`, `profession`, `status`, `login`, `password`, `email`, `adresse`, `telephone`) VALUES
(20, 'Alan', 'Turing', 'Homme', '2000-07-05', 'Mng89Q1', 'Programmeur', 'Manager', 'manager_1', 'manager', 'Alan@gmail.com', 'Stamford', '001434768776'),
(21, 'Jacqueline', 'Clams', 'Femme', '1978-07-05', 'Mng323X1', 'Spécialiste Python', 'Manager', 'manager_2', 'manager', 'Clams@gmail.com', 'Dakar', '2217788659');

-- --------------------------------------------------------

--
-- Structure de la table `t_modelcongesemploye`
--

CREATE TABLE `t_modelcongesemploye` (
  `id` int(11) NOT NULL,
  `idModelMng` int(11) NOT NULL,
  `matricule` varchar(20) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `prenom` varchar(20) NOT NULL,
  `genre` varchar(15) NOT NULL,
  `email` varchar(30) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `dateNaissance` date NOT NULL,
  `adresse` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `t_modelcongesemploye`
--

INSERT INTO `t_modelcongesemploye` (`id`, `idModelMng`, `matricule`, `nom`, `prenom`, `genre`, `email`, `telephone`, `dateNaissance`, `adresse`) VALUES
(96, 80, 'Empl744NJ', 'Eric', 'Thiam', 'Homme', 'Eric@gmail.com', '2218788983', '1986-07-05', 'Dakar'),
(97, 81, 'Emp93SD', 'Romuald', 'Sidra', 'Homme', 'Sidra@gmail.com', '522949994', '1994-07-05', 'Accra'),
(98, 80, 'Emp511H0', 'Alfred', 'Carlos', 'Homme', 'Carlos@gmail.com', '898424152', '1996-07-05', 'Libreville');

-- --------------------------------------------------------

--
-- Structure de la table `t_modelcongesmanager`
--

CREATE TABLE `t_modelcongesmanager` (
  `id` int(11) NOT NULL,
  `matricule` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `prenom` varchar(20) NOT NULL,
  `genre` varchar(15) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `adresse` varchar(30) NOT NULL,
  `dateNaissance` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `t_modelcongesmanager`
--

INSERT INTO `t_modelcongesmanager` (`id`, `matricule`, `email`, `nom`, `prenom`, `genre`, `telephone`, `adresse`, `dateNaissance`) VALUES
(80, 'Mng89Q1', 'Alan@gmail.com', 'Alan', 'Turing', 'Homme', '001434768776', 'Stamford', '2000-07-05'),
(81, 'Mng323X1', 'Clams@gmail.com', 'Jacqueline', 'Clams', 'Femme', '2217788659', 'Dakar', '1978-07-05');

-- --------------------------------------------------------

--
-- Structure de la table `t_professionnel`
--

CREATE TABLE `t_professionnel` (
  `id` int(11) NOT NULL,
  `nom` varchar(30) DEFAULT NULL,
  `prenom` varchar(20) DEFAULT NULL,
  `dateNaissance` date DEFAULT NULL,
  `genre` varchar(20) DEFAULT NULL,
  `profession` varchar(100) DEFAULT NULL,
  `matricule` varchar(20) DEFAULT NULL,
  `status` varchar(40) DEFAULT NULL,
  `login` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `adresse` varchar(30) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `t_professionnel`
--

INSERT INTO `t_professionnel` (`id`, `nom`, `prenom`, `dateNaissance`, `genre`, `profession`, `matricule`, `status`, `login`, `password`, `adresse`, `telephone`, `email`) VALUES
(97, 'Alan', 'Turing', '2000-07-05', 'Homme', 'Programmeur', 'Mng89Q1', 'Manager', 'manager_1', 'manager', 'Stamford', '001434768776', 'Alan@gmail.com'),
(98, 'Jacqueline', 'Clams', '1978-07-05', 'Femme', 'Spécialiste Python', 'Mng323X1', 'Manager', 'manager_2', 'manager', 'Dakar', '2217788659', 'Clams@gmail.com'),
(99, 'Eric', 'Thiam', '1986-07-05', 'Homme', 'Testeur', 'Empl744NJ', 'Employe', 'employe_1', 'employe', 'Dakar', '2218788983', 'Eric@gmail.com'),
(100, 'Romuald', 'Sidra', '1994-07-05', 'Homme', 'architecte logiciel', 'Emp93SD', 'Employe', 'employe_2', 'employe', 'Accra', '522949994', 'Sidra@gmail.com'),
(101, 'Alfred', 'Carlos', '1996-07-05', 'Homme', 'Ingenieur IA', 'Emp511H0', 'Employe', 'employe_3', 'employe', 'Libreville', '898424152', 'Carlos@gmail.com'),
(102, 'Christelle', 'merline', '1985-07-05', 'Homme', 'DRH', 'Drh121KJ', 'Directeur_Ressources_Humaines', 'Directeur', 'Directeur', 'Port-gentil', '886765522', 'merline@gmail.com'),
(103, 'David', 'James', '1969-01-01', 'Homme', 'Administrateur', '@dmi321S', 'Administrateur', 'admin', 'admin', 'Lomé', '2289446466', 'James@gmail.com');

-- --------------------------------------------------------

--
-- Structure de la table `t_validationcnges`
--

CREATE TABLE `t_validationcnges` (
  `id` int(11) NOT NULL,
  `idDemande` int(11) NOT NULL,
  `dateValidation` date NOT NULL,
  `heureValidation` time NOT NULL,
  `verdict` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `t_validationcnges`
--

INSERT INTO `t_validationcnges` (`id`, `idDemande`, `dateValidation`, `heureValidation`, `verdict`) VALUES
(115, 457, '2021-10-19', '12:30:04', 'Rejected');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `t_administrateur`
--
ALTER TABLE `t_administrateur`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `t_congesforemploye`
--
ALTER TABLE `t_congesforemploye`
  ADD PRIMARY KEY (`idCng`),
  ADD KEY `idModelEmp` (`idModelEmp`);

--
-- Index pour la table `t_demandes`
--
ALTER TABLE `t_demandes`
  ADD PRIMARY KEY (`idDmnd`),
  ADD KEY `t_demandes_ibfk_1` (`idEmploye`);

--
-- Index pour la table `t_directeur_rh`
--
ALTER TABLE `t_directeur_rh`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `t_employe`
--
ALTER TABLE `t_employe`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `t_managers`
--
ALTER TABLE `t_managers`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `t_modelcongesemploye`
--
ALTER TABLE `t_modelcongesemploye`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `idModelMng` (`idModelMng`);

--
-- Index pour la table `t_modelcongesmanager`
--
ALTER TABLE `t_modelcongesmanager`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `t_professionnel`
--
ALTER TABLE `t_professionnel`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `t_validationcnges`
--
ALTER TABLE `t_validationcnges`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `t_administrateur`
--
ALTER TABLE `t_administrateur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `t_congesforemploye`
--
ALTER TABLE `t_congesforemploye`
  MODIFY `idCng` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `t_demandes`
--
ALTER TABLE `t_demandes`
  MODIFY `idDmnd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=458;

--
-- AUTO_INCREMENT pour la table `t_directeur_rh`
--
ALTER TABLE `t_directeur_rh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `t_employe`
--
ALTER TABLE `t_employe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT pour la table `t_managers`
--
ALTER TABLE `t_managers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `t_modelcongesemploye`
--
ALTER TABLE `t_modelcongesemploye`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT pour la table `t_modelcongesmanager`
--
ALTER TABLE `t_modelcongesmanager`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT pour la table `t_professionnel`
--
ALTER TABLE `t_professionnel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT pour la table `t_validationcnges`
--
ALTER TABLE `t_validationcnges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `t_congesforemploye`
--
ALTER TABLE `t_congesforemploye`
  ADD CONSTRAINT `t_congesforemploye_ibfk_1` FOREIGN KEY (`idModelEmp`) REFERENCES `t_modelcongesemploye` (`id`);

--
-- Contraintes pour la table `t_demandes`
--
ALTER TABLE `t_demandes`
  ADD CONSTRAINT `t_demandes_ibfk_1` FOREIGN KEY (`idEmploye`) REFERENCES `t_modelcongesemploye` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `t_modelcongesemploye`
--
ALTER TABLE `t_modelcongesemploye`
  ADD CONSTRAINT `t_modelcongesemploye_ibfk_1` FOREIGN KEY (`idModelMng`) REFERENCES `t_modelcongesmanager` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
