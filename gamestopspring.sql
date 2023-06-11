-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 11, 2023 at 10:55 PM
-- Server version: 5.7.24
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gamestopspring`
--

-- --------------------------------------------------------

--
-- Table structure for table `accessorio`
--

CREATE TABLE `accessorio` (
  `id` int(11) NOT NULL,
  `tipologia` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `accessorio`
--

INSERT INTO `accessorio` (`id`, `tipologia`) VALUES
(1, 'Cuffie'),
(2, 'Controller'),
(3, 'Tastiera'),
(4, 'Joystick'),
(5, 'Mouse'),
(6, 'Microfono');

-- --------------------------------------------------------

--
-- Table structure for table `casaproduttrice`
--

CREATE TABLE `casaproduttrice` (
  `id` int(11) NOT NULL,
  `anno_fondazione` date DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `casaproduttrice`
--

INSERT INTO `casaproduttrice` (`id`, `anno_fondazione`, `nome`) VALUES
(1, '1982-05-01', 'Valve Corporation'),
(2, '1991-03-08', 'Techland'),
(3, '1998-12-01', 'Rockstar Games'),
(4, '1979-10-01', 'Activision'),
(5, '1982-05-28', 'Electronic Arts'),
(6, '1889-09-23', 'Nintendo'),
(7, '2010-03-23', 'Bluehole'),
(8, '1991-02-08', 'Blizzard Entertainment'),
(9, '1986-03-28', 'Ubisoft'),
(10, '2015-06-23', 'InnerSloth'),
(11, '1994-05-17', 'CD Projekt Red'),
(12, '1979-05-30', 'Capcom'),
(13, '1985-06-28', 'Bethesda Softworks'),
(14, '1975-09-22', 'Square Enix'),
(15, '2005-04-01', 'Kojima Productions'),
(16, '1955-06-01', 'Bandai Namco Entertainment'),
(17, '1984-09-01', 'Naughty Dog'),
(18, '1999-02-01', 'Santa Monica Studio'),
(19, '1992-03-01', 'EA DICE'),
(20, '1998-11-11', 'Tencent Games');

-- --------------------------------------------------------

--
-- Table structure for table `cliente`
--

CREATE TABLE `cliente` (
  `id` int(11) NOT NULL,
  `cf` varchar(16) DEFAULT NULL,
  `cognome` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `id_tessera` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cliente`
--

INSERT INTO `cliente` (`id`, `cf`, `cognome`, `nome`, `id_tessera`) VALUES
(1, 'RSSMRA85A01H501F', 'Rossi', 'Mario', 1),
(2, 'VRDGPP82B12L219T', 'Verdi', 'Giuseppe', 2),
(3, 'BNCLCA80C54D612A', 'Bianchi', 'Carla', 3),
(4, 'GNCDMN90D03F906L', 'Gialli', 'Domenico', 4),
(5, 'FRRDST70E44G101N', 'Ferrari', 'Stefania', 5),
(6, 'MRRDNL71F01H501O', 'Marini', 'Raffaella', 6),
(7, 'GRSPST82G28I156L', 'Giuseppe', 'Rosa', 7),
(8, 'VLTGPP78H12L219P', 'Verdi', 'Giuseppe', 8),
(9, 'BBNMTA88I54D612T', 'Bianchi', 'Alberto', 9),
(10, 'GNCDMN90K03F906G', 'Gialli', 'Domenica', 10);

-- --------------------------------------------------------

--
-- Table structure for table `fornitore`
--

