-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 10 Mar 2023, 16:23
-- Wersja serwera: 10.4.14-MariaDB
-- Wersja PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `glosowanie`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kandydaci`
--

CREATE TABLE `kandydaci` (
  `ID` int(11) NOT NULL,
  `Kandydaci` text COLLATE utf8mb4_polish_ci NOT NULL,
  `Głosy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `kandydaci`
--

INSERT INTO `kandydaci` (`ID`, `Kandydaci`, `Głosy`) VALUES
(1, 'Kandydat1', 2),
(2, 'Kandydat2', 1),
(3, 'Kandydat3', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `klienci`
--

CREATE TABLE `klienci` (
  `ID` int(11) NOT NULL,
  `PESEL` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `klienci`
--

INSERT INTO `klienci` (`ID`, `PESEL`) VALUES
(1, 22222222),
(2, 2147483647),
(3, 33333333),
(4, 222222222);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `kandydaci`
--
ALTER TABLE `kandydaci`
  ADD PRIMARY KEY (`ID`);

--
-- Indeksy dla tabeli `klienci`
--
ALTER TABLE `klienci`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `kandydaci`
--
ALTER TABLE `kandydaci`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `klienci`
--
ALTER TABLE `klienci`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
