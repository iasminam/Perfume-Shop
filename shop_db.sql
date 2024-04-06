-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gazdă: 127.0.0.1
-- Timp de generare: oct. 11, 2023 la 12:21 PM
-- Versiune server: 10.4.28-MariaDB
-- Versiune PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Bază de date: `shop_db`
--

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Eliminarea datelor din tabel `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `pid`, `name`, `price`, `quantity`, `image`) VALUES
(129, 14, 16, 'si', 300, 1, 'sii.jpg'),
(130, 14, 18, 'si-passione', 450, 1, 'si-passione.jpg'),
(131, 14, 15, 'si-intense', 500, 1, 'si-intense.jpg'),
(132, 15, 13, 'versace-eros', 400, 1, 'versace-eros.jpg'),
(133, 15, 15, 'si-intense', 500, 1, 'si-intense.jpg'),
(134, 15, 16, 'si', 300, 3, 'si.jpg');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `message`
--

CREATE TABLE `message` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Eliminarea datelor din tabel `message`
--

INSERT INTO `message` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(13, 14, 'my shop', 'myshop@gmail.com', '0123456789', 'hello');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` varchar(50) NOT NULL,
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Eliminarea datelor din tabel `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(17, 14, 'my shop', '9876543210', 'myshop@gmail.com', 'credit card', 'nr. 2, strada, bucuresti, romania - 654321', ', si (3) , si-passione (1) ', 1350, '1-Oct-2023', 'pending'),
(18, 14, 'my shop2', '01234567899', 'myshop2@gmail.com', 'paypal', 'nr. 3, strada, bucuresti, romania- 654321', ', versace-eros (1) , versace-eros-flame (2) ', 1200, '7-Oct-2023', 'completed');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Eliminarea datelor din tabel `products`
--

INSERT INTO `products` (`id`, `name`, `details`, `price`, `image`) VALUES
(13, 'versace-eros', 'Subliniați-vă sex-appeal-ul cu apa de parfum captivantă și senzuală Versace Eros. Aroma care interpretează masculinitatea sublimă are o aură luminoasă cu o prospețime intensă, vibrantă și strălucitoare. Aceasta este obținută din combinația de frunze de mentă, coajă de lămâie italiană și măr verde.', 400, 'versace-eros.jpg'),
(15, 'si-intense', 'Învăluiți-vă în această aromă și veți radia bună dispoziție întreaga zi! Apa de parfum pentru femei Armani Sì Intense este expresia optimismului și a sentimentului de totală fericire.', 500, 'si-intense.jpg'),
(16, 'si', 'definiția perfectă a bunului gust italian. Parfumul a fost creat pentru toate reprezentantele fermecătoare și stilate ale sexului frumos. Sofisticatul parfum Armani Sì rezonează cu spiritul brandului Armani, fiind un omagiu adus tuturor doamnelor care nu se tem să fie puternice și să-și trăiască viața din plin. Parfumul este atât intens, cât și tandru. Ca multe femei, de altfel.', 300, 'sii.jpg'),
(17, 'versace-crystal-noir', ' Experiențele neobișnuite merită repetate. Apa de parfum pentru femei Versace Crystal Noir vă învăluie într-un voal luxos de aromă catifelată. Caracterul oriental, cu note de fructe oferă atât celei care-l folosește, cât și celor din jurul ei o experiență magică, iar complimentele generoase nu vor întârzia să apară.', 300, 'versace-crystal-noir.jpg'),
(18, 'si-passione', 'Cu apa de parfum Giorgio Armani Sì Passione, simțurile freamătă, ca înainte de luarea unei decizii îndrăznețe. Fiecare femeie deține o combinație irezistibilă de grație, forță și spirit independent, reflectată de acest parfum îndrăzneț și fără compromisuri.', 450, 'si-passione.jpg'),
(19, 'versace-bright-crystal', 'Cea mai îndrăgită bijuterie parfumată din lume - vă prezentăm apa de toaletă Versace Bright Crystal. Tonurile ei florale delicate vă învăluie într-un parfum subtil și pur, cu efect foarte feminin și senzual. Capacul flaconului sugerează o nestemată elegant șlefuită, cu referire la arta bijutierilor casei de modă Versace.', 380, 'versace-bright-crystal.jpg'),
(20, 'versace-eros-flame', 'Un parfum care vă cucerește complet inima și vă transmite un mesaj despre demnitatea iubirii și forța diversității. Apa de parfum Versace Eros Flame este concepută pentru bărbatul sigur pe sine, care rămâne permanent în contact profund cu emoțiile sale.', 400, 'versace-eros-flame.jpg');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(20) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Eliminarea datelor din tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_type`) VALUES
(17, 'admin', 'admin@gmail.com', 'admin', 'admin'),
(14, 'user A', 'user01@gmail.com', '698d51a19d8a121ce581499d7b701668', 'user'),
(15, 'user B', 'user02@gmail.com', '698d51a19d8a121ce581499d7b701668', 'user');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Eliminarea datelor din tabel `wishlist`
--

INSERT INTO `wishlist` (`id`, `user_id`, `pid`, `name`, `price`, `image`) VALUES
(60, 14, 19, 'versace-bright-crystal', 380, 'versace-bright-crystal.jpg');

--
-- Indexuri pentru tabele eliminate
--

--
-- Indexuri pentru tabele `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexuri pentru tabele `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexuri pentru tabele `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexuri pentru tabele `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexuri pentru tabele `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexuri pentru tabele `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pentru tabele eliminate
--

--
-- AUTO_INCREMENT pentru tabele `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT pentru tabele `message`
--
ALTER TABLE `message`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pentru tabele `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT pentru tabele `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pentru tabele `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pentru tabele `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