CREATE TABLE `fornitore` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fornitore`
--

INSERT INTO `fornitore` (`id`, `nome`) VALUES
(1, 'Steam'),
(2, 'GOG'),
(3, 'Epic Games Store'),
(4, 'PlayStation Store'),
(5, 'Xbox Store'),
(6, 'Nintendo eShop'),
(7, 'Amazon'),
(8, 'GameStop'),
(9, 'Best Buy'),
(10, 'Walmart'),
(11, 'Target'),
(12, 'Ubisoft Store'),
(13, 'Origin'),
(14, 'Battle.net'),
(15, 'Microsoft Store'),
(16, 'PlayStation Store'),
(17, 'Xbox Store'),
(18, 'GameFly'),
(19, 'Green Man Gaming'),
(20, 'Humble Bundle');

-- --------------------------------------------------------

--
-- Table structure for table `genere`
--

CREATE TABLE `genere` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `genere`
--

INSERT INTO `genere` (`id`, `nome`) VALUES
(1, 'Action'),
(2, 'Adventure'),
(3, 'Role-playing'),
(4, 'Shooter'),
(5, 'Strategy'),
(6, 'Simulation'),
(7, 'Sports'),
(8, 'Racing'),
(9, 'Fighting'),
(10, 'Survival'),
(11, 'Open World'),
(12, 'Horror'),
(13, 'MMORPG'),
(14, 'Battle Royale');

-- --------------------------------------------------------

--
-- Table structure for table `gioco`
--

CREATE TABLE `gioco` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `n_giocatori` int(11) DEFAULT NULL,
  `anno_rilascio` varchar(255) DEFAULT NULL,
  `descrizione` text,
  `img` varchar(255) DEFAULT NULL,
  `prezzo` int(11) DEFAULT NULL,
  `rating` decimal(19,2) DEFAULT NULL,
  `id_casaproduttrice` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gioco`
--

