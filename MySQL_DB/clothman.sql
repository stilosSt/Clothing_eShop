-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Φιλοξενητής: 127.0.0.1
-- Χρόνος δημιουργίας: 15 Μάη 2018 στις 20:19:09
-- Έκδοση διακομιστή: 10.1.28-MariaDB
-- Έκδοση PHP: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Βάση δεδομένων: `clothman`
--

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `basket`
--

CREATE TABLE `basket` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `size` varchar(25) NOT NULL,
  `price` double NOT NULL,
  `weight` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Άδειασμα δεδομένων του πίνακα `basket`
--

INSERT INTO `basket` (`id`, `user_id`, `item_id`, `quantity`, `size`, `price`, `weight`) VALUES
(32, 1, 1, 1, '42', 25, 0.7),
(33, 1, 7, 1, 'M', 22, 0.2),
(34, 1, 8, 3, 'M', 126, 0.6000000000000001),
(37, 4, 5, 1, '44', 42, 0.4);

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `type` varchar(25) NOT NULL,
  `title` varchar(40) NOT NULL,
  `img` varchar(45) NOT NULL,
  `price` double NOT NULL,
  `weight` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Άδειασμα δεδομένων του πίνακα `items`
--

INSERT INTO `items` (`id`, `type`, `title`, `img`, `price`, `weight`) VALUES
(1, 'Shoes', 'firstPair', 'img/shoes/ftw1.png', 25, 0.7),
(2, 'Shoes', 'secPair', 'img/shoes/ftw2.png', 35, 0.9),
(3, 'Shoes', 'thirdPair', 'img/shoes/ftw3.png', 20, 0.4),
(4, 'Shoes', 'fourthPair', 'img/shoes/ftw4.png', 45, 0.3),
(5, 'Shoes', 'fifthPair', 'img/shoes/ftw5.png', 42, 0.4),
(6, 'Shoes', 'sixthPair', 'img/shoes/ftw6.png', 48, 0.5),
(7, 'Hoodies', 'firstHoodie', 'img/hoodies/hood1.png', 22, 0.2),
(8, 'Hoodies', 'secHoodie', 'img/hoodies/hood2.png', 42, 0.2),
(9, 'Hoodies', 'thirdHoodie', 'img/hoodies/hood3.png', 17, 0.3),
(10, 'Hoodies', 'fourthHoodie', 'img/hoodies/hood4.png', 18, 0.3),
(11, 'Hoodies', 'fifthHoodie', 'img/hoodies/hood5.png', 26, 0.2),
(12, 'Hoodies', 'sixthHoodie', 'img/hoodies/hood6.png', 23, 0.3);

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Άδειασμα δεδομένων του πίνακα `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(1, 'stylos', 'a@a', '1234'),
(2, 'stavros', 'st@st', '1234'),
(4, 'stst', 'st@s', '1234'),
(5, 'auser', 'user@u', 'asdf');

--
-- Ευρετήρια για άχρηστους πίνακες
--

--
-- Ευρετήρια για πίνακα `basket`
--
ALTER TABLE `basket`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `item_id` (`item_id`);

--
-- Ευρετήρια για πίνακα `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Ευρετήρια για πίνακα `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT για άχρηστους πίνακες
--

--
-- AUTO_INCREMENT για πίνακα `basket`
--
ALTER TABLE `basket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT για πίνακα `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT για πίνακα `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Περιορισμοί για άχρηστους πίνακες
--

--
-- Περιορισμοί για πίνακα `basket`
--
ALTER TABLE `basket`
  ADD CONSTRAINT `basket_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `basket_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `basket_ibfk_3` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
