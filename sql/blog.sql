-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Jeu 19 Mai 2016 à 10:12
-- Version du serveur :  10.1.9-MariaDB
-- Version de PHP :  5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `blog`
--
CREATE DATABASE IF NOT EXISTS `blog` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `blog`;

-- --------------------------------------------------------

--
-- Structure de la table `post`
--

CREATE TABLE `post` (
  `id` int(11) UNSIGNED NOT NULL,
  `author` varchar(50) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `picture` varchar(255) DEFAULT NULL COMMENT 'image',
  `rating` tinyint(1) NOT NULL,
  `status` tinyint(1) DEFAULT '0',
  `creation_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `post`
--

INSERT INTO `post` (`id`, `author`, `title`, `content`, `picture`, `rating`, `status`, `creation_date`) VALUES
(1, 'Lorem', 'Ipsum dolor sit amet, consectetur adipiscing elit', 'In consectetur congue turpis, et sollicitudin turpis hendrerit a. Fusce a dignissim felis. Fusce tincidunt et eros id scelerisque. Donec pellentesque magna eget sodales vehicula. Sed id felis aliquet, sollicitudin nisl et, fringilla ipsum. Mauris at maximus magna. Donec ultrices condimentum ante, quis fringilla elit pulvinar a. Aenean eu placerat nunc, in sagittis nulla. Aliquam egestas scelerisque turpis, id mollis libero vestibulum et. Sed eget magna ac eros mollis tempor. Quisque fringilla massa ex, venenatis gravida tortor lacinia sit amet. Vivamus at arcu mollis, fermentum eros sit amet, ornare nibh. Pellentesque vestibulum massa vitae sapien convallis egestas in quis elit. Quisque eget dolor lobortis, porttitor dui a, pulvinar ex. Vestibulum laoreet condimentum suscipit.', NULL, 1, 1, '2015-08-16 10:37:54'),
(2, 'Class', 'Aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos', 'Integer et quam et dui consequat lacinia. Phasellus eleifend erat vitae sem varius, vitae blandit massa iaculis. Quisque euismod tincidunt maximus. Quisque vel nisi rhoncus, volutpat justo nec, aliquam ante. Proin sit amet gravida est. Donec lobortis maximus sem, non dapibus nulla scelerisque eu. Nam ac vestibulum magna. Integer tempor, arcu eu gravida mollis, elit dolor laoreet est, sed dictum ex orci sit amet nisl. Nulla vestibulum aliquet nisi et mollis. Sed sodales purus purus, aliquam luctus sem eleifend in. Suspendisse tortor massa, eleifend facilisis ultricies at, fringilla et lectus. Integer venenatis suscipit velit, non vestibulum lacus imperdiet a. Nunc nulla mi, sagittis ac augue sed, mattis pharetra neque. Integer a consequat est, nec efficitur lacus. Nam interdum tincidunt elit sed varius.', NULL, 2, 1, '2015-02-19 19:50:43'),
(3, 'Donec', 'Tristique velit id dapibus auctor', 'Nam nec porta turpis. Ut sed felis sem. Sed elementum in erat ultrices interdum. Sed aliquet lectus sit amet molestie blandit. Vivamus efficitur nibh non risus euismod convallis. Aliquam feugiat, purus nec sollicitudin iaculis, nisl odio porta ex, vitae sodales nisl augue tincidunt mauris. Etiam eleifend at lorem vitae sollicitudin. Fusce gravida tortor id metus sodales, id interdum turpis lobortis. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam ac fermentum ex. Mauris quis ex et augue pellentesque tristique id at odio. Phasellus nunc eros, molestie nec purus at, auctor cursus metus. Pellentesque eu venenatis tortor.', NULL, 4, 1, '2014-09-15 13:17:32'),
(4, 'Mauris', 'Sapien nunc, pharetra non purus non, mollis tincidunt mi', 'Nullam id lacus id arcu feugiat fringilla a in dolor. Phasellus accumsan odio tincidunt pharetra pretium. Duis quis pellentesque mauris, vitae feugiat arcu. Vivamus euismod tellus fermentum, ornare tortor nec, blandit arcu. Praesent ut pulvinar sapien. Nam sit amet risus sit amet tellus volutpat porta sit amet quis nisl. Aenean auctor nisi sit amet orci efficitur euismod. Nulla tincidunt, enim et ultrices finibus, velit dui elementum odio, in convallis quam ante vitae sapien.', NULL, 4, 1, '2015-03-27 07:41:06'),
(5, 'Maecenas', 'Neque neque, laoreet a rutrum ullamcorper, suscipit sed tellus', 'Praesent congue, lorem in congue dictum, justo lorem consectetur erat, in placerat lorem arcu vitae turpis. In eget gravida risus. Mauris eleifend sem at nisi posuere consectetur. Morbi eu nisi tempus, pellentesque erat vel, dapibus tellus. Curabitur rhoncus orci sit amet libero vehicula, ac pretium mauris placerat. Duis quam nisi, pharetra nec luctus id, porta egestas eros. Vestibulum eu ex lacus. Donec porttitor viverra arcu, sed tempus justo facilisis a. Maecenas dictum est vitae nulla volutpat scelerisque. Nulla non quam aliquam, eleifend nisi eget, pellentesque velit. Ut ac suscipit elit. Sed cursus, ipsum et euismod pretium, nisl lorem euismod neque, non congue massa quam eget dolor.', NULL, 4, 1, '2014-04-18 21:48:09'),
(6, 'In', 'Non odio sit amet metus viverra scelerisque', 'Etiam eu felis malesuada, mollis ligula eget, fermentum sem. Curabitur dictum dictum rhoncus. In scelerisque efficitur nisi, nec tincidunt risus ornare ac. Curabitur vel rutrum neque. Mauris eleifend porta magna ultricies fringilla. Donec ut mauris sit amet enim condimentum facilisis nec non diam. Suspendisse vel metus feugiat elit sodales convallis vitae eu ligula. Sed ut augue sit amet augue cursus pretium.', NULL, 5, 1, '2014-09-09 00:22:27'),
(7, 'Nulla', 'Rhoncus, odio sed vulputate volutpat, metus erat tincidunt nunc, ut iaculis massa tellus ut ex', 'Donec ut felis a dui consectetur molestie. In ac vestibulum lacus. Ut in dictum mauris. Suspendisse blandit id sem consequat suscipit. Nulla interdum pretium porta. Etiam mollis turpis neque, ac ultrices neque vulputate nec. Maecenas tincidunt ligula non orci suscipit pretium. Phasellus commodo porta lacus a faucibus. Praesent vitae erat sit amet orci fermentum dignissim at at nunc. Sed convallis sed diam in pretium. Mauris sollicitudin convallis lacus non ullamcorper. Proin pharetra nec turpis vitae commodo. Integer accumsan sit amet lorem a iaculis.', NULL, 2, 1, '2015-04-23 11:10:44'),
(8, 'Quisque', 'Suscipit ex sit amet lacus euismod dictum', 'Nullam a posuere turpis, in scelerisque felis. Praesent sit amet ex tempus, pharetra ligula at, maximus massa. Ut id nisl lectus. Phasellus dictum enim sit amet eros sodales, quis molestie ipsum iaculis. Fusce id lacus id quam congue pharetra fermentum at ante. Praesent rhoncus, nibh quis imperdiet convallis, quam enim efficitur augue, et vehicula mi mauris sit amet libero. Aenean scelerisque, elit et condimentum porttitor, nunc lectus scelerisque augue, eu volutpat magna purus id enim. Suspendisse rhoncus nisl quis lacus mattis eleifend. Nulla vel vehicula purus. Maecenas ultrices diam et risus ornare ullamcorper. Vivamus vel metus purus. Ut convallis felis ac gravida elementum. Curabitur cursus mauris a arcu suscipit, non sollicitudin est malesuada. Etiam porta pharetra diam, eu auctor urna ornare id.', NULL, 3, 1, '2016-04-23 23:54:46'),
(9, 'Pellentesque', 'Sodales lacus vitae lectus eleifend rutrum', 'Fusce a orci eu dui fermentum vulputate. Aenean tempor venenatis vestibulum. Cras imperdiet placerat lacus at pretium. Integer vel purus hendrerit lorem aliquet ornare at at felis. Quisque risus dolor, fringilla ut eros in, rutrum semper leo. Pellentesque viverra felis arcu, congue euismod nulla placerat eu. Phasellus quis venenatis neque. Praesent ut lacus non mauris fermentum mattis eget eget nunc. Nulla mattis ac nibh sed semper. Nulla et felis ipsum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc et aliquam nunc. Nullam pretium semper elit in dictum. Sed vel risus a libero venenatis elementum in sed purus. Nulla euismod pellentesque diam, eget eleifend metus tincidunt in.', NULL, 2, 1, '2014-10-02 06:22:17'),
(10, 'Mauris', 'Non nulla euismod, finibus nulla vel, interdum risus', 'Pellentesque sagittis velit turpis, a malesuada purus vestibulum dictum. Duis eleifend purus in cursus cursus. Sed et purus eget elit hendrerit viverra. Phasellus sit amet maximus metus. Cras auctor tincidunt erat, sed facilisis orci mattis molestie. Curabitur ac pretium elit. Pellentesque porta orci vitae molestie dictum. Phasellus finibus risus in ante facilisis, vitae feugiat lacus consectetur. Sed sit amet lectus posuere, sagittis orci eget, placerat nisi. Sed ac diam aliquam, hendrerit dolor sed, tempus felis. Maecenas ullamcorper a arcu ut pulvinar. Curabitur ultricies odio odio, vel consequat leo viverra ac.', NULL, 5, 1, '2016-02-11 02:17:03'),
(11, 'Praesent', 'Id mi interdum, finibus lorem rutrum, ornare arcu', 'Nunc sagittis et nunc vitae finibus. Nam vitae felis sed nisi posuere finibus eget eu est. Mauris condimentum pellentesque tempor. Proin tempus turpis non leo vehicula mollis. Etiam at mollis ligula. Sed molestie diam sed ante gravida vehicula. Quisque eleifend urna non leo molestie, vitae feugiat sem ullamcorper. In hac habitasse platea dictumst. Cras consectetur dictum diam, vel scelerisque ligula tempor eget. Nunc lacus risus, convallis id leo blandit, lobortis tristique neque. Nullam luctus iaculis neque. Curabitur tincidunt ante quis purus rhoncus euismod. Duis vel tellus enim. Etiam cursus, leo eu vulputate varius, ex neque facilisis augue, ut vestibulum felis ligula sollicitudin massa.', NULL, 2, 1, '2015-10-12 06:25:48'),
(12, 'Suspendisse', 'Potenti', 'Morbi laoreet urna ipsum, eu auctor massa pellentesque non. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum at neque ac lacus ornare porttitor. Nam ultricies dolor mi. Praesent pellentesque egestas nibh consequat hendrerit. Aliquam ultricies purus eu enim maximus, sed accumsan lacus malesuada. In a ligula pellentesque, ultrices velit sed, facilisis est. Suspendisse augue neque, ullamcorper et tristique et, luctus eu sem. Nulla fermentum nisl diam, id vulputate mauris luctus ut. Aliquam quis posuere dolor, vel mattis ipsum.', NULL, 4, 1, '2015-03-01 11:30:18'),
(13, 'Phasellus', 'Vulputate porttitor urna, nec ultrices justo posuere quis', 'Morbi velit massa, pretium at urna a, laoreet pharetra metus. Etiam a dapibus nunc, eu convallis eros. Etiam bibendum vulputate rutrum. In accumsan tellus lectus, sed elementum urna laoreet ut. Nunc luctus lectus turpis, nec vestibulum neque sollicitudin at. Nunc semper erat id elit interdum luctus vitae quis orci. Fusce congue elementum augue, eleifend semper felis dapibus id. Donec quis lorem mi. Nam euismod porta magna, eget suscipit ante. Integer pharetra fringilla mauris, et tempor dui vestibulum vel. Sed quis ipsum id diam vulputate euismod id vel tortor. Praesent feugiat dui porttitor ipsum porttitor, vel lobortis risus posuere.', NULL, 5, 1, '2016-01-25 11:18:17'),
(14, 'Nam', 'Quam sem, eleifend sed viverra nec, tempor ut velit', 'Ut eu fermentum ex. Nam porta id purus eu tempor. Maecenas scelerisque feugiat nisl, id ultricies erat tempor nec. Duis pharetra augue eu purus gravida, et aliquet justo euismod. Curabitur vulputate urna et augue vestibulum pretium. Sed in felis sed enim sodales aliquam ut molestie elit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.', NULL, 0, 1, '2014-08-22 01:34:31'),
(15, 'Mauris', 'Maximus dictum ultrices', 'Integer pretium commodo nisl, at tristique lacus tincidunt vel. Quisque et augue tortor. Aliquam sed sagittis erat. Aenean nec dui mi. Integer tempus commodo augue ut egestas. Duis porttitor enim eget malesuada tempor. Proin sollicitudin ante mattis libero scelerisque, nec lobortis eros semper.', NULL, 4, 1, '2015-02-13 22:02:45'),
(16, 'Nulla', 'Accumsan neque eget nisl viverra dapibus', 'Vestibulum tempor dapibus magna, vel ullamcorper sem faucibus vitae. Nunc convallis finibus nisl, a ullamcorper justo pretium eu. Vestibulum ut est id nunc dictum faucibus sit amet ut nibh. Nunc pretium cursus eleifend. Aenean efficitur sapien eu lacus pellentesque laoreet. Etiam vel dolor ante. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas aliquam, tellus et facilisis porttitor, urna ligula scelerisque nunc, eget porta ligula enim sed nisl. Nulla tempor lobortis lectus.', NULL, 1, 1, '2014-06-18 20:29:43'),
(17, 'Suspendisse', 'Potenti', 'Praesent rhoncus fermentum quam sed vulputate. Mauris id massa ut turpis placerat vulputate. In eget ipsum in dui finibus ultrices. Praesent gravida imperdiet purus. Sed rutrum, justo in egestas scelerisque, arcu nunc euismod odio, a ultrices justo lorem et ex. Pellentesque accumsan venenatis ex nec semper. Sed sed mattis risus. Curabitur sit amet elit eros. Nam ac leo turpis. Nam porttitor volutpat metus, quis rhoncus tortor congue nec. Donec id mollis risus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.', NULL, 3, 1, '2015-06-03 14:37:10'),
(18, 'Aliquam', 'Vulputate et elit et ornare', 'Mauris posuere neque est, sed viverra est congue nec. Phasellus sit amet viverra quam. Curabitur feugiat viverra mauris. Mauris dapibus magna eu libero mollis tempus. Vestibulum ac augue ac ante pulvinar sagittis nec nec metus. Ut massa felis, viverra vel cursus et, gravida nec tellus. Nulla egestas ante quis lacinia sodales. Vivamus id mattis nunc. Sed vestibulum risus vel sagittis suscipit. Aliquam erat volutpat.', NULL, 5, 1, '2016-05-16 21:14:52'),
(19, 'Sed', 'Elementum, dui condimentum faucibus rhoncus, nibh diam suscipit magna, eu pharetra sem dui sed est', 'Nam tincidunt sapien nisi, et faucibus ante feugiat sed. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam gravida, nisl id interdum feugiat, libero nibh varius libero, sed fermentum libero diam ac velit. Duis eu ultrices dolor. Nam sed diam orci. Nunc vitae dolor in urna maximus molestie et vel orci. Nulla ullamcorper velit quis hendrerit porta. Etiam venenatis non justo eu imperdiet. Etiam facilisis tellus ac justo rutrum pharetra. In eros enim, egestas facilisis nunc vitae, cursus tincidunt ligula.', NULL, 4, 1, '2016-02-24 11:03:34'),
(20, 'Aenean', 'Vulputate felis eget nunc porttitor, a posuere eros maximus', 'Morbi porttitor, nunc id pharetra vehicula, nisi mauris gravida elit, sit amet mollis neque lectus in sapien. Pellentesque ut accumsan dui. Vivamus ut lorem finibus, vehicula sem sit amet, aliquam neque. Aliquam faucibus massa laoreet augue semper commodo. Maecenas sed est quis neque consequat fringilla et porta justo. Pellentesque varius felis vel neque pretium, quis condimentum magna aliquam. Vivamus accumsan est at tristique pharetra. Sed laoreet enim vitae neque imperdiet rhoncus. Nunc cursus tortor quam, sit amet tristique augue ultrices nec. Morbi nunc quam, consequat et dolor at, cursus semper turpis. Nulla sed scelerisque leo. Morbi eget tincidunt odio. Curabitur at eros vel sem bibendum hendrerit non quis libero.', NULL, 1, 1, '2015-08-17 03:49:00');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