INSERT INTO `gioco` (`id`, `nome`, `n_giocatori`, `anno_rilascio`, `descrizione`, `img`, `prezzo`, `rating`, `id_casaproduttrice`) VALUES
(1, 'CSGO', 5, '2012', 'Counter-Strike: Global Offensive è un famoso sparatutto tattico multiplayer online.', '/assets/images/csgo.jpg', 20, '8.50', 1),
(2, 'Dying Light', 1, '2015', 'Dying Light è un gioco di sopravvivenza in un mondo aperto infestato da zombie.', '/assets/images/Dying-Light-Cover.jpg', 40, '9.50', 2),
(3, 'Grand Theft Auto V', 1, '2013', 'Grand Theft Auto V è un videogioco di azione avventura ambientato in una vasta mappa aperta.', '/assets/images/Grand-Theft-Auto-V.jpg', 60, '9.20', 3),
(4, 'Call of Duty: Warzone', 4, '2020', 'Call of Duty: Warzone è un popolare gioco di battaglia reale ambientato nell universo di Call of Duty.', '/assets/images/Call-of-Duty-Warzone.jpg', 0, '9.00', 4),
(5, 'Apex Legends', 3, '2019', 'Apex Legends è un gioco di battaglia reale con un ampia selezione di personaggi unici.', '/assets/images/Apex-Legends.jpg', 0, '8.30', 5),
(6, 'The Legend of Zelda: Breath of the Wild', 1, '2017', 'The Legend of Zelda: Breath of the Wild è un avvincente gioco di avventura ambientato in un vasto mondo aperto.', '/assets/images/The-Legend-of-Zelda-Breath-of-the-Wild.jpg', 60, '9.50', 6),
(7, 'PUBG', 4, '2017', 'PlayerUnknown Battlegrounds è un famoso gioco di battaglia reale in cui i giocatori lottano per sopravvivere fino alla fine.', '/assets/images/PUBG.jpg', 30, '8.00', 7),
(8, 'Overwatch', 6, '2016', 'Overwatch è un gioco di tiro a squadre in prima persona con una vasta gamma di personaggi giocanti.', '/assets/images/Overwatch.jpg', 40, '8.70', 8),
(9, 'Assassin Creed Valhalla', 1, '2020', 'Assassins Creed Valhalla è un gioco di azione e avventura ambientato nell era dei vichinghi.', '/assets/images/Assassin-Creed-Valhalla.jpg', 60, '8.10', 9),
(10, 'Among Us', 10, '2018', 'Among Us è un gioco di deduzione sociale in cui i giocatori devono scoprire impostore all interno dell equipaggio.', '/assets/images/Among-Us.jpg', 5, '7.50', 10),
(11, 'Rocket League', 4, '2015', 'Rocket League è un gioco di calcio motorizzato in cui i giocatori guidano veicoli per segnare gol.', '/assets/images/Rocket-League.jpg', 20, '9.30', 11),
(12, 'The Witcher 3: Wild Hunt', 1, '2015', 'The Witcher 3: Wild Hunt è un epico gioco di ruolo ambientato in un mondo fantasy ricco di avventure.', '/assets/images/The-Witche-3.jpg', 50, '9.70', 11),
(13, 'Red Dead Redemption 2', 1, '2018', 'Red Dead Redemption 2 è un gioco di azione e avventura ambientato nel selvaggio West americano.', '/assets/images/Re-Dead-Redemption-2.jpg', 60, '8.80', 3),
(14, 'Valorant', 5, '2020', 'Valorant è un gioco sparatutto tattico online con personaggi unici e abilità speciali.', '/assets/images/Valorant.jpg', 0, '9.40', 1),
(15, 'League of Legends', 5, '2009', 'League of Legends è un popolare gioco di strategia in cui le squadre si sfidano in un arena di battaglia.', '/assets/images/League-of-Legends.jpg', 0, '8.60', 1),
(16, 'Cyberpunk 2077', 1, '2020', 'Cyberpunk 2077 è un gioco di ruolo ambientato in un futuro distopico con una trama ricca e una vasta mappa di gioco.', '/assets/images/Cyberpunk-2077.jpg', 60, '9.80', 11),
(17, 'The Last of Us', 1, '2013', 'The Last of Us è un emozionante gioco di azione e sopravvivenza in un mondo post-apocalittico.', '/assets/images/The-Last-of-Us.jpg', 40, '9.90', 17),
(18, 'God of War', 1, '2018', 'God of War è un gioco di azione avventura in cui i giocatori assumono il ruolo del dio greco Kratos.', '/assets/images/God-of-War.jpg', 50, '8.20', 18),
(19, 'Battlefield 2042', 4, '2021', 'Battlefield 2042 è un gioco di sparatutto in prima persona ambientato in un futuro conflitto militare globale.', '/assets/images/Battlefield-2042.jpg', 60, '8.40', 4),
(20, 'Call of Duty: Black Ops', 4, '2020', 'Call of Duty: Black Ops Cold War è un gioco di sparatutto ambientato durante la Guerra Fredda.', '/assets/images/Call-of-Duty-BlackOps.jpg', 60, '9.10', 4),
(21, 'The Elder Scrolls V: Skyrim', 1, '2011', 'The Elder Scrolls V: Skyrim è un vasto gioco di ruolo ambientato in un mondo fantastico con un ampia libertà di esplorazione.', '/assets/images/The-Elder-Scrolls-V-Skyrim.jpg', 40, '8.90', 13),
(22, 'Genshin Impact', 4, '2020', 'Genshin Impact è un gioco di azione e avventura con un vasto mondo aperto da esplorare.', '/assets/images/Genshin-Impact.jpg', 0, '7.60', 13),
(23, 'Doom Eternal', 1, '2020', 'Doom Eternal è un intenso sparatutto in prima persona in cui i giocatori affrontano orde di demoni.', '/assets/images/Doom-Eternal.jpg', 50, '8.70', 13),
(24, 'Resident Evil Village', 1, '2021', 'Resident Evil Village è un gioco di survival horror che prosegue la storia di Resident Evil 7.', '/assets/images/Resident-Evil-Village.jpg', 60, '9.60', 12),
(25, 'Sekiro: Shadows Die Twice', 1, '2019', 'Sekiro: Shadows Die Twice è un difficile gioco di azione e avventura ambientato nel Giappone feudale.', '/assets/images/Sekiro-Shadows-Die-Twice.jpg', 50, '9.30', 12),
(26, 'Ghost of Tsushima', 1, '2020', 'Ghost of Tsushima è un gioco di azione e avventura ambientato nell antico Giappone feudale.', '/assets/images/Ghost-of-Tsushima.jpg', 60, '7.40', 17),
(27, 'Destiny 2', 3, '2017', 'Destiny 2 è un gioco di sparatutto online con elementi di gioco di ruolo in un vasto universo sci-fi.', '/assets/images/Destiny-2.jpg', 0, '8.70', 9),
(28, 'Dead by Daylight', 5, '2016', 'Dead by Daylight è un gioco di sopravvivenza multiplayer in cui un giocatore assume il ruolo del killer mentre gli altri tentano di sopravvivere.', '/assets/images/Dead-by-Daylight.jpg', 30, '8.50', 9),
(29, 'Control', 1, '2019', 'Control è un gioco di azione e avventura sovrannaturale ambientato in una agenzia governativa segreta.', '/assets/images/Control.jpg', 50, '7.20', 13),
(30, 'Cuphead', 2, '2017', 'Cuphead è un gioco di piattaforme e sparatutto ispirato agli stili di animazione degli anni 30.', '/assets/images/Cuphead.jpg', 20, '8.80', 14),
(31, 'Dota 2', 5, '2013', 'Dota 2 è un popolare gioco di strategia multiplayer online con una vasta selezione di eroi.', '/assets/images/Dota-2.jpg', 0, '9.00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `gioco_fornitore`
--

CREATE TABLE `gioco_fornitore` (
  `id_gioco` int(11) NOT NULL,
  `id_fornitore` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gioco_fornitore`
--

INSERT INTO `gioco_fornitore` (`id_gioco`, `id_fornitore`) VALUES
(1, 1),
(3, 1),
(5, 1),
(7, 1),
(8, 1),
(10, 1),
(11, 1),
(14, 1),
(15, 1),
(16, 1),
(31, 1),
(1, 2),
(2, 2),
(3, 3),
(13, 3),
(4, 4),
(5, 4),
(8, 4),
(19, 4),
(20, 4),
(4, 5),
(5, 5),
(8, 5),
(31, 5),
(6, 6),
(30, 8),
(27, 9),
(28, 9),
(12, 11),
(16, 11),
(9, 12),
(13, 12),
(24, 12),
(25, 12),
(12, 13),
(21, 13),
(22, 13),
(23, 13),
(29, 13),
(17, 16),
(18, 16),
(26, 16);

-- --------------------------------------------------------

--
-- Table structure for table `gioco_genere`
--

CREATE TABLE `gioco_genere` (
  `id_gioco` int(11) NOT NULL,
  `id_genere` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gioco_genere`
--

INSERT INTO `gioco_genere` (`id_gioco`, `id_genere`) VALUES
(2, 1),
(3, 1),
(8, 1),
(9, 1),
(12, 1),
(13, 1),
(14, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(6, 2),
(18, 2),
(22, 2),
(26, 2),
(29, 2),
(30, 2),
(12, 3),
(16, 3),
(21, 3),
(25, 3),
(26, 3),
(1, 4),
(4, 4),
(5, 4),
(7, 4),
(8, 4),
(14, 4),
(19, 4),
(20, 4),
(23, 4),
(27, 4),
(10, 5),
(15, 5),
(31, 5),
(29, 6),
(1, 7),
(11, 7),
(3, 8),
(11, 8),
(25, 9),
(2, 10),
(17, 10),
(24, 10),
(28, 10),
(3, 11),
(6, 11),
(9, 11),
(12, 11),
(13, 11),
(16, 11),
(21, 11),
(22, 11),
(13, 12),
(24, 12),
(27, 13),
(31, 13),
(4, 14),
(5, 14),
(7, 14),
(10, 14),
(28, 14),
(31, 14);

-- --------------------------------------------------------

--
-- Table structure for table `gioco_piattaforma`
--

CREATE TABLE `gioco_piattaforma` (
  `id_gioco` int(11) NOT NULL,
  `id_piattaforma` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gioco_piattaforma`
--

INSERT INTO `gioco_piattaforma` (`id_gioco`, `id_piattaforma`) VALUES
(1, 1),
(2, 1),
(4, 1),
(6, 1),
(8, 1),
(9, 1),
(11, 1),
(13, 1),
(15, 1),
(17, 1),
(19, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(29, 1),
(30, 1),
(31, 1),
(1, 2),
(3, 2),
(4, 2),
(7, 2),
(10, 2),
(12, 2),
(14, 2),
(16, 2),
(18, 2),
(20, 2),
(24, 2),
(28, 2),
(30, 2),
(1, 3),
(3, 3),
(4, 3),
(5, 3),
(8, 3),
(11, 3),
(13, 3),
(15, 3),
(20, 3),
(22, 3),
(28, 3),
(31, 3),
(2, 4),
(4, 4),
(5, 4),
(7, 4),
(9, 4),
(12, 4),
(16, 4),
(17, 4),
(19, 4),
(23, 4),
(27, 4),
(29, 4),
(2, 5),
(5, 5),
(8, 5),
(10, 5),
(13, 5),
(14, 5),
(17, 5),
(18, 5),
(23, 5),
(28, 5),
(3, 6),
(6, 6),
(7, 6),
(11, 6),
(16, 6),
(19, 6),
(21, 6),
(25, 6),
(31, 6),
(6, 7),
(9, 7),
(12, 7),
(15, 7),
(18, 7),
(20, 7),
(24, 7),
(26, 7),
(29, 7),
(8, 8),
(10, 8),
(14, 8),
(19, 8),
(25, 8),
(27, 8);

-- --------------------------------------------------------

--
-- Table structure for table `piattaforma`
--

CREATE TABLE `piattaforma` (
  `id` int(11) NOT NULL,
  `n_giocatori` int(11) DEFAULT NULL,
  `tipo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `piattaforma`
--

INSERT INTO `piattaforma` (`id`, `n_giocatori`, `tipo`) VALUES
(1, 4, 'PC'),
(2, 8, 'Xbox One'),
(3, 8, 'Xbox 360'),
(4, 8, 'Xbox Series '),
(5, 4, 'PS3'),
(6, 4, 'PS4'),
(7, 4, 'PS5'),
(8, 1, 'Nintendo Switch'),
(9, 1, 'IOS'),
(10, 1, 'Android'),
(11, 1, 'PSP');

-- --------------------------------------------------------

--
-- Table structure for table `piattaforma_accessorio`
--

CREATE TABLE `piattaforma_accessorio` (
  `piattaforma_entity_id` int(11) NOT NULL,
  `id_accessorio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`) VALUES
(1, 'ROLE_USER'),
(2, 'ROLE_ADMIN');

-- --------------------------------------------------------

--
-- Table structure for table `sede`
--

CREATE TABLE `sede` (
  `id` int(11) NOT NULL,
  `citta` varchar(255) DEFAULT NULL,
  `indirizzo` varchar(255) DEFAULT NULL,
  `id_casaproduttrice` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sede`
--

INSERT INTO `sede` (`id`, `citta`, `indirizzo`, `id_casaproduttrice`) VALUES
(1, 'Bellevue', '1200 12th Ave NE, Bellevue, WA 98004, Stati Uniti', 1),
(2, 'Ostrów Wielkopolski', 'ul. Dąbrowskiego 77, 63-400 Ostrów Wielkopolski, Polonia', 2),
(3, 'New York', '622 Broadway, New York, NY 10012, Stati Uniti', 3),
(4, 'Santa Monica', '3100 Ocean Park Blvd, Santa Monica, CA 90405, Stati Uniti', 4),
(5, 'Redwood City', '209 Redwood Shores Pkwy, Redwood City, CA 94065, Stati Uniti', 5),
(6, 'Kyoto', '11-1 Kamitoba Hokotatecho, Minami Ward, Kyoto, 601-8501, Giappone', 6),
(7, 'Seul', '서울특별시 강남구 학동로 425 청담동 78-2 아지트빌딩 3층, Corea del Sud', 7),
(8, 'Irvine', '1 Blizzard Way, Irvine, CA 92618, Stati Uniti', 8),
(9, 'Montreuil', '39-43 Quai du Président Roosevelt, 93100 Montreuil, Francia', 9),
(10, 'Bellevue', '1200 12th Ave NE, Bellevue, WA 98004, Stati Uniti', 10),
(11, 'Varsavia', 'Jagiellońska 74, 03-301 Warszawa, Polonia', 11),
(12, 'Osaka', '3 Chome-1-3 Umeda, Kita Ward, Osaka, 530-0001, Giappone', 12),
(13, 'Rockville', '1370 Piccard Dr, Rockville, MD 20850, Stati Uniti', 13),
(14, 'Shinjuku', '1 Chome-29-1 Kabukicho, Shinjuku City, Tokyo 160-0021, Giappone', 14),
(15, 'Tokyo', '4-2-24 Shimbashi, Minato City, Tokyo 105-0021, Giappone', 15),
(16, 'Tokyo', '2 Chome-35-1 Kitashinagawa, Shinagawa City, Tokyo 140-0001, Giappone', 16),
(17, 'Santa Monica', '2425 Olympic Blvd, Santa Monica, CA 90404, Stati Uniti', 17),
(18, 'Santa Monica', '2201 Colorado Ave, Santa Monica, CA 90404, Stati Uniti', 18),
(19, 'Stoccolma', 'Stureplan 2, 114 35 Stockholm, Svezia', 19),
(20, 'Shenzhen', 'Hi-tech Industrial Park, Nanshan District, Shenzhen, Guangdong, Cina', 20);

-- --------------------------------------------------------

--
-- Table structure for table `tessera`
--

CREATE TABLE `tessera` (
  `id` int(11) NOT NULL,
  `data_emissione` date DEFAULT NULL,
  `data_scadenza` date DEFAULT NULL,
  `tipologia` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tessera`
--

INSERT INTO `tessera` (`id`, `data_emissione`, `data_scadenza`, `tipologia`) VALUES
(1, '2023-06-01', '2024-06-01', 'Standard'),
(2, '2023-05-15', '2024-05-15', 'Premium'),
(3, '2023-06-08', '2024-06-08', 'Gold'),
(4, '2023-07-10', '2024-07-10', 'Standard'),
(5, '2023-08-22', '2024-08-22', 'Premium'),
(6, '2023-09-05', '2024-09-05', 'Gold'),
(7, '2023-10-18', '2024-10-18', 'Standard'),
(8, '2023-11-30', '2024-11-30', 'Premium'),
(9, '2023-12-25', '2024-12-25', 'Gold'),
(10, '2024-01-15', '2025-01-15', 'Standard');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(120) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `username`) VALUES
(1, 'harmfulcati@gmail.com', '$2a$10$uITmUN8Qw1WE4PGQXo30POdLJv11X9bhtDuJmQCiMEuTvfoVwqghi', 'vlad');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES
(1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accessorio`
--
ALTER TABLE `accessorio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `casaproduttrice`
--
ALTER TABLE `casaproduttrice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKdfn9iwo9lxd4kr5xn5d3fv7yn` (`id_tessera`);

--
-- Indexes for table `fornitore`
--
ALTER TABLE `fornitore`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genere`
--
ALTER TABLE `genere`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gioco`
--
ALTER TABLE `gioco`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKrmsd5fbwjkxw3k6eu1x4qqd42` (`id_casaproduttrice`);

--
-- Indexes for table `gioco_fornitore`
--
ALTER TABLE `gioco_fornitore`
  ADD PRIMARY KEY (`id_gioco`,`id_fornitore`),
  ADD KEY `FKi87wn96296degh0nsvvmqg97p` (`id_fornitore`);

--
-- Indexes for table `gioco_genere`
--
ALTER TABLE `gioco_genere`
  ADD PRIMARY KEY (`id_gioco`,`id_genere`),
  ADD KEY `FKc9a1ynhfrmau8ac1j0wqsmoq0` (`id_genere`);

--
-- Indexes for table `gioco_piattaforma`
--
ALTER TABLE `gioco_piattaforma`
  ADD PRIMARY KEY (`id_gioco`,`id_piattaforma`),
  ADD KEY `FKkhp1ak9apa6fvx2yxriiyc7aw` (`id_piattaforma`);

--
-- Indexes for table `piattaforma`
--
ALTER TABLE `piattaforma`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `piattaforma_accessorio`
--
ALTER TABLE `piattaforma_accessorio`
  ADD PRIMARY KEY (`piattaforma_entity_id`,`id_accessorio`),
  ADD KEY `FKs9x7d0ag3tdshvle2tpeola4g` (`id_accessorio`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sede`
--
ALTER TABLE `sede`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKjsw6obkbfaephb08g28yukj1d` (`id_casaproduttrice`);

--
-- Indexes for table `tessera`
--
ALTER TABLE `tessera`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UKr43af9ap4edm43mmtq01oddj6` (`username`),
  ADD UNIQUE KEY `UK6dotkott2kjsp8vw4d0m25fb7` (`email`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `FKh8ciramu9cc9q3qcqiv4ue8a6` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accessorio`
--
ALTER TABLE `accessorio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `casaproduttrice`
--
ALTER TABLE `casaproduttrice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `fornitore`
--
ALTER TABLE `fornitore`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `genere`
--
ALTER TABLE `genere`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `gioco`
--
ALTER TABLE `gioco`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `piattaforma`
--
ALTER TABLE `piattaforma`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sede`
--
ALTER TABLE `sede`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tessera`
--
ALTER TABLE `tessera`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `FKdfn9iwo9lxd4kr5xn5d3fv7yn` FOREIGN KEY (`id_tessera`) REFERENCES `tessera` (`id`);

--
-- Constraints for table `gioco`
--
ALTER TABLE `gioco`
  ADD CONSTRAINT `FKrmsd5fbwjkxw3k6eu1x4qqd42` FOREIGN KEY (`id_casaproduttrice`) REFERENCES `casaproduttrice` (`id`);

--
-- Constraints for table `gioco_fornitore`
--
ALTER TABLE `gioco_fornitore`
  ADD CONSTRAINT `FKbrsthsjly8u4ebh9ye04fmn0b` FOREIGN KEY (`id_gioco`) REFERENCES `gioco` (`id`),
  ADD CONSTRAINT `FKi87wn96296degh0nsvvmqg97p` FOREIGN KEY (`id_fornitore`) REFERENCES `fornitore` (`id`);

--
-- Constraints for table `gioco_genere`
--
ALTER TABLE `gioco_genere`
  ADD CONSTRAINT `FKc9a1ynhfrmau8ac1j0wqsmoq0` FOREIGN KEY (`id_genere`) REFERENCES `genere` (`id`),
  ADD CONSTRAINT `FKd1ibcfubl8l9olgrm3w7bnsqm` FOREIGN KEY (`id_gioco`) REFERENCES `gioco` (`id`);

--
-- Constraints for table `gioco_piattaforma`
--
ALTER TABLE `gioco_piattaforma`
  ADD CONSTRAINT `FKeu0eu3c5jg50hlri831dm9tia` FOREIGN KEY (`id_gioco`) REFERENCES `gioco` (`id`),
  ADD CONSTRAINT `FKkhp1ak9apa6fvx2yxriiyc7aw` FOREIGN KEY (`id_piattaforma`) REFERENCES `piattaforma` (`id`);

--
-- Constraints for table `piattaforma_accessorio`
--
ALTER TABLE `piattaforma_accessorio`
  ADD CONSTRAINT `FKnecltacaqr03gcqbvoqf9m9qs` FOREIGN KEY (`piattaforma_entity_id`) REFERENCES `piattaforma` (`id`),
  ADD CONSTRAINT `FKs9x7d0ag3tdshvle2tpeola4g` FOREIGN KEY (`id_accessorio`) REFERENCES `accessorio` (`id`);

--
-- Constraints for table `sede`
--
ALTER TABLE `sede`
  ADD CONSTRAINT `FKjsw6obkbfaephb08g28yukj1d` FOREIGN KEY (`id_casaproduttrice`) REFERENCES `casaproduttrice` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `FKh8ciramu9cc9q3qcqiv4ue8a6` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `FKhfh9dx7w3ubf1co1vdev94g3f` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
