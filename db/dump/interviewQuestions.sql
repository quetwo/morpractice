-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: 3.135.202.150    Database: mor-practice
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `interviewQuestion`
--

DROP TABLE IF EXISTS `interviewQuestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `interviewQuestion` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `question` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interviewQuestion`
--

LOCK TABLES `interviewQuestion` WRITE;
/*!40000 ALTER TABLE `interviewQuestion` DISABLE KEYS */;
INSERT INTO `interviewQuestion` (`id`, `title`, `question`) VALUES (1,'Intro Question','Tell us about yourself.'),(2,'Gaining Cooperation from others','Gaining the cooperation of others can be difficult. Give a specific example of when you had to do that and what challenges you faced. What was the outcome? What was the long-term impact on your ability to work with this person?'),(3,'Working with others','Please give me your best example of working cooperatively as a team member to accomplish an important goal. What was the goal or objective? What was your role in achieving this objective? To what extent did you interact with others on this project?'),(4,'Feedback from others','Tell me about a time when your coworkers gave you feedback about your actions. How did you respond? What changes did you make?'),(5,'Project Teamwork','Describe a project you were responsible for that required a lot of interaction with people over a long period of time.'),(6,'Reconizing others','How have you recognized and rewarded a team player in the past? What was the situation?'),(7,'Working with others outside of work','Tell me about a course, work experience, or extracurricular activity where you had to work closely with others. How did it go? How did you overcome any difficulties?'),(8,'Problem in own life','Describe a problem you had in your life when someone\'s help was very important to you.'),(9,'Addressing an angry customer','Give me a specific example of a time when you had to address an angry customer. What was the problem and what was the outcome? How would you assess your role in defusing the situation?'),(10,'Initiating Change based on feedback','Give me an example of when you initiated a change in process or operations in response to customer feedback.'),(11,'Marketing Change','Tell me about a marketing promotion/initiative or information dissemination you developed. How did it meet the customer\'s need?'),(12,'Suggestion made to improve process','Tell me about a suggestion you made to improve the way job processes or operations worked. What was the result?'),(13,'Workplace Improvement','Tell me about one of your workplace improvements that another department now uses.'),(14,'Initiated Change','Give me an example when you initiated a change in process or operations.'),(15,'Problems Identified','In your last job, what problems did you identify that had previously been overlooked? Were changes made? Who supported the changes as a result of your ideas?'),(16,'Implemented in the past','Describe something you have implemented at work. What were the steps you used to implement this?'),(17,'Creative presentation','Describe the most significant or creative presentation or idea that you developed or implemented.'),(18,'Creative solution in the past','Describe a time when you came up with a creative solution or idea to a problem in your past work.'),(19,'Created a new process','Tell me about a time when you created a new process or program that was considered risky. What was the situation and what did you do?'),(20,'Creative in completing responsibiltiies','Can you give me an example of how you have been creative in completing your responsibilities?'),(21,'Innovation at work','Can you think of a situation where innovation was required at work? What did you do in this situation?');
/*!40000 ALTER TABLE `interviewQuestion` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-10 23:29:32
