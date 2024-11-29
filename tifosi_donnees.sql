-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 29 nov. 2024 à 13:14
-- Version du serveur : 9.1.0
-- Version de PHP : 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `tifosi`
--

USE `tifosi`;



INSERT INTO `clients` (`id_client`, `nom_client`, `age`, `cp_client`) VALUES
(1, 'Jean Dupont', 32, 75001),
(2, 'Marie Curie', 28, 69002),
(3, 'Paul Martin', 45, 13003);

INSERT INTO `focaccia` (`id_focaccia`, `nom_focaccia`, `prix`) VALUES
(1, 'Mozaccia', 9.80),
(2, 'Gorgonzollaccia', 10.80),
(3, 'Raclaccia', 8.90),
(4, 'Emmentalaccia', 9.80),
(5, 'Tradizione', 8.90),
(6, 'Hawaienne', 11.20),
(7, 'Américaine', 10.80),
(8, 'Paysanne', 12.80);

INSERT INTO `achete` (`id_client`, `id_focaccia`, `jour`) VALUES
(1, 1, '2024-11-25 00:00:00'),
(1, 1, '2024-11-29 14:00:05'),
(2, 1, '2024-11-25 00:00:00'),
(1, 2, '2024-11-26 00:00:00'),
(3, 2, '2024-11-26 00:00:00'),
(2, 3, '2024-11-27 00:00:00'),
(1, 5, '2024-11-29 13:57:58'),
(3, 6, '2024-11-27 00:00:00');


INSERT INTO `boisson` (`id_boisson`, `nom_boisson`) VALUES
(1, 'Coca-cola zéro'),
(2, 'Coca-cola original'),
(3, 'Fanta citron'),
(4, 'Fanta orange'),
(5, 'Capri-sun'),
(6, 'Pepsi'),
(7, 'Pepsi Max Zéro'),
(8, 'Lipton zéro citron'),
(9, 'Lipton Peach'),
(10, 'Monster energy ultra gold'),
(11, 'Monster energy ultra blue'),
(12, 'Eau de source');


INSERT INTO `ingredient` (`id_ingredient`, `nom_ingredient`) VALUES
(1, 'Ail'),
(2, 'Mozarella'),
(3, 'Artichaut'),
(4, 'Bacon'),
(5, 'Base Tomate'),
(6, 'Base crème'),
(7, 'Champignon'),
(8, 'Chevre'),
(9, 'Cresson'),
(10, 'Emmental'),
(11, 'Gorgonzola'),
(12, 'Jambon cuit'),
(13, 'Jambon fumé'),
(14, 'Oeuf'),
(15, 'Oignon'),
(16, 'Olive noire'),
(17, 'Olive verte'),
(18, 'Parmesan'),
(19, 'Piment'),
(20, 'Poivre'),
(21, 'Pomme de terre'),
(22, 'Raclette'),
(23, 'Salami'),
(24, 'Tomate cerise'),
(25, 'Ananas');

INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`) VALUES
(1, 1),
(2, 1),
(3, 1),
(8, 1),
(1, 2),
(5, 2),
(6, 2),
(7, 2),
(1, 3),
(8, 3),
(6, 4),
(7, 4),
(1, 5),
(2, 5),
(3, 5),
(5, 5),
(6, 5),
(7, 5),
(4, 6),
(8, 6),
(1, 7),
(2, 7),
(3, 7),
(4, 7),
(5, 7),
(8, 7),
(8, 8),
(1, 9),
(2, 9),
(3, 9),
(4, 9),
(5, 9),
(6, 9),
(7, 9),
(8, 9),
(4, 10),
(2, 11),
(5, 12),
(1, 13),
(8, 13),
(8, 14),
(4, 15),
(1, 16),
(2, 16),
(5, 16),
(6, 16),
(7, 16),
(8, 16),
(5, 17),
(1, 18),
(2, 18),
(3, 18),
(4, 18),
(5, 18),
(6, 18),
(7, 18),
(8, 18),
(6, 19),
(1, 20),
(2, 20),
(3, 20),
(4, 20),
(5, 20),
(6, 20),
(7, 20),
(8, 20),
(7, 21),
(8, 21),
(3, 22),
(6, 25);



INSERT INTO `menu` (`id_menu`, `nom_menu`, `prix_menu`) VALUES
(1, 'Classique', 15.30),
(2, 'Gourmet', 25.00),
(3, 'Enfant', 10.50),
(4, 'Végétarien', 18.00),
(5, 'Découverte', 22.80);



INSERT INTO `contient` (`id_menu`, `id_boisson`) VALUES
(1, 1),
(3, 1),
(1, 2),
(4, 2),
(2, 3),
(4, 3),
(2, 4),
(5, 4),
(2, 5),
(3, 6),
(5, 7);




INSERT INTO `marque` (`id_marque`, `nom_marque`) VALUES
(1, 'Coca-cola'),
(2, 'Cristalline'),
(3, 'Monster'),
(4, 'Pepsico');



INSERT INTO `paye` (`id_client`, `id_menu`, `jour`) VALUES
(1, 1, '2024-11-25 00:00:00'),
(3, 1, '2024-11-27 00:00:00'),
(2, 2, '2024-11-26 00:00:00'),
(1, 3, '2024-11-26 00:00:00'),
(3, 4, '2024-11-25 00:00:00'),
(2, 5, '2024-11-27 00:00:00');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
