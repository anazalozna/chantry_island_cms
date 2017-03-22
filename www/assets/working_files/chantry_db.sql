-- MySQL dump 10.13  Distrib 5.7.17, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: database
-- ------------------------------------------------------
-- Server version	5.7.17

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin_menu`
--

DROP TABLE IF EXISTS `admin_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `link` varchar(60) DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `active` int(11) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `admin_menu_admin_menu_id_fk` (`parent`),
  CONSTRAINT `admin_menu_admin_menu_id_fk` FOREIGN KEY (`parent`) REFERENCES `admin_menu` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_menu`
--

LOCK TABLES `admin_menu` WRITE;
/*!40000 ALTER TABLE `admin_menu` DISABLE KEYS */;
INSERT INTO `admin_menu` VALUES (1,'Main','/admin',NULL,0,1),(2,'Users','/admin/users',NULL,0,1),(3,'Logout','/admin/logout',NULL,99,1),(4,'Change','/admin/user/change',NULL,0,1),(5,'Pages','/admin/pages',NULL,0,1),(6,'News','/admin/news',NULL,0,1),(7,'Gallery','/admin/gallery',NULL,0,1);
/*!40000 ALTER TABLE `admin_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_menu_roles`
--

DROP TABLE IF EXISTS `admin_menu_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_menu_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_menu_roles_admin_menu_id_fk` (`menu_id`),
  KEY `admin_menu_roles_roles_id_fk` (`role_id`),
  CONSTRAINT `admin_menu_roles_admin_menu_id_fk` FOREIGN KEY (`menu_id`) REFERENCES `admin_menu` (`id`),
  CONSTRAINT `admin_menu_roles_roles_id_fk` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_menu_roles`
--

