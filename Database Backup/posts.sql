-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 23, 2020 at 06:45 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `researcher_bolg`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int(50) NOT NULL,
  `title` varchar(100) NOT NULL,
  `subtitle` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `content` varchar(10000) NOT NULL,
  `date` timestamp NULL DEFAULT current_timestamp(),
  `pdf` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `title`, `subtitle`, `slug`, `content`, `date`, `pdf`) VALUES
(1, 'Business Success Prediction Using Data Mining', '', 'first-post', 'On average, 7 out of 10 startups fail. Many reasons are responsible for the failure of the startup,\r\nincluding poor management, lack of funds, etc. The goal of this work is to create a forecasting\r\nmodel for a startup based on several key things involved at various stages in the startup\'s life. It\r\nis highly desirable to increase the success rate of startups and not much work has been done to\r\naddress this. We propose a method to predict the outcome of a startup based on several key\r\nfactors such as the location of the startup, the product requirement, competitors in the market,\r\nfactors contributing to the success and failure of the business at each milestone. We will create\r\nseveral models based on data, which we have carefully put together from various sources like\r\nKagal etc. Several data mining classification techniques were used on preprocessed data with\r\nvarious data mining optimizations and validations. We provide our analysis using techniques\r\nsuch as random forest, Bayesian networks. We evaluate the accuracy of our model based on\r\nfactors such as accuracy and area under recall. We show that a startup can use our model to\r\ndecide which factors they need to pay more attention to in order to hit the success mark. ', '2020-09-02 08:58:59', '18MCA0100.pdf'),
(2, 'Recommendation System for School using Data Mining Techniques', 'Recommendation System for School using Data Mining', 'second-post', 'The recommendation system is one of the best information-gathering systems which have many benefits like which product do you like most, which movie you like most, which city is suitable for a particular job and many more. There are few recommendation systems are available for schools and colleges. This paper proposed a recommendation system for interested students for schools in a particular city. This will be done based on some problems like infrastructure, placements, results, facility, sports and many more. The list of schools will be stored in the dataset for calculating the accuracy and precision of the system. In this paper some data mining techniques are also discussed. This will help the students and their parents to find the best school according to their requirements.', '2020-09-02 09:42:35', ''),
(3, 'Movie Success Prediction using Data Mining', '', 'Movie-Success-Prediction-using-Data-Mining', 'In this project, we apply data mining technique and machine learning algorithms\r\nusing R software to predict the success and failure of movie based on several attributes. In order\r\nof doing this, we will develop a methodology on the basis of historical data to reduce certain\r\nlevel of uncertainty concerned to movie’s future outcome. Some of the criteria in calculating\r\nmovie success included budget, actors, director, producer, story writer, movie release day,\r\ncompeting movie releases at the same time, music, release location and target audience. Since,\r\nmovie making involves huge investment thus movie prediction plays a vital role in the movie\r\nindustry. This model helps movie makers to modify the criteria of blockbusters. It also helps\r\nmovie watchers to determine a blockbuster before purchasing a ticket. Each attribute has some\r\ncriteria and on the basis of that weightage has been given and then prediction is made based on\r\nthat. Here, we also analyse key factors for movie profitability. This project also show the power\r\nof predictive and prescriptive data analytics for information systems to aid movie business\r\ndecisions. This model also helps to find out the review of the new movie', '2020-09-20 17:34:42', ''),
(4, 'Awareness About Cyber Security and Prevention Methods For Home User', '', 'Awareness-About-Cyber-Security', 'Today we are in the era of digital world. In digital world everything works on internet and\r\ncomputers. Internet makes our life so easy that with the help of internet we can do many things.\r\nShopping, social networking, business everything is going on internet. With the increase in the\r\ntechnology there is also parallel increase in cyber-threats. Cyber-threats causes many problems to\r\nHome Users and they mainly attack on them because either they don’t know about the security\r\nsystem or they are not much familiar with the technology But due to lacking of knowledge about\r\ncyber threats, people become addicted to this kinds of threats. This kind of threats can be in form of\r\nmalware or virus and they can hack the entire data of the computer. It is necessary to take some\r\nsecurity measures to secure our system from these kinds of threats. This paper discuss on some\r\ntechnique that help user to secure their system from cyber attacks, it is necessary because information\r\nis very valuable and if it goes on wrong hand then it might creates major risks to users. E-mail, or\r\nany application that user uses in his day to day life.', '2020-09-20 17:40:49', ''),
(5, 'Deadlock detection using Path-Pushing Algorithm Distributed Operating System', '', 'Deadlock-detection ', 'Deadlock is a situation which occurs when two or more process are being executed concurrently in a system .In this\r\nsituation one process has to wait while other process is executing ,and it can’t be executed till the other process is\r\nfinished executing or exist from the critical time .And detection is the method by which deadlock is detected for the\r\nprevention and solution .In the era of Inter of things every things is being executed by the systems and machines\r\n.The machines and system being used is handling multitasking ,In this way systems have to perform better and\r\naccurate with low latency .Lower the latency better the processing .There are lots of algorithm proposed for\r\ndeadlock detection and prevention such as Banker’s algorithm ,WFG(wait for graph),Dining philosopher algorithm\r\n,Daemon algorithm etc. In this paper we are using path pushing algorithm.', '2020-09-20 17:43:01', ''),
(6, 'Encryption of Message Using Geometric Progression', '', 'Encryption-of-Message', 'As in today\'s world, we store our important\r\ndata in the form of files in our personal\r\ncomputers and also transfer that data from one\r\nperson to another. But nowadays the security\r\nthreats to our data are increasing day by day so\r\nwe have to transfer our data in such a way that\r\nno third party user can access our important\r\ninformation. Therefore to protect our data\r\nfrom the third-party user we need an\r\nencryption technique through which we can\r\nencrypt our text in the way that no third person\r\ncan understand the real text behind it. Only the\r\nperson who has valid key provided by the\r\nsender can generate the real message behind\r\nthat data. As till now, we have come across the\r\nmany encryption techniques but many of them\r\nare not that safe. Therefore we are trying to\r\nbuild a new encryption technique where we\r\nactually don\'t need to encrypt the data within\r\nthe file we just need to extract some letters\r\nfrom that particular text using the key\r\nprovided by the sender. \r\n', '2020-09-20 17:44:11', ''),
(7, 'Human Facial Expression Recognition Using TensorFlow And OpenCV', '', 'Human-Facial-Expression-Recognition ', 'This project is a real time recognition system that traces the very mood of the human. Human\r\nexpresses their mood and sometimes what they need through their expression. It can be a smiling\r\nface, or it can be the face full of anger. Sometimes words are not that powerful as our\r\nexpressions. This project consists of models made through various algorithms of machine as well\r\nas deep learning. It also uses some of the very powerful packages in python to create an\r\napplication software that recognizes the expression of human in real time. Some of the libraries\r\nare: TensorFlow, Keras, OpenCV, Matplotlib. This implementation can be used at various\r\nplaces and platforms. The very first example can be feedback through moods at any restaurants\r\nand hotels about their services and foods. It can be much impactful in the field of military. Its\r\nvery usage can be helpful for recognizing the people’s behaviour at the border areas to find out\r\nthe suspects between them. This project is just an implementation of the environment and not the\r\nactual software that can be useful in the real time environment. This project consists of two\r\nmodules: (i)Processing and generating the model for the application using different algorithms\r\nand (ii) Application for using the model using OpenCV to recognize the human facial\r\nexpression', '2020-09-20 17:45:12', ''),
(8, 'Network Security Based Attacks ECC over RSA for SSL Certification', '', 'Network-Security-Based-Attacks ', 'MITM attack is a\r\ntype of cyber-attack by which an attacker\r\nor hacker comes into the connection\r\nbetween the user and the server, and gains\r\naccess to all information exchange\r\nbetween both parties. Man-In-The Middle\r\nattack allows attacker to steal login\r\npassword, files from device and also trying\r\nto manipulate requests made by user to\r\nserver. The main target of Man in the\r\nMiddle attack is actual data flows between\r\nend points and the confidentiality and\r\nintegrity of data itself. Some common\r\ntypes of performing MIMT attack are\r\nEmail Hijacking, Wi-Fi Eavesdropping,\r\nSession Hijacking, Port Stealing and DNS\r\nSpoofing. In this paper the focus is on how\r\nto perform MITM attack on SSL and how\r\nto prevent from Man in the Middle attack\r\nusing different Key exchange algorithm.\r\nFrom the public Key exchange algorithm\r\nRSA and ECC it’s needed to find out the\r\nbest one to prevent communication\r\nbetween user and server from attackers.\r\nFinally, in order to provide defence\r\nstrategy regarding how to decrease losses\r\nagainst MITM attack.\r\n', '2020-09-20 17:46:32', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
