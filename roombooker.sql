-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2025. Máj 16. 11:22
-- Kiszolgáló verziója: 10.4.32-MariaDB
-- PHP verzió: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `roombooker`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `felhasznalok`
--

CREATE TABLE `felhasznalok` (
  `id` int(11) NOT NULL,
  `nev` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefon` varchar(20) DEFAULT NULL,
  `szuletesi_datum` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `felhasznalok`
--

INSERT INTO `felhasznalok` (`id`, `nev`, `email`, `telefon`, `szuletesi_datum`) VALUES
(1, 'Kiss Gábor', 'kiss.gabor@gmail.com', '06201234567', '1990-04-12'),
(2, 'Nagy Eszter', 'nagy.eszter@gmail.com', '06202345678', '1988-08-24'),
(3, 'Szabó László', 'szabo.laszlo@gmail.com', '06203456789', '1985-01-16'),
(4, 'Tóth Anna', 'toth.anna@gmail.com', '06204567890', '1992-11-03'),
(5, 'Varga Péter', 'varga.peter@gmail.com', '06205678901', '1995-07-30'),
(6, 'Kovács Réka', 'kovacs.reka@gmail.com', '06206789012', '1989-12-08'),
(7, 'Horváth András', 'horvath.andras@gmail.com', '06207890123', '1993-06-22'),
(8, 'Balogh Katalin', 'balogh.katalin@gmail.com', '06208901234', '2000-03-18'),
(9, 'Molnár Zoltán', 'molnar.zoltan@gmail.com', '06209012345', '1996-09-10'),
(10, 'Farkas Judit', 'farkas.judit@gmail.com', '06201122334', '1987-05-14'),
(11, 'Lukács Máté', 'lukacs.mate@gmail.com', '06202233445', '2001-01-25'),
(12, 'Pintér Noémi', 'pinter.noemi@gmail.com', '06203344556', '1986-10-19'),
(13, 'Takács Bence', 'takacs.bence@gmail.com', '06204455667', '1999-02-11'),
(14, 'Bíró Emese', 'biro.emese@gmail.com', '06205566778', '1994-07-07'),
(15, 'Simon Dávid', 'simon.david@gmail.com', '06206677889', '2003-08-29'),
(16, 'Juhász Nóra', 'juhasz.nora@gmail.com', '06207788990', '1991-03-04'),
(17, 'Oláh Ádám', 'olah.adam@gmail.com', '06208899001', '1984-06-16'),
(18, 'Mészáros Fanni', 'meszaros.fanni@gmail.com', '06209900112', '1997-12-21'),
(19, 'Fehér Levente', 'feher.levente@gmail.com', '06201011223', '1983-11-27'),
(20, 'Bognár Kinga', 'bognar.kinga@gmail.com', '06202122334', '1998-04-15'),
(21, 'Kelemen Dániel', 'kelemen.daniel@gmail.com', '06203233445', '2002-09-09'),
(22, 'Vörös Petra', 'voros.petra@gmail.com', '06204344556', '1982-01-02'),
(23, 'Németh Gergő', 'nemeth.gergo@gmail.com', '06205455667', '2004-05-23'),
(24, 'Pál Virág', 'pal.virag@gmail.com', '06206566778', '2005-10-12'),
(25, 'Békési Zsolt', 'bekesi.zsolt@gmail.com', '06207677889', '1990-08-06'),
(26, 'Gróf Dániel', 'danielgrof13@gmail.com', '06706720367', '2000-12-10');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `foglalasok`
--

CREATE TABLE `foglalasok` (
  `id` int(11) NOT NULL,
  `felhasznalo_id` int(11) NOT NULL,
  `terem_id` int(11) NOT NULL,
  `datum` date NOT NULL,
  `idopont_kezd` time NOT NULL,
  `idopont_veg` time NOT NULL,
  `cel` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `foglalasok`
--

INSERT INTO `foglalasok` (`id`, `felhasznalo_id`, `terem_id`, `datum`, `idopont_kezd`, `idopont_veg`, `cel`) VALUES
(2, 5, 4, '2025-05-20', '10:00:00', '11:30:00', 'Workshop'),
(3, 7, 2, '2025-05-21', '08:30:00', '10:00:00', 'Prezentáció'),
(4, 9, 5, '2025-05-21', '11:00:00', '12:30:00', 'Képzés'),
(5, 12, 3, '2025-05-22', '13:00:00', '14:30:00', 'Vizsga'),
(6, 14, 6, '2025-05-22', '14:00:00', '15:00:00', 'Műhelymunka'),
(7, 2, 7, '2025-05-23', '09:00:00', '10:00:00', 'Találkozó'),
(8, 17, 1, '2025-05-23', '10:30:00', '12:00:00', 'Projekt megbeszélés'),
(9, 18, 2, '2025-05-24', '11:00:00', '12:30:00', 'Csapatépítő'),
(11, 4, 4, '2025-05-25', '08:00:00', '09:30:00', 'Időpont foglalás'),
(12, 6, 5, '2025-05-25', '10:00:00', '11:30:00', 'Tréning'),
(13, 8, 6, '2025-05-25', '13:00:00', '14:30:00', 'Előadás'),
(14, 10, 7, '2025-05-26', '09:00:00', '10:30:00', 'Interjú'),
(15, 13, 1, '2025-05-26', '11:00:00', '12:00:00', 'Egyéni megbeszélés'),
(16, 15, 2, '2025-05-27', '14:00:00', '15:30:00', 'Esetmegbeszélés');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `termek`
--

CREATE TABLE `termek` (
  `id` int(11) NOT NULL,
  `nev` varchar(100) NOT NULL,
  `kapacitas` int(11) NOT NULL,
  `leiras` text DEFAULT NULL,
  `helyszin` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `termek`
--

INSERT INTO `termek` (`id`, `nev`, `kapacitas`, `leiras`, `helyszin`) VALUES
(1, 'Kék terem', 20, 'Modern tárgyalóterem prezentációkhoz', 'Budapest'),
(2, 'Zöld terem', 15, 'Képzési és workshop helyiség', 'Győr'),
(3, 'Piros terem', 30, 'Konferenciákra alkalmas terem', 'Debrecen'),
(4, 'Sárga terem', 10, 'Csendes tárgyalószoba', 'Pécs'),
(5, 'Fehér terem', 25, 'Műhelymunkára ideális hely', 'Szeged'),
(6, 'Barna terem', 18, 'Projektmegbeszélésre alkalmas', 'Miskolc'),
(7, 'Narancs terem', 22, 'Csapatépítő és tréning helyiség', 'Székesfehérvár');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `felhasznalok`
--
ALTER TABLE `felhasznalok`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- A tábla indexei `foglalasok`
--
ALTER TABLE `foglalasok`
  ADD PRIMARY KEY (`id`),
  ADD KEY `felhasznalo_id` (`felhasznalo_id`),
  ADD KEY `terem_id` (`terem_id`);

--
-- A tábla indexei `termek`
--
ALTER TABLE `termek`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `felhasznalok`
--
ALTER TABLE `felhasznalok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT a táblához `foglalasok`
--
ALTER TABLE `foglalasok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT a táblához `termek`
--
ALTER TABLE `termek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `foglalasok`
--
ALTER TABLE `foglalasok`
  ADD CONSTRAINT `foglalasok_ibfk_1` FOREIGN KEY (`felhasznalo_id`) REFERENCES `felhasznalok` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `foglalasok_ibfk_2` FOREIGN KEY (`terem_id`) REFERENCES `termek` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