LOCK TABLES `admin_menu_roles` WRITE;
/*!40000 ALTER TABLE `admin_menu_roles` DISABLE KEYS */;
INSERT INTO `admin_menu_roles` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,1,2),(6,3,2),(7,4,2),(8,5,1),(9,6,1),(10,7,1);
/*!40000 ALTER TABLE `admin_menu_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gallery`
--

DROP TABLE IF EXISTS `gallery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gallery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `thumb` varchar(200) DEFAULT NULL,
  `img` varchar(200) DEFAULT NULL,
  `text` text,
  `title` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery`
--

LOCK TABLES `gallery` WRITE;
/*!40000 ALTER TABLE `gallery` DISABLE KEYS */;
INSERT INTO `gallery` VALUES (1,'static/img/gallery/gallery_1_min.jpg','static/img/gallery/gallery_1.jpg','Aerial view of Chantry Island and the Saugeen River mouth in Southhampton, Ontario. Photo by Karen Smith.','Aerial view of Chantry Island and the Saugeen River mouth in Southhampton, Ontario.'),(2,'static/img/gallery/gallery_2_min.jpg','static/img/gallery/gallery_2.jpg','Aerial view of Chantry Island and the Saugeen River mouth in Southhampton, Ontario. Photo by Karen Smith.','Aerial view of Chantry Island and the Saugeen River mouth in Southhampton, Ontario.'),(3,'static/img/gallery/gallery_3_min.jpg','static/img/gallery/gallery_3.jpg','Aerial view of Chantry Island and the Saugeen River mouth in Southhampton, Ontario. Photo by Karen Smith.','Aerial view of Chantry Island and the Saugeen River mouth in Southhampton, Ontario.'),(4,'static/img/gallery/gallery_4_min.jpg','static/img/gallery/gallery_4.jpg','Chantry Island Lighthouse. Photo by Carol Walberg.','Chantry Island Lighthouse.'),(5,'static/img/gallery/gallery_5_min.jpg','static/img/gallery/gallery_5.jpg','Chantry Island Lighthouse. Photo by Donna Savoy.','Chantry Island Lighthouse.'),(6,'static/img/gallery/gallery_6_min.jpg','static/img/gallery/gallery_6.jpg','Chantry Island Lighthouse. Photo by Donna Savoy.','Chantry Island Lighthouse.'),(7,'static/img/gallery/gallery_7_min.jpg','static/img/gallery/gallery_7.jpg','Chantry Island Birds.  byPhoto Nancy Calder.','Chantry Island Birds.'),(8,'static/img/gallery/gallery_8_min.jpg','static/img/gallery/gallery_8.jpg','Chantry Island Birds. Photo by Nancy Calder','Chantry Island Birds.'),(9,'static/img/gallery/gallery_9_min.jpg','static/img/gallery/gallery_9.jpg','Inside Light Keeper\'s Cottage. Photo by George Plant.','Inside Light Keeper\'s Cottage.'),(10,'static/img/gallery/gallery_10_min.jpg','static/img/gallery/gallery_10.jpg','Inside Light Keeper\'s Cottage. Photo by George Plant.','Inside Light Keeper\'s Cottage.'),(11,'static/img/gallery/gallery_11_min.jpg','static/img/gallery/gallery_11.jpg','Chantry Island Birds. Photo by Nancy Calder.','Chantry Island Birds.'),(12,'static/img/gallery/gallery_12_min.jpg','static/img/gallery/gallery_12.jpg','Inside Light Keeper\'s Cottage. Photo by George Plant.','Inside Light Keeper\'s Cottage.'),(13,'static/img/gallery/gallery_13_min.jpg','static/img/gallery/gallery_13.jpg','Chantry Island Gardens. Photo by Donna Savoy.','Chantry Island Gardens.'),(14,'static/img/gallery/gallery_15_min.jpg','static/img/gallery/gallery_15.jpg','Chantry Island Gardens. Photo by Donna Savoy.','Chantry Island Gardens.'),(15,'static/img/gallery/gallery_16_min.jpg','static/img/gallery/gallery_16.jpg','Winter Scenes. Saugeen Front Range Light. Photo by Vicki Tomori.','Winter Scenes. Saugeen Front Range Light.'),(16,'static/img/gallery/gallery_14_min.jpg','static/img/gallery/gallery_14.jpg','<p>Chantry Island Gardens. Photo by Donna Savoy.</p>','Chantry Island Gardens.');
/*!40000 ALTER TABLE `gallery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_log`
--

DROP TABLE IF EXISTS `login_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(60) DEFAULT NULL,
  `date` datetime NOT NULL,
  `ip` varchar(30) NOT NULL,
  `success` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_log`
--

LOCK TABLES `login_log` WRITE;
/*!40000 ALTER TABLE `login_log` DISABLE KEYS */;
INSERT INTO `login_log` VALUES (1,'ana','2017-02-20 13:43:01','127.0.0.1',1),(2,'ana','2017-02-20 13:44:03','127.0.0.1',1),(3,'ana','2017-02-20 14:56:10','127.0.0.1',1),(4,'ana','2017-02-20 17:24:42','127.0.0.1',1),(5,'ana','2017-02-20 21:45:59','127.0.0.1',1),(6,'ana','2017-02-23 20:06:09','127.0.0.1',1),(7,'ana','2017-02-23 20:06:33','127.0.0.1',1),(8,'ana','2017-03-07 14:20:24','172.27.0.1',0),(9,'ana','2017-03-07 14:20:39','172.27.0.1',0),(10,'ana','2017-03-07 14:20:46','172.27.0.1',0),(11,'ana','2017-03-07 14:21:52','172.27.0.1',0),(12,'ana','2017-03-07 14:22:03','172.27.0.1',0),(13,'ana','2017-03-07 14:22:11','172.27.0.1',1),(14,'ana','2017-03-08 11:50:17','172.27.0.1',1),(15,'argonavt','2017-03-09 13:43:18','172.27.0.1',0),(16,'ana','2017-03-09 13:43:25','172.27.0.1',1),(17,'ana','2017-03-10 12:29:57','172.27.0.1',1),(18,'ana','2017-03-10 15:55:22','172.27.0.1',1),(19,'ana','2017-03-14 12:37:09','172.27.0.1',1),(20,'ana','2017-03-14 13:44:14','172.27.0.1',1),(21,'argonavt','2017-03-14 20:55:02','172.27.0.1',0),(22,'ana','2017-03-14 20:55:19','172.27.0.1',1);
/*!40000 ALTER TABLE `login_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(200) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `text` text,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,'static/img/news/news_1.JPG','Doug Johnson Proudly Displays the Famous Saying.',NULL,'2017-01-18 19:10:59'),(2,'static/img/news/news_2.JPG','Doug Johnsons 91st Birthday','Doug Johnson is giving a short talk about his history with the Propeller Club. He is one of our strongest supporters.','2017-01-10 19:10:48'),(3,'static/img/news/news_3.JPG','Chantry Island Tour Base','Inside the Chantry Island Tour Base, where tickets can be purchased for the tours to Chantry Island. The Tour Base will open again in June.','2017-01-08 19:10:31'),(4,'static/img/news/news_4.JPG','Southampton Christmas Parade','The Peerless II outside the Boathouse in southampton. Photo courtesy Eric Rogers.','2016-12-02 19:10:12'),(5,'static/img/news/news_5.JPG','Southampton Christmas Parade','The Marine Heritage Society and Propeller Club Float or I mean boat was well received Friday Night at the annual Christmas Parade. Towing the Boat was a Saugeen Shores Fire pick up truck driven by Phil Eagleson our Fire Chief.','2016-12-02 19:09:43');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text,
  `alias` varchar(250) DEFAULT NULL,
  `main_title` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pages_alias_uindex` (`alias`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'<section class=\"promo_block\">\r\n<h2 class=\"hide\">Promo Content</h2>\r\n<div class=\"promo_flex\">\r\n<div class=\"flex_item promo_link\">\r\n<h2 class=\"title_h2\">Our History</h2>\r\n<a class=\"btn_more\" href=\"../../../page/history\">See More</a></div>\r\n<div class=\"flex_item promo_text\">\r\n<p>Among other projects, the Society manages the Chantry Island Light Station under agreements and restrictions from the Canadian Coast Guard and the Canadian Wildlife Service.</p>\r\n<p>The goal of the Society is to identify, preserve and restore material items of marine historical significance and to raise sufficient funds to support these endeavors.</p>\r\n</div>\r\n</div>\r\n<div class=\"promo_flex\">\r\n<div class=\"flex_item promo_text\">\r\n<p>As you take the 15 minute boat ride to the island you will enjoy the outstanding views of the sandy beach shoreline and the deep blue waters of Lake Huron. During your two hour guided visit on Chantry Island, you have the opportunity to climb to the top of the Imperial Lighthouse for extraordinary views of the island.</p>\r\n<p>Stroll back in time while visiting the Light Keeper\'s Cottage as it existed in the late 1800&rsquo;s, decorated with period furnishings from private donors and the Bruce County Museum and Cultural Centre. You will also see the surrounding gardens and many species of birds.</p>\r\n</div>\r\n<div class=\"flex_item promo_link\">\r\n<h2 class=\"title_h2\">Tour Info</h2>\r\n<a class=\"btn_more\" href=\"../../../page/tourinfo\">See More</a></div>\r\n</div>\r\n</section>\r\n<section class=\"partners_block\">\r\n<h2 class=\"hide\">Partners Block</h2>\r\n<div class=\"partners_flex\">\r\n<div class=\"flex_item hovereffect\"><a href=\"http://www.saugeenshores.ca/\"><img title=\"Partner\'s Logo\" src=\"../static/img/partner_1.png\" alt=\"Partner\'s Logo\" /></a>\r\n<div class=\"overlay\">\r\n<h3><a href=\"http://www.saugeenshores.ca/\"> Saugeen Shores</a></h3>\r\n<p>The Saugeen Shores website is shared between the municipality and the local Chamber of Commerce. Let this website help you plan your visit when you come to tour Chantry Island.</p>\r\n</div>\r\n</div>\r\n<div class=\"flex_item hovereffect\"><a href=\"http://www.brucemuseum.ca/\"><img title=\"Partner\'s Logo\" src=\"../static/img/partner_2.png\" alt=\"Partner\'s Logo\" /></a>\r\n<div class=\"overlay\">\r\n<h3><a href=\"http://www.brucemuseum.ca/\"> Bruce County Museum &amp; Cultural Centre</a></h3>\r\n<p>The Bruce County Museum and Cultural Centre offers a journey through thousands of years of natural and human history. Check out their awesome Marine Gallery.</p>\r\n</div>\r\n</div>\r\n<div class=\"flex_item hovereffect\"><a href=\"http://www.brucecoastlighthouses.com/\"><img title=\"Partner\'s Logo\" src=\"../static/img/partner_3.png\" alt=\"Partner\'s Logo\" /></a>\r\n<div class=\"overlay\">\r\n<h3><a href=\"http://www.brucecoastlighthouses.com/\"> Bruce Coast Lighthouse Tour</a></h3>\r\n<p>Enjoy the Bruce Coast Lighthouse tour.</p>\r\n</div>\r\n</div>\r\n<div class=\"flex_item hovereffect\"><a href=\"http://www.explorethebruce.com/\"><img title=\"Partner\'s Logo\" src=\"../static/img/partner_4.png\" alt=\"Partner\'s Logo\" /></a>\r\n<div class=\"overlay\">\r\n<h3><a href=\"http://www.explorethebruce.com/\"> Explore the Bruce</a></h3>\r\n<p>Explore the Bruce is the Official Travel web site of Bruce County, one of the most spectacular all season destinations in Ontario. Check out this link for more Lighthouse Destinations.</p>\r\n</div>\r\n</div>\r\n<div class=\"flex_item hovereffect\"><a href=\"http://www.southamptontennisclub.ca/\"><img title=\"Partner\'s Logo\" src=\"../static/img/partner_5.jpg\" alt=\"Partner\'s Logo\" /></a>\r\n<div class=\"overlay\">\r\n<h3><a href=\"http://www.southamptontennisclub.ca/\"> Southampton Tennis Club</a></h3>\r\n<p>The Southampton Tennis Club is a thriving seasonal tennis club on the sunny shores of Lake Huron. Visit our website for more information.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n<section class=\"email_block\">\r\n<h2 class=\"hide\">Call to Action</h2>\r\n<div class=\"wrapper\">\r\n<h2 class=\"title_h2\">Contact Us Today</h2>\r\n<a class=\"btn_more\" href=\"../../../contact\">contact here</a></div>\r\n</section>','home','home'),(2,'<section class=\"about_block\">\r\n<h2 class=\"hide\">History Content</h2>\r\n<div class=\"about_flex wrapper\">\r\n<div class=\"flex_item\">\r\n<div class=\"about_img\"><img title=\"About Image\" src=\"../static/img/about_1.png\" alt=\"About Image\" /></div>\r\n<h2 class=\"title_h2\">About Chantry Island</h2>\r\n<p>Chantry Island is located on Lake Huron, just over a mile southwest of the Saugeen River mouth in Southampton, Ontario. On the island is a majestic Imperial Lighthouse built in the mid 1800&rsquo;s, as well as the Keeper&rsquo;s quarters and a boat house. In 1822, during a hydrographic survey, Captain Henry Bayfield of the Royal Navy christened the island and named it after his friend and British sculptor Sir Francis Chantry.</p>\r\n</div>\r\n<div class=\"flex_item\">\r\n<div class=\"about_img\"><img title=\"About Image\" src=\"../static/img/about_2.jpg\" alt=\"About Image\" /></div>\r\n<h2 class=\"title_h2\">Chantry Island</h2>\r\n<p>Chantry Island is a glacial moraine and consists of stone above the water and beneath extending a mile north and a mile south of the island. These underwater shoals of massive granite boulders have made this area one of the most treacherous in the Great Lakes. There are over 50 known shipwrecks around the island and there are many accounts from the 1800&rsquo;s and early &ndash; mid 1900&rsquo;s of these disasters and lost lives. Today, buoys and modern navigational tools safely guide boats through the area.</p>\r\n<p>The island varies in size depending on the level of Lake Huron. Today, with a low lake level Chantry Island is about 68 acres. In 1986 when the water level was at the highest of the century, the island was only about 10 acres, causing trees on the west, north and south sides to drown.</p>\r\n</div>\r\n</div>\r\n<div class=\"about_flex wrapper\">\r\n<div class=\"flex_item\">\r\n<div class=\"about_img\"><img title=\"About Image\" src=\"../static/img/about_3.jpg\" alt=\"About Image\" /></div>\r\n<h2 class=\"title_h2\">The Lighthouse History</h2>\r\n<p>During the mid 1800&rsquo;s water traffic on the Great Lakes had substantially increased and the colonial government called for improved navigational tools for the mariners on the Lake Huron. John Brown of Thorold was contracted to build the lighthouse on Chantry Island, as well as 10 other lighthouses to help sailors navigate the Lake. Because of the expense and difficulty of building, only six were completed. The Chantry Island Lighthouse was one of these completed and it was lit on April 1, 1859.</p>\r\n<p>The lighthouse stands 86 ft. above water level and is 80 ft. high from its base to the light&rsquo;s center. The lantern room of the lighthouse was fitted with a Fresnel lens built and transported from Paris, France. The first fuel used was sperm whale oil and the first light was a fixed light, not the familiar flashing one. Other fuels used have been colza oil, coal oil, kerosene, acetylene and electricity. Its present-day flashing light is solar powered.</p>\r\n</div>\r\n<div class=\"flex_item\">\r\n<div class=\"about_img\"><img title=\"About Image\" src=\"../static/img/about_4.png\" alt=\"About Image\" /></div>\r\n<h2 class=\"title_h2\">Federal Bird Sanctuary</h2>\r\n<p>In 1957 the Canadian Wildlife Service declared Chantry Island a Federal Migratory Bird Sanctuary to protect the migratory and nesting birds of the island. It is the largest Federal Migratory Bird Sanctuary between James Bay and Point Pelee. There are approximately fifty thousand birds (including chicks) on the island during the breeding season. It is home to nesting colonies of Great Blue Heron, Great Egret, Black-crowned Night-Heron, Herring Gull, Ring-billed Gull and Double-crested Cormorant. Water fowl such as Mallard, American Black Duck, Gadwall, Blue-winged Teal, Green-winged Teal, Northern Pintail, and American Wigeon are also known nesters on the island.</p>\r\n<p>Because the island is a migratory bird sanctuary, the number of people on the island on any given day is strictly limited and tours must be booked through the Chantry Island Tour Base.</p>\r\n</div>\r\n</div>\r\n</section>\r\n<section class=\"email_block\">\r\n<h2 class=\"hide\">Call to Action</h2>\r\n<div class=\"wrapper\">\r\n<h2 class=\"title_h2\">Contact Us Today</h2>\r\n<a class=\"btn_more\" href=\"/contact\">contact here</a></div>\r\n</section>','history','Our History'),(3,'    <section class=\"events_block\">\n        <h2 class=\"hide\">Events Content</h2>\n        <div class=\"wrapper\">\n            <div class=\"events_flex\">\n                <div class=\"flex_item\">\n                    <h2 class=\"title_h2\">Doug Johnsons 91st Birthday</h2>\n                    <p class=\"pub_date\">2017-01-10</p>\n                    <p>Doug is one of the oldest supporters of the Chantry Island project.</p>\n                </div>\n                <div class=\"flex_item\">\n                    <h2 class=\"title_h2\">Marine Heritage Society / Propeller Club AGM 2016</h2>\n                    <p class=\"pub_date\">2016-09-30</p>\n                    <p>The Annual Marine Heritage Society and Propeller Club AGM will take place on Friday, November 25, 2016. Location will be at the Walker House in Southampton. Roast Beef or Chicken are the choices for food. Tickets will be on sale at the Propeller Club meetings and through Marine Heritage Board members. Continue to check postings for further information.</p>\n                </div>\n            </div>\n            <div class=\"events_flex\">\n                <div class=\"flex_item\">\n                    <h2 class=\"title_h2\">Christmas Parade Southampton 2016</h2>\n                    <p class=\"pub_date\">2016-12-02</p>\n                    <p>The Southampton Christmas Parade always takes place on the First Friday in December. We will be preparing the Peerless II for this annual tradition. Decoration and theme will take place in the Southampton Boathouse the week before. Come and join us and get to be a part of a great group of volunteers sailing down High Street</p>\n                </div>\n                <div class=\"flex_item\">\n                    <h2 class=\"title_h2\">Island Docks Come Home</h2>\n                    <p class=\"pub_date\">2016-09-30</p>\n                    <p>Friday September 16, fourteen volunteers and three boats left for the island at 8:30 in the morning. We spent two hours dismantling the metal walkways and craning them up onto the floating dock. The weather was perfect and all went well. If this sounds interesting to you make sure you sign up for the next opportunity by watching these postings.</p>\n                </div>\n            </div>\n        </div>\n    </section>\n    <section class=\"email_block\">\n        <h2 class=\"hide\">Call to Action</h2>\n        <div class=\"wrapper\">\n            <h2 class=\"title_h2\">Contact Us Today</h2>\n            <a class=\"btn_more\" href=\"/contact\">contact here</a>\n        </div>\n    </section>\n    <section class=\"events_message\">\n        <h2 class=\"hide\">Event Message</h2>\n        <div class=\"wrapper_small\">\n            <p>Welcome to our Events page. Here we\'ll let you know about upcoming events and ongoing events that involve the Marine Heritage Society. Check back often during our operating season so that you don\'t miss anything.</p>\n            <p>You can also connect with our Facebook page for updates about current events and more information.</p>\n        </div>\n    </section>','events','Our Events'),(4,'    <section class=\"restor_block\">\n        <h2 class=\"hide\">Restoration Content</h2>\n        <div class=\"wrapper\">\n            <h2 class=\"title_h2\">Light Keeper\'s Cottage Before Restoration</h2>\n            <div class=\"restor_flex\">\n                <div class=\"flex_item restor_img\">\n                    <img src=\"../static/img/restoration_1.jpg\" alt=\"Restoration Image\" title=\"Restoration Image\">\n                </div>\n                <div class=\"flex_item\">\n                    <p>In 1997 the local Marine Heritage Society established specific goals for the island\'s restoration. The project was to be funded by donations and fundraising efforts, and the majority of the work was to be done by volunteers.</p>\n                    <p>With permission from 5 levels of government, the group of volunteers began to rebuild the light keeper’s cottage, using the original structure plans</p>\n                </div>\n                <div class=\"flex_item restor_img\">\n                    <img src=\"../static/img/restoration_2.jpg\" alt=\"Restoration Image\" title=\"Restoration Image\">\n                </div>\n            </div>\n            <h2 class=\"title_h2\">Light Keeper\'s Cottage & Grounds After Restoration</h2>\n            <div class=\"restor_flex\">\n                <div class=\"flex_item\">\n                    <p>The Light Keeper\'s Cottage restoration was completed in 2001. Over 250 volunteers put in more than 300,000 hours of labor to finish the restoration and ready the boat for tours. Since 2001 volunteers have restored the staircase of the lighthouse, built a boathouse on the island, constructed a replica of the original boat (which sits in the boathouse) and reconstructed the privy.</p>\n                </div>\n                <div class=\"flex_item restor_img\">\n                    <img src=\"../static/img/restoration_3.jpg\" alt=\"Restoration Image\" title=\"Restoration Image\">\n                </div>\n                <div class=\"flex_item\">\n                    <p>Today the tour is operated with over 125 volunteers, whose jobs include island housekeepers, gardeners, tour boat captains, crew and tour guides, and gift shop sales and service personnel. Volunteers also install the portable walkways and docks every spring and remove them every fall. To date, there have been over 20,538 visitors to the island.</p>\n                </div>\n            </div>\n        </div>\n    </section>\n    <section class=\"email_block\">\n        <h2 class=\"hide\">Call to Action</h2>\n        <div class=\"wrapper\">\n            <h2 class=\"title_h2\">Contact Us Today</h2>\n            <a class=\"btn_more\" href=\"/contact\">contact here</a>\n        </div>\n    </section>\n    <section class=\"restor_message\">\n        <h2 class=\"hide\">Restoration Message</h2>\n        <div class=\"wrapper_small\">\n            <p>For almost 100 years (1859 – 1954), light keepers lived on the island to keep the light burning for mariners on the lake. When the lighthouse lamp was converted to electricity in 1954, a light keeper was no longer needed. The buildings were left neglected and suffered at the hands of vandals. The lighthouse still stood intact, but little was left of the light keeper’s quarters. The roof had fallen in and the walls and floors had crumbled into a pile of rubble in the basement.</p>\n        </div>\n    </section>','restoration','Restoration Process'),(5,'    <section class=\"volunt_block\">\n        <h2 class=\"hide\">Volunteers Content</h2>\n        <div class=\"wrapper\">\n            <div class=\"volunt_flex\">\n                <div class=\"flex_item\">\n                    <h2 class=\"title_h2\">Don Nicholson</h2>\n                    <p>Chairman</p>\n                </div>\n                <div class=\"flex_item\">\n                    <h2 class=\"title_h2\">Pat O\'Connor</h2>\n                    <p>Vice Chairman</p>\n                </div>\n                <div class=\"flex_item\">\n                    <h2 class=\"title_h2\">John Rigby</h2>\n                    <p>Treasurer</p>\n                </div>\n                <div class=\"flex_item\">\n                    <h2 class=\"title_h2\">Stan Young</h2>\n                    <p>Secretary</p>\n                </div>\n            </div>\n            <div class=\"volunt_flex\">\n                <div class=\"flex_item\">\n                    <h2 class=\"title_h2\">Rick Smith</h2>\n                    <p>Past Chairman</p>\n                </div>\n                <div class=\"flex_item\">\n                    <h2 class=\"title_h2\">Ali Kelly</h2>\n                    <p></p>\n                </div>\n                <div class=\"flex_item\">\n                    <h2 class=\"title_h2\">Jane Kramer</h2>\n                    <p></p>\n                </div>\n                <div class=\"flex_item\">\n                    <h2 class=\"title_h2\">Vicki Tomori</h2>\n                    <p></p>\n                </div>\n            </div>\n            <div class=\"volunt_flex\">\n                <div class=\"flex_item\">\n                    <h2 class=\"title_h2\">Dan Holmes</h2>\n                    <p></p>\n                </div>\n                <div class=\"flex_item\">\n                    <h2 class=\"title_h2\">Dave Wenn</h2>\n                    <p></p>\n                </div>\n                <div class=\"flex_item\">\n                    <h2 class=\"title_h2\">Ed Braun</h2>\n                    <p></p>\n                </div>\n                <div class=\"flex_item\">\n                    <h2 class=\"title_h2\">John Willetts</h2>\n                    <p></p>\n                </div>\n            </div>\n            <div class=\"volunt_flex\">\n                <div class=\"flex_item\">\n                    <h2 class=\"title_h2\">Peter Williamson</h2>\n                    <p></p>\n                </div>\n            </div>\n            <h2 class=\"title_h2\">Volunteer Interviews</h2>\n            <div class=\"volunt_flex\">\n                <div class=\"flex_item\">\n                    <iframe src=\"https://www.youtube.com/embed/BkZWHmX8HY0\" frameborder=\"0\" allowfullscreen></iframe>\n                </div>\n                <div class=\"flex_item\">\n                    <iframe src=\"https://www.youtube.com/embed/N27M4OmubxI\" frameborder=\"0\" allowfullscreen></iframe>\n                </div>\n                <div class=\"flex_item\">\n                    <iframe src=\"https://www.youtube.com/embed/hbGffSYF5LU\" frameborder=\"0\" allowfullscreen></iframe>\n                </div>\n            </div>\n        </div>\n    </section>\n    <section class=\"email_block\">\n        <h2 class=\"hide\">Call to Action</h2>\n        <div class=\"wrapper\">\n            <h2 class=\"title_h2\">Contact Us Today</h2>\n            <a class=\"btn_more\" href=\"/contact\">contact here</a>\n        </div>\n    </section>\n    <section class=\"volunt_message\">\n        <h2 class=\"hide\">Volunteers Message</h2>\n        <div class=\"wrapper_small\">\n            <p>The Marine Heritage Society is a not-for-profit group of volunteers dedicated to the preservation and enhancement of our community\'s marine history. Since so many people volunteer their time and energy to help our organization function, this page is dedicated to our wonderful volunteers. Thank you all very much, this would not be possible without your time and donations.</p>\n        </div>\n    </section>','volunteers','Volunteers'),(6,'<section class=\"tour_block\">\r\n<h2 class=\"hide\">Tour Info Content</h2>\r\n<div class=\"wrapper\">\r\n<div class=\"tour_flex\">\r\n<div class=\"flex_item\">\r\n<h2 class=\"title_h2\">Tour Information</h2>\r\n<ul class=\"marked\">\r\n<li>The tour is much like a medium hike and requires a degree of agility and fitness. You can enjoy the tour without climbing the 106 steps in the Lighthouse tower. However, when you do reach the light room, you will always remember the view.</li>\r\n<li>For safety, children must be a minimum of 4 feet tall and must be accompanied by an Adult.</li>\r\n<li>Footwear suitable for hiking is mandatory. For safety reasons, Flip-Flops are not allowed.</li>\r\n</ul>\r\n</div>\r\n<div class=\"flex_item\">\r\n<h2 class=\"title_h2\">Also Note:</h2>\r\n<ul class=\"marked\">\r\n<li>The 2 hour tour must be pre-booked and prepaid.</li>\r\n<li>There are 9 seats on the boat. The cost is $30.00 per person (includes HST).</li>\r\n<li>For refunds, cancellations must be received 24 hours before the scheduled departure.</li>\r\n<li>Chantry Island is a Federal Migratory Bird Sanctuary and No Pets allowed on the island.</li>\r\n<li>Cancellation can be caused by weather conditions but light rain is fine.</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n<section class=\"tour_message\">\r\n<h2 class=\"hide\">Tour Info Message</h2>\r\n<div class=\"wrapper_small\">\r\n<p>Pre-book to avoid disappointment.</p>\r\n<p>Call: <a href=\"tel:5197975862\">519-797-5862</a></p>\r\n<p>Toll: <a href=\"tel:18667975862\">Free 1-866-797-5862</a></p>\r\n<h2 class=\"title_h2\">When and Where to Arrive</h2>\r\n<p>Come to the Chantry Island Tour Base and Gift Shop located at the south side of the Saugeen River at the harbour in Southampton (See Maps) and arrive 15 minutes ahead of your scheduled tour. Check in and receive your ticket. You will be directed to the dock for the Peerless II.</p>\r\n</div>\r\n</section>\r\n<section class=\"email_block\">\r\n<h2 class=\"hide\">Call to Action</h2>\r\n<div class=\"wrapper\">\r\n<h2 class=\"title_h2\">Contact Us Today</h2>\r\n<a class=\"btn_more\" href=\"/contact\">contact here</a></div>\r\n</section>','tourinfo','Tour Info'),(7,'<section class=\"sc_rates_message\">\n        <h2 class=\"hide\">Schedule & Rates Message</h2>\n        <div class=\"wrapper_small\">\n            <p>We offer tours throughout the summer season from late May to mid-September. During June and July, we offer the tour daily, check below for the exact schedule. Note, it does change on a yearly basis.</p>\n	</div>\n	<div class=\"warning_block\">\n		<div class=\"wrapper_small\">\n			<p>All tour <strong>bookings must be done</strong> by calling the Chantry Island Tour Base and Gift Shop phone number <strong>after May 1.</strong></p>\n		</div>	\n	</div>\n	<div class=\"wrapper_small\">\n	    <p>Call: <a href=\"tel:5197975862\">519-797-5862</a></p>\n	    <p>Toll: <a href=\"tel:18667975862\">Free 1-866-797-5862</a></p>\n	</div>\n</section>   \n <section class=\"sc_rates_block\">\n        <h2 class=\"hide\">Schedule & Rates Content</h2>\n        <div class=\"wrapper_small\">\n            <h2 class=\"title_h2\">Schedule</h2>\n            <table class=\"schedule_table\">\n                <tr>\n                    <th colspan=\"4\">********** 2017 **********</th>\n                </tr>\n                <tr>\n                    <th>Dates</th>\n                    <th colspan=\"3\">Times</th>\n                </tr>\n                <tr>\n                    <td>May 27,28</td>\n                    <td></td>\n                    <td>1:00</td>\n                    <td>3:00</td>\n                </tr>\n                <tr>\n                    <td>June 3, 4, 10, 11, 17, 18, 24, 25</td>\n                    <td></td>\n                    <td>1:00</td>\n                    <td>3:00</td>\n                </tr>\n                <tr>\n                    <td>July 1 - Sept. 4 (7 days a week)</td>\n                    <td></td>\n                    <td>1:00</td>\n                    <td>3:00</td>\n                </tr>\n                <tr>\n                    <td>July weekends Sat & Sun (Additional morning tour)</td>\n                    <td>9:30</td>\n                    <td></td>\n                    <td></td>\n                </tr>\n                <tr>\n                    <td>Aug 1 - Aug 31 (Additional morning tour)</td>\n                    <td>9:30</td>\n                    <td></td>\n                    <td></td>\n                </tr>\n                <tr>\n                    <td>Tour Base open May/June weekends</td>\n                    <td></td>\n                    <td colspan=\"2\">12:00 - 5:30</td>\n                </tr>\n                <tr>\n                    <td>Tour Base open July 1 - Sept. 4 every day</td>\n                    <td colspan=\"3\">9:00 - 5:30</td>\n                </tr>\n            </table>\n            <h2 class=\"title_h2\">Rates</h2>\n            <ul class=\"marked\">\n                <li>$30.00 per person (includes HST). Same price for children and adults.</li>\n                <li>Special group rates available.</li>\n                <li>MasterCard, Visa, Debit accepted</li>\n            </ul>\n        </div>\n    </section>\n\n    <section class=\"email_block\">\n        <h2 class=\"hide\">Call to Action</h2>\n        <div class=\"wrapper\">\n            <h2 class=\"title_h2\">Contact Us Today</h2>\n            <a class=\"btn_more\" href=\"/contact\">contact here</a>\n        </div>\n    </section>','schedulerates','Scheadule Rates'),(8,'    <section class=\"donate_block\">\n        <h2 class=\"hide\">Donation Content</h2>\n        <div class=\"wrapper_small\">\n            <h2 class=\"title_h2\">Donations</h2>\n            <p>We are currently engaged in Fund Raising to support our New Boat, Dock Improvements, and Marine Heritage Projects.</p>\n            <p>We will send a tax receipt for all donations $20 and more.</p>\n	</div>\n	    <section class=\"donate_message\">\n		<h2 class=\"hide\">Donation Message</h2>\n		<div class=\"wrapper_small\">\n		    <p>Since 1997 we have had a tremendous amount of support by donations. If you would like to be included please send a cheque or money order to:</p>\n		    <h3>Mailing Address</h3>\n		    <ul>\n		        <li>Marine Heritage Society</li>\n		        <li>86 Saugeen Street</li>\n		        <li>Southampton, Ontario</li>\n		        <li>Canada, N0H 2L0</li>\n		    </ul>\n		    <p>Please specify your Donation Preference:<br />\n		    <strong>Chantry Island and/or New Tour Boat</strong></p>\n		</div>\n	    </section>\n\n        <div class=\"wrapper_small\">\n            <h2 class=\"title_h2\">Donor Category List</h2>\n            <table class=\"donate_table\">\n                <tr>\n                    <th>Level</th>\n                    <th>Amount</th>\n                </tr>\n                <tr>\n                    <td>Shipmate</td>\n                    <td>$1.00 - 199.00</td>\n                </tr>\n                <tr>\n                    <td>Lifesaving Crew</td>\n                    <td>$200.00 - 999.00</td>\n                </tr>\n                <tr>\n                    <td>Assistant Lighthouse Crew</td>\n                    <td>$1,000.00 - 4,999.00</td>\n                </tr>\n                <tr>\n                    <td>Lighthouse Keepers</td>\n                    <td>$5,000.00 - 9,999.00</td>\n                </tr>\n                <tr>\n                    <td>Captain Lambert\'s Crew</td>\n                    <td>$10,000.00 - 25,000.00</td>\n                </tr>\n                <tr>\n                    <td>Queen Victoria\'s Crew</td>\n                    <td>$25,000.00 plus</td>\n                </tr>\n            </table>\n        </div>\n    </section>\n\n    <section class=\"email_block\">\n	<h2 class=\"hide\">Call to Action</h2>\n	<div class=\"wrapper\">\n	    <h2 class=\"title_h2\">Contact Us Today</h2>\n	    <a class=\"btn_more\" href=\"/contact\">contact here</a>\n	</div>\n    </section>','donation','Donation');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_uindex` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Admin'),(2,'User');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(30) NOT NULL,
  `mail` varchar(90) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `role` int(11) NOT NULL,
  `creation_datetime` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_login_uindex` (`login`),
  UNIQUE KEY `users_mail_uindex` (`mail`),
  KEY `users_roles_id_fk` (`role`),
  CONSTRAINT `users_roles_id_fk` FOREIGN KEY (`role`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (2,'ana','nasia.nana@gmail.com','$2y$10$qHYOfD9npLusbEklOxDhFOUeIH7aFtMx3lp5DUVDK5O8HEpC/aPf2',1,'2017-02-20 13:09:08');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-14 21:03:49
