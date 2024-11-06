-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Lis 06, 2024 at 11:35 AM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kino_gr1`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `Bilety`
--

CREATE TABLE `Bilety` (
  `ID` bigint(20) NOT NULL,
  `Seans_ID` bigint(20) NOT NULL,
  `Sprzedawca_ID` bigint(20) NOT NULL,
  `Klient_ID` bigint(20) NOT NULL,
  `Cena` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Bilety`
--

INSERT INTO `Bilety` (`ID`, `Seans_ID`, `Sprzedawca_ID`, `Klient_ID`, `Cena`) VALUES
(1, 1, 4, 2, 39),
(2, 4, 2, 4, 20),
(3, 2, 3, 3, 15),
(4, 3, 1, 5, 19),
(5, 5, 5, 1, 25);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `Filmy`
--

CREATE TABLE `Filmy` (
  `ID` bigint(20) NOT NULL,
  `Tytul` varchar(255) NOT NULL,
  `Rezyser` varchar(255) NOT NULL,
  `Czas_trwania_min` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Filmy`
--

INSERT INTO `Filmy` (`ID`, `Tytul`, `Rezyser`, `Czas_trwania_min`) VALUES
(1, 'Incepcja', 'Christopher Nolan', 148),
(2, 'Forrest Gump', 'Robert Zemeckis', 142),
(3, 'Skazani na Shawshank', 'Frank Darabont', 142),
(4, 'Gladiator', 'Ridley Scott', 155),
(5, 'Pulp Fiction', 'Quentin Tarantino', 154);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `Filmy_rodzaj`
--

CREATE TABLE `Filmy_rodzaj` (
  `ID` bigint(20) NOT NULL,
  `Filmy_ID` bigint(20) NOT NULL,
  `Rodzaj_ID` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Filmy_rodzaj`
--

INSERT INTO `Filmy_rodzaj` (`ID`, `Filmy_ID`, `Rodzaj_ID`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `Klienci`
--

CREATE TABLE `Klienci` (
  `ID` bigint(20) NOT NULL,
  `Imie` varchar(255) NOT NULL,
  `Nazwisko` varchar(255) NOT NULL,
  `Mail` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Klienci`
--

INSERT INTO `Klienci` (`ID`, `Imie`, `Nazwisko`, `Mail`) VALUES
(1, 'Tomasz', 'Lewandowski', 'tomaszlewandowski@gmail.com'),
(2, 'Monika', 'Kamińska', 'monikakaminska@wp.pl'),
(3, 'Paweł', 'Jankowski', 'paweljankowski@onet.pl'),
(4, 'Agnieszka', 'Dąbrowska', 'agnieszkadabrowska@wp.pl'),
(5, 'Marcin', 'Sikora', 'marcisikora@gmail.com'),
(6, 'Piotr', 'Nowak', 'piotrnowak@gmail.com');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `Rodzaj_filmu`
--

CREATE TABLE `Rodzaj_filmu` (
  `ID` bigint(20) NOT NULL,
  `Nazwa` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Rodzaj_filmu`
--

INSERT INTO `Rodzaj_filmu` (`ID`, `Nazwa`) VALUES
(1, 'Thriller'),
(2, 'Komedia'),
(3, 'Dramat'),
(4, 'Dramat historyczny'),
(5, 'Kryinał');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `SALE`
--

CREATE TABLE `SALE` (
  `ID` bigint(20) NOT NULL,
  `Ilosc_miejsc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `SALE`
--

INSERT INTO `SALE` (`ID`, `Ilosc_miejsc`) VALUES
(1, 300),
(2, 250),
(3, 150),
(4, 170),
(5, 200);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `Seanse`
--

CREATE TABLE `Seanse` (
  `ID` bigint(20) NOT NULL,
  `Termin` datetime NOT NULL,
  `Sala_ID` bigint(20) NOT NULL,
  `Film_ID` bigint(20) NOT NULL,
  `Liczba_wolnych_miejsc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Seanse`
--

INSERT INTO `Seanse` (`ID`, `Termin`, `Sala_ID`, `Film_ID`, `Liczba_wolnych_miejsc`) VALUES
(1, '2024-10-31 15:00:00', 2, 1, 200),
(2, '2024-10-31 22:00:00', 3, 2, 130),
(3, '2024-11-17 21:00:00', 1, 3, 280),
(4, '2024-11-21 13:00:00', 5, 4, 100),
(5, '2024-12-22 18:00:00', 4, 5, 168);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `Sprzedawcy`
--

CREATE TABLE `Sprzedawcy` (
  `ID` bigint(20) NOT NULL,
  `Imie` varchar(255) NOT NULL,
  `Nazwisko` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Sprzedawcy`
--

INSERT INTO `Sprzedawcy` (`ID`, `Imie`, `Nazwisko`) VALUES
(1, 'Jan', 'Kowlaski'),
(2, 'Anna', 'Nowak'),
(3, 'Marek', 'Zieliński'),
(4, 'Katarzyna', 'Wiśniewska'),
(5, 'Piotr', 'Wójcik');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `Bilety`
--
ALTER TABLE `Bilety`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `seans_fk` (`Seans_ID`),
  ADD KEY `sprzedawca_fk` (`Sprzedawca_ID`),
  ADD KEY `klient_fk` (`Klient_ID`);

--
-- Indeksy dla tabeli `Filmy`
--
ALTER TABLE `Filmy`
  ADD PRIMARY KEY (`ID`);

--
-- Indeksy dla tabeli `Filmy_rodzaj`
--
ALTER TABLE `Filmy_rodzaj`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `filmy_fk` (`Filmy_ID`),
  ADD KEY `rodzaj_fk` (`Rodzaj_ID`);

--
-- Indeksy dla tabeli `Klienci`
--
ALTER TABLE `Klienci`
  ADD PRIMARY KEY (`ID`);

--
-- Indeksy dla tabeli `Rodzaj_filmu`
--
ALTER TABLE `Rodzaj_filmu`
  ADD PRIMARY KEY (`ID`);

--
-- Indeksy dla tabeli `SALE`
--
ALTER TABLE `SALE`
  ADD PRIMARY KEY (`ID`);

--
-- Indeksy dla tabeli `Seanse`
--
ALTER TABLE `Seanse`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `sala_fk` (`Sala_ID`),
  ADD KEY `film_fk` (`Film_ID`);

--
-- Indeksy dla tabeli `Sprzedawcy`
--
ALTER TABLE `Sprzedawcy`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Bilety`
--
ALTER TABLE `Bilety`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `Filmy`
--
ALTER TABLE `Filmy`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `Filmy_rodzaj`
--
ALTER TABLE `Filmy_rodzaj`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `Klienci`
--
ALTER TABLE `Klienci`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `Rodzaj_filmu`
--
ALTER TABLE `Rodzaj_filmu`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `SALE`
--
ALTER TABLE `SALE`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `Seanse`
--
ALTER TABLE `Seanse`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `Sprzedawcy`
--
ALTER TABLE `Sprzedawcy`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Bilety`
--
ALTER TABLE `Bilety`
  ADD CONSTRAINT `klient_fk` FOREIGN KEY (`Klient_ID`) REFERENCES `Klienci` (`ID`),
  ADD CONSTRAINT `seans_fk` FOREIGN KEY (`Seans_ID`) REFERENCES `Seanse` (`ID`),
  ADD CONSTRAINT `sprzedawca_fk` FOREIGN KEY (`Sprzedawca_ID`) REFERENCES `Sprzedawcy` (`ID`);

--
-- Constraints for table `Filmy_rodzaj`
--
ALTER TABLE `Filmy_rodzaj`
  ADD CONSTRAINT `filmy_fk` FOREIGN KEY (`Filmy_ID`) REFERENCES `Filmy` (`ID`),
  ADD CONSTRAINT `rodzaj_fk` FOREIGN KEY (`Rodzaj_ID`) REFERENCES `Rodzaj_filmu` (`ID`);

--
-- Constraints for table `Seanse`
--
ALTER TABLE `Seanse`
  ADD CONSTRAINT `film_fk` FOREIGN KEY (`Film_ID`) REFERENCES `Filmy` (`ID`),
  ADD CONSTRAINT `sala_fk` FOREIGN KEY (`Sala_ID`) REFERENCES `SALE` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
