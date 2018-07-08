-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 09, 2018 at 04:50 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `macd`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`) VALUES
(1, 'Lunch', '2018-07-04 22:25:02'),
(2, 'Dinner', '2018-07-04 22:25:02'),
(3, 'Drink', '2018-07-07 02:27:30'),
(4, 'Breakfast', '2018-07-07 21:19:52');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(256) NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `name`, `email`, `body`, `created_at`) VALUES
(1, 9, 'Pankaj', 'pankajsharmavats88@gmail.com', 'Unable to make this shit\r\nHelp me Starboy Sir?\r\nTy', '2018-07-07 23:21:07'),
(2, 9, 'Starboy', 'starboy@gmail.com', 'Be Patient and try again.\r\nWork Hard and Do again and again and \r\nNever ever Give Up\r\nPankaj Bro', '2018-07-07 23:33:29');

-- --------------------------------------------------------

--
-- Table structure for table `food_item`
--

CREATE TABLE `food_item` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `price` int(11) NOT NULL,
  `slug` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `food_item`
--

INSERT INTO `food_item` (`id`, `name`, `price`, `slug`) VALUES
(1, 'Burger', 49, '1'),
(2, 'Cheese Burger', 69, '2');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `name`, `password`) VALUES
(1, 'pankaj@gmail.com', 'starboy');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `category_id`, `title`, `slug`, `body`, `image`, `created_at`) VALUES
(1, 0, 1, 'yummy salmon burgers with slaw', 'post-one', 'I know, I know. But for as weird-sounding as salmon burgers are, they are so extremely good.\r\n\r\nWe’re talking crispy outsides, flaky insides, and a perfect golden color, not to mention lots of nutrition, THANK YOU SALMON.\r\n\r\nThey are also easy to make and require (usually) minimal, if not zero, grocery shopping, assuming you keep a decently stocked pantry. I love, love, love these crispy pan-fried little guys.\r\n\r\nAnd as if the salmon burgers weren’t good enough already to eat on their own (which, um, they are), I need you to make this slaw to serve your salmon burgers in/on/around. It is nothing fancy – just a shredded cabbage, yogurt, herbs, garlic, and vinegar situation, but paired with the salmon burgers? the crispy-salty-tangy combo is an ON POINT combo. Plus, again with the super nutrition. Plus Sugar Free January friendly.', 'https://cdn.pinchofyum.com/wp-content/uploads/salmon-burgers-on-a-plate.jpg', '2018-07-03 21:29:10'),
(2, 0, 2, 'buffalo cauliflower tacos with avocado crema', 'buffalo-cauliflower-tacos-with-avocado-crema', ' Whoa whoa whoaaa. Buffalo Cauliflower Tacos with Avocado Crema are hap-pen-ning. This is not a sad moment on Pinch of Yum.\r\n\r\nThere is a restaurant in St. Paul, Minnesota called J. Selby’s. I adore it. It’s a “plant-based eatery” with pear ginger kombucha on tap, every kind of vegan bowl you could ever dream of, and deep fried buffalo cauliflower “wings” that will rock your world. The origins of this buffalo cauliflower taco obsession can be traced back to many kombuchas, “wings,” and burrito bowls shared by Bjork and I at the bar of this little restaurant. If you live in Minnesota and you want a fun place to eat, J. Selby’s will be your place.\r\n\r\nBuffalo cauliflower (at least this version) is fairly simple to make – dip and bake – but flavor-wise, it’s not for the faint of heart. It packs some heat and a boatload of tang, like any good buffalo bar food. Its mostly-crispy breading sucks up the hot sauce and gives these little nuggets so much fiery flavor.  ', 'https://cdn.pinchofyum.com/wp-content/uploads/Buffalo-Cauliflower-Tacos-with-Avocado-Cremajpg.jpg', '2018-07-03 21:29:10'),
(3, 0, 2, 'Food Blog', 'Food-Blog', '<p>This is a yummy food blog. My Food</p>\r\n', '', '2018-07-04 22:38:16'),
(9, 0, 4, 'Spicy Bloody Mark Cock Tail', 'Spicy-Bloody-Mark-Cock-Tail', '<p>lus it&rsquo;s a common &ldquo;<a href=\"https://en.wikipedia.org/wiki/Hair_of_the_dog\" target=\"_blank\">Hair of the Dog</a>&rdquo; drink &ndash; reputed to cure hangovers with it&rsquo;s &ldquo;heavy vegetable base (to settle the stomach), salt (to replenish lost electrolytes) and alcohol (to relieve head and body aches)&rdquo; ~ according to&nbsp;<a href=\"https://en.wikipedia.org/wiki/Bloody_Mary_(cocktail)\" target=\"_blank\">Wikipedia</a>. So it&rsquo;s perfect for a long weekend at home or away, when one invariably drinks too much!</p>\r\n\r\n<p>I rarely order it when I&rsquo;m out though because there are such few restaurants and bars that make it well. Most will skimp on something or the other, managing to disappoint in some way. I find it safer to stick with beer or wine unless I&rsquo;m at a good cocktail bar, in which case I&rsquo;ll take my chances. My mom, on the other hand, doesn&rsquo;t seem to mind. She orders a Bloody Mary everywhere she goes, with extra lemon juice, Tabasco and black pepper on the side. She does this every single time, without even tasting the drink because it almost always needs a little something!!</p>\r\n\r\n<p>So here&rsquo;s my recipe for home-made (Spicy) Bloody Mary &ndash; hopefully you won&rsquo;t need to add a little extra something when you try it!!</p>\r\n', 'cd27ce0953b1d63d0f955d2d9e81359c.jpg', '2018-07-07 18:38:03');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `zipcode` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(256) NOT NULL,
  `password` varchar(255) NOT NULL,
  `registered_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `zipcode`, `email`, `username`, `password`, `registered_at`) VALUES
(1, 'Starboy', '112135', 'starboy@gmail.com', 'AwsmStarBoy', '973e88b5a3eda8593b3b448918d9fef7', '2018-07-08 14:38:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food_item`
--
ALTER TABLE `food_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `food_item`
--
ALTER TABLE `food_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
