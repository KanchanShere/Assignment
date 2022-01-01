-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 01, 2022 at 01:46 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `counter`
--

-- --------------------------------------------------------

--
-- Table structure for table `animal`
--

CREATE TABLE `animal` (
  `id` int(255) NOT NULL,
  `name` varchar(300) NOT NULL,
  `category` varchar(300) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` varchar(300) NOT NULL,
  `life` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `animal`
--

INSERT INTO `animal` (`id`, `name`, `category`, `image`, `description`, `life`) VALUES
(87, 'Elephant', 'herbivores', 'elephant.jfif', 'They\'re the world\'s largest land animal. The African elephant is the world\'s largest land mammal – with males on average measuring up to 3m high and weighing up to 6 tonnes. Males only reach their full size at 35-40 years - that\'s well over half their lifespan as wild elephants can live for up to 60', 10),
(88, 'Lion', 'carnivores', 'lion.jfif', 'The lion (Panthera leo) is a large cat of the genus Panthera native to Africa and India. It has a muscular, deep-chested body, short, rounded head, round ears, and a hairy tuft at the end of its tail. It is sexually dimorphic; adult male lions are larger than females and have a prominent mane.', 10),
(89, 'cow', 'herbivores', 'cow.jfif', 'Domestic cows are one of the most common farm animals around the world, and the English language has several words to describe these animals at various ages. A baby cow is called a calf. A female calf is sometimes called a heifer calf and a male a bull calf. ... An adult male is known as a bull.', 10),
(90, 'Tiger', 'carnivores', 'tiger1.jfif', 'The tiger is the largest living cat species and a member of the genus Panthera. It is most recognisable for its dark vertical stripes on orange fur with a white underside. An apex predator, it primarily preys on ungulates such as deer and wild boar.', 10),
(91, 'Beer', 'omnivores', 'beer.jpg', 'Beer is one of the oldest and most widely consumed alcoholic drinks in the world, and the third most popular drink overall after water and tea.', 5),
(92, 'Dog', 'omnivores', 'dog.jpg', 'Dogs (Canis lupus familiaris) are domesticated mammals, not natural wild animals. They were originally bred from wolves. ... Today, some dogs are used as pets, others are used to help humans do their work. They are a popular pet because they are usually playful, friendly, loyal and listen to humans.', 5),
(93, 'Butterfly', 'omnivores', 'butterfly.jfif', 'Butterflies are insects in the macrolepidopteran clade Rhopalocera from the order Lepidoptera, which also includes moths. Adult butterflies have large, often brightly coloured wings, and conspicuous,', 0),
(98, 'Wolf', 'carnivores', 'wolf.jfif', 'The wolf, also known as the gray wolf or grey wolf, is a large canine native to Eurasia and North America. More than thirty subspecies of Canis lupus have been recognized, and gray wolves, as popularly understood, comprise non-domestic/feral subspecies. The wolf is the largest extant member of the f', 10),
(99, 'Shark', 'omnivores', 'shark-dangers.jpg', 'Sharks are a group of elasmobranch fish characterized by a cartilaginous skeleton, five to seven gill slits on the sides of the head, and pectoral fins that are not fused to the head. Modern sharks are classified within the clade Selachimorpha and are the sister group to the rays.', 5),
(100, 'zebra', 'herbivores', 'zebra.jfif', 'Zebras are single-hoofed animals that are native to Africa. Zebras are very closely related to horses and donkeys; in fact, they are in the same genus, Equus.  The Grevy\'s zebra has very thin stripes. The mountain zebra has vertical stripes on its neck and torso, but horizontal stripes on its haunch', 10),
(101, 'Deer', 'herbivores', 'deer_young_animal_nice.jpg', 'Male deer in the wild live an average of about 3 years while female deer in the wild could live for up to 6.5 years. This is why deer hunters consider it a trophy when they capture a deer that is older than 3 years in age.', 1),
(102, 'Monkey', 'omnivores', 'monkey_vervet_animal.jpg', 'Monkey is a common name that may refer to most mammals of the infraorder Simiiformes, also known as the simians. ... Many monkey species are tree-dwelling (arboreal), although there are species that live primarily on the ground, such as baboons. Most species are mainly active during the day (diurnal', 10),
(103, 'Camel', 'herbivores', 'horse_animals_horse_head.jpg', 'A camel is an even-toed ungulate in the genus Camelus that bears distinctive fatty deposits known as \"humps\" on its back. Camels have long been domesticated and, as livestock, they provide food and textiles', 10),
(104, 'Mouse', 'omnivores', 'Mouse-in-wood.jpg', 'A mouse, plural mice, is a small mammal. Characteristically, mice are known to have a pointed snout, small rounded ears, a body-length scaly tail, and a high breeding rate. The best known mouse species is the common house mouse. Mice are also popular as pets.', 1),
(105, 'Dog', 'omnivores', 'dog.jpg', 'Dogs (Canis lupus familiaris) are domesticated mammals, not natural wild animals. They were originally bred from wolves.Today, some dogs are used as pets, others are used to help humans do their work. They are a popular pet because they are usually playful, friendly, loyal and listen to humans.', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `animal`
--
ALTER TABLE `animal`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `animal`
--
ALTER TABLE `animal`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
