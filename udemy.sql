/*
 Navicat Premium Data Transfer

 Source Server         : Duc Hao
 Source Server Type    : MySQL
 Source Server Version : 100414
 Source Host           : localhost:3306
 Source Schema         : udemy

 Target Server Type    : MySQL
 Target Server Version : 100414
 File Encoding         : 65001

 Date: 23/01/2021 14:55:26
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `cat_id` int NOT NULL AUTO_INCREMENT,
  `cat_name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `cat_desc_1` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `cat_desc_2` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `parent_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`cat_id`) USING BTREE,
  FULLTEXT INDEX `cat_name`(`cat_name`)
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (0, 'Data Science', NULL, NULL, 1);
INSERT INTO `category` VALUES (1, 'Web Development', NULL, NULL, 1);
INSERT INTO `category` VALUES (2, 'Mobile Development', NULL, NULL, 1);
INSERT INTO `category` VALUES (4, 'IT Certification', NULL, NULL, 2);
INSERT INTO `category` VALUES (5, 'Hardware ', NULL, NULL, 2);
INSERT INTO `category` VALUES (6, 'Network & Security ', NULL, NULL, 2);
INSERT INTO `category` VALUES (7, 'Web Design ', NULL, NULL, 3);
INSERT INTO `category` VALUES (8, 'Design Tools', NULL, NULL, 3);
INSERT INTO `category` VALUES (9, 'Instrument ', NULL, NULL, 4);
INSERT INTO `category` VALUES (10, 'Vocal', NULL, NULL, 4);

-- ----------------------------
-- Table structure for catparent
-- ----------------------------
DROP TABLE IF EXISTS `catparent`;
CREATE TABLE `catparent`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of catparent
-- ----------------------------
INSERT INTO `catparent` VALUES (1, 'Development');
INSERT INTO `catparent` VALUES (2, 'IT & Software');
INSERT INTO `catparent` VALUES (3, 'Design');
INSERT INTO `catparent` VALUES (4, 'Music');

-- ----------------------------
-- Table structure for content
-- ----------------------------
DROP TABLE IF EXISTS `content`;
CREATE TABLE `content`  (
  `course_id` int NOT NULL,
  `chapter` int NOT NULL,
  `chapter_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `session` int NOT NULL,
  `session_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `link` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`course_id`, `session`, `chapter`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of content
-- ----------------------------
INSERT INTO `content` VALUES (1, 1, NULL, 0, NULL, 'https://www.youtube.com/watch?v=nW2-sru9kms');
INSERT INTO `content` VALUES (1, 2, NULL, 0, NULL, NULL);
INSERT INTO `content` VALUES (1, 3, NULL, 0, NULL, NULL);
INSERT INTO `content` VALUES (1, 1, 'Course Orientation', 1, 'THE NEW VERSION OF THE COURSE IS HERE!', 'https://www.youtube.com/watch?v=v_fCZijSfhw');
INSERT INTO `content` VALUES (1, 2, 'HTML: The Essentials', 1, 'Paragraph Elements\r\nParagraph Elements\r\nParagraph Elements\r\nParagraph Elements', 'https://www.youtube.com/watch?v=nW2-sru9kms');
INSERT INTO `content` VALUES (1, 3, 'CSS: The very Basic', 1, 'What is CSS?', 'https://www.youtube.com/watch?v=nW2-sru9kms');
INSERT INTO `content` VALUES (2, 1, 'Getting Started', 1, 'Introduce', 'https://www.youtube.com/watch?v=v_fCZijSfhw');
INSERT INTO `content` VALUES (2, 2, 'The Basics', 1, 'Module', 'https://www.youtube.com/watch?v=nW2-sru9kms');
INSERT INTO `content` VALUES (2, 3, 'Debugging', 1, 'How to debug?', 'https://www.youtube.com/watch?v=nW2-sru9kms');
INSERT INTO `content` VALUES (2, 1, 'Getting Started', 2, 'What is typescipt?', 'https://www.youtube.com/watch?v=nW2-sru9kms');
INSERT INTO `content` VALUES (2, 2, 'The Basics', 2, 'Using custom component', 'https://www.youtube.com/watch?v=nW2-sru9kms');
INSERT INTO `content` VALUES (2, 3, 'Debugging', 2, 'Using angular to Dive into Angular Apps', 'https://www.youtube.com/watch?v=nW2-sru9kms');
INSERT INTO `content` VALUES (3, 1, 'Getting Started', 1, 'Introduce', 'https://www.youtube.com/watch?v=v_fCZijSfhw');
INSERT INTO `content` VALUES (3, 2, 'The Basics', 1, 'Module', 'https://www.youtube.com/watch?v=nW2-sru9kms');
INSERT INTO `content` VALUES (3, 3, 'Debugging', 1, 'How to debug?', 'https://www.youtube.com/watch?v=nW2-sru9kms');
INSERT INTO `content` VALUES (3, 1, 'Getting Started', 2, 'What is Python', 'https://www.youtube.com/watch?v=nW2-sru9kms');
INSERT INTO `content` VALUES (3, 2, 'The Basics', 2, 'Programing', 'https://www.youtube.com/watch?v=nW2-sru9kms');
INSERT INTO `content` VALUES (3, 4, 'Python for Data Analysis - Numpy', 2, 'Introduce Numpy', 'https://www.youtube.com/watch?v=nW2-sru9kms');
INSERT INTO `content` VALUES (4, 1, 'Getting Started', 1, 'Introduce', 'https://www.youtube.com/watch?v=v_fCZijSfhw');
INSERT INTO `content` VALUES (4, 2, 'The Basics', 1, 'Module', 'https://www.youtube.com/watch?v=nW2-sru9kms');
INSERT INTO `content` VALUES (4, 3, 'Debugging', 1, 'How to debug?', 'https://www.youtube.com/watch?v=nW2-sru9kms');
INSERT INTO `content` VALUES (4, 1, 'Getting Started', 2, 'What is Python', 'https://www.youtube.com/watch?v=nW2-sru9kms');
INSERT INTO `content` VALUES (4, 2, 'The Basics', 2, 'Programing', 'https://www.youtube.com/watch?v=nW2-sru9kms');
INSERT INTO `content` VALUES (4, 4, 'Python for Data Analysis - Numpy', 2, 'Introduce Numpy', 'https://www.youtube.com/watch?v=nW2-sru9kms');

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course`  (
  `course_id` int NOT NULL AUTO_INCREMENT,
  `course_name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `course_tiny_desc` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `course_full_desc` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `rating` float(2, 1) NULL DEFAULT NULL,
  `course_participant` int NULL DEFAULT NULL,
  `teacher_id` int NULL DEFAULT NULL,
  `last_update` date NULL DEFAULT NULL,
  `amount_chapter` int NULL DEFAULT NULL,
  `complete` bit(1) NULL DEFAULT NULL,
  `cat_id` int NULL DEFAULT NULL,
  `price` float(10, 2) NULL DEFAULT NULL,
  `learned` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `dateCreated` date NULL DEFAULT NULL,
  PRIMARY KEY (`course_id`) USING BTREE,
  FULLTEXT INDEX `course_name`(`course_name`)
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES (1, 'The Web Developer Bootcamp 2021', 'COMPLETELY REDONE - The only course you need to learn web development - HTML, CSS, JS, Node, and More!', '<h2 class=\"udlite-heading-xl styles--description__header--3SNsO\">Description</h2>\r\n<div class=\"show-more--container--1QLmn\">\r\n<div class=\"show-more--content--isg5c show-more--with-gradient--2abmN\">\r\n<div>\r\n<div data-purpose=\"safely-set-inner-html:description:description\">\r\n<p><strong>COMPLETELY REDONE ON&nbsp;OCTOBER 12th 2020, WITH OVER 500 BRAND NEW&nbsp;VIDEOS!</strong></p>\r\n<p>Hi! Welcome to the brand new version of The Web Developer Bootcamp, Udemy\'s most popular web development course.&nbsp; This course was just completely overhauled to prepare students for the 2021 job market, with over 60 hours of brand new content. This is the&nbsp;<strong>only course you need to learn web development.&nbsp;</strong>There are a lot of options for online developer training, but this course is without a doubt the most comprehensive and effective on the market.&nbsp; Here\'s why:</p>\r\n<ul>\r\n<li>\r\n<p>This is the only Udemy course taught by a professional bootcamp instructor with a track record of success.</p>\r\n</li>\r\n<li>\r\n<p><strong>94% of my in-person bootcamp students go on to get full-time developer jobs</strong>. Most of them are complete beginners when I start working with them.</p>\r\n</li>\r\n<li>\r\n<p>The previous 2 bootcamp programs that I taught cost&nbsp;<strong>$14,000 and $21,000</strong>.&nbsp; This course is just as comprehensive but with brand new content for a fraction of the price.</p>\r\n</li>\r\n<li>\r\n<p>Everything I cover is up-to-date and relevant to 2021\'s developer job market.<strong>&nbsp;This course does not cut any corners. I just spent 8 months redoing this behemoth of a course!</strong></p>\r\n</li>\r\n<li>\r\n<p>We build 13+ projects, including a&nbsp;<strong>gigantic production application&nbsp;</strong>called YelpCamp. No other course walks you through the creation of such a substantial application.</p>\r\n</li>\r\n<li>\r\n<p>The course is&nbsp;<strong>constantly updated</strong>&nbsp;with new content, projects, and modules.&nbsp; Think of it as a subscription to a never-ending supply of developer training.</p>\r\n</li>\r\n<li>\r\n<p>You get to meet my cats and chickens!</p>\r\n</li>\r\n</ul>\r\n<p>When you\'re learning to program you often have to sacrifice learning the exciting and current technologies in favor of the \"beginner friendly\" classes.&nbsp; With this course, you get the best of both worlds.&nbsp; This is a course designed for the complete beginner, yet it covers some of the most exciting and relevant topics in the industry.</p>\r\n<p>Throughout the brand new version of the course we cover tons of tools and technologies including:</p>\r\n<ul>\r\n<li>\r\n<p><strong>HTML5</strong></p>\r\n</li>\r\n<li>\r\n<p><strong>CSS3</strong></p>\r\n</li>\r\n<li>\r\n<p>Flexbox</p>\r\n</li>\r\n<li>\r\n<p>Responsive Design</p>\r\n</li>\r\n<li>\r\n<p><strong>JavaScript (all 2020 modern syntax, ES6, ES2018, etc.)</strong></p>\r\n</li>\r\n<li>\r\n<p><strong>Asynchronous JavaScript&nbsp;</strong>- Promises, async/await, etc.</p>\r\n</li>\r\n<li>\r\n<p><strong>AJAX&nbsp;</strong>and single page apps</p>\r\n</li>\r\n<li>\r\n<p>Bootstrap 4 and 5 (alpha)</p>\r\n</li>\r\n<li>\r\n<p>SemanticUI</p>\r\n</li>\r\n<li>\r\n<p>Bulma CSS Framework</p>\r\n</li>\r\n<li>\r\n<p><strong>DOM Manipulation</strong></p>\r\n</li>\r\n<li>\r\n<p>Unix(Command Line) Commands</p>\r\n</li>\r\n<li>\r\n<p><strong>NodeJS</strong></p>\r\n</li>\r\n<li>\r\n<p>NPM</p>\r\n</li>\r\n<li>\r\n<p><strong>ExpressJS</strong></p>\r\n</li>\r\n<li>\r\n<p>Templating</p>\r\n</li>\r\n<li>\r\n<p><strong>REST</strong></p>\r\n</li>\r\n<li>\r\n<p><strong>SQL</strong>&nbsp;vs.&nbsp;<strong>NoSQL</strong>&nbsp;databases</p>\r\n</li>\r\n<li>\r\n<p><strong>MongoDB</strong></p>\r\n</li>\r\n<li>\r\n<p>Database Associations</p>\r\n</li>\r\n<li>\r\n<p><strong>Schema Design</strong></p>\r\n</li>\r\n<li>\r\n<p>Mongoose</p>\r\n</li>\r\n<li>\r\n<p><strong>Authentication From Scratch</strong></p>\r\n</li>\r\n<li>\r\n<p>Cookies &amp; Sessions</p>\r\n</li>\r\n<li>\r\n<p>Authorization</p>\r\n</li>\r\n<li>\r\n<p><strong>Common Security Issues - SQL&nbsp;Injection, XSS, etc.</strong></p>\r\n</li>\r\n<li>\r\n<p>Developer Best Practices</p>\r\n</li>\r\n<li>\r\n<p><strong>Deploying Apps</strong></p>\r\n</li>\r\n<li>\r\n<p><strong>Cloud Databases</strong></p>\r\n</li>\r\n<li>\r\n<p><strong>Image Upload&nbsp;</strong>and Storage</p>\r\n</li>\r\n<li>\r\n<p><strong>Maps and Geocoding</strong></p>\r\n</li>\r\n</ul>\r\n<p>This course is also unique in the way that it is structured and presented. Many online courses are just a long series of \"watch as I code\" videos.&nbsp; This course is different. I\'ve incorporated everything I learned in my years of teaching to make this course not only more effective but more engaging. The course includes:</p>\r\n<ul>\r\n<li>\r\n<p>Lectures</p>\r\n</li>\r\n<li>\r\n<p>Code-Alongs</p>\r\n</li>\r\n<li>\r\n<p>Projects</p>\r\n</li>\r\n<li>\r\n<p>Exercises</p>\r\n</li>\r\n<li>\r\n<p>Research Assignments</p>\r\n</li>\r\n<li>\r\n<p>Slides</p>\r\n</li>\r\n<li>\r\n<p>Downloads</p>\r\n</li>\r\n<li>\r\n<p>Readings</p>\r\n</li>\r\n<li>\r\n<p>Too many pictures of my dog Rusty</p>\r\n</li>\r\n</ul>\r\n<p>If you have any questions, please don\'t hesitate to contact me.&nbsp; I got into this industry because I love working with people and helping students learn.&nbsp; Sign up today and see how fun, exciting, and rewarding web development can be!</p>\r\n</div>\r\n<div class=\"styles--audience--2pZ0S\" data-purpose=\"target-audience\">\r\n<h2 class=\"udlite-heading-xl styles--audience__title--1Sob_\">Who this course is for:</h2>\r\n<ul class=\"styles--audience__list--3NCqY\">\r\n<li>This course is for anyone who wants to learn about web development, regardless of previous experience</li>\r\n<li>It\'s perfect for complete beginners with zero experience</li>\r\n<li>It\'s also great for anyone who does have some experience in a few of the technologies(like HTML and CSS) but not all</li>\r\n<li>If you want to take ONE COURSE to learn everything you need to know about web development, take this course</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 4.7, NULL, 2, '2021-01-07', 4, b'0', 1, 129.99, NULL, '2021-01-12');
INSERT INTO `course` VALUES (2, 'Angular - The Complete Guide (2021 Edition)', 'Master Angular 10 (formerly \"Angular 2\") and build awesome, reactive web apps with the successor of Angular.js', '<div data-purpose=\"safely-set-inner-html:description:description\">\r\n<p><strong>This course starts from scratch, you neither need to know Angular 1 nor Angular 2!</strong></p>\r\n<p>Angular 11 simply is the latest version of Angular 2, you will learn this amazing framework from the ground up in this course!</p>\r\n<p><strong>Join the most comprehensive, popular and bestselling Angular course on Udemy and benefit not just from a proven course concept but from a huge community as well!&nbsp;</strong></p>\r\n<p>From&nbsp;<strong>Setup</strong>&nbsp;to&nbsp;<strong>Deployment</strong>, this course covers it all! You\'ll learn all about&nbsp;<strong>Components</strong>,&nbsp;<strong>Directives</strong>,&nbsp;<strong>Services</strong>,&nbsp;<strong>Forms</strong>,&nbsp;<strong>Http</strong>&nbsp;Access,&nbsp;<strong>Authentication, Optimizing an Angular&nbsp;App with Modules and Offline Compilation</strong>&nbsp;and&nbsp;<strong>much more&nbsp;</strong>- and in the end:&nbsp;You\'ll learn how to&nbsp;<strong>deploy</strong>&nbsp;<strong>an application</strong>!</p>\r\n<p><strong>But that\'s not all!</strong>&nbsp;This course will also show you how to use the&nbsp;<strong>Angular&nbsp;CLI</strong>&nbsp;and feature a&nbsp;<strong>complete project</strong>, which allows you to practice the things learned throughout the course!</p>\r\n<p>And if you do get stuck, you&nbsp;<strong>benefit from an extremely fast and friendly support</strong>&nbsp;- both via direct messaging or discussion. You have my word!&nbsp;;-)</p>\r\n<p>Angular is one of the most modern, performance-efficient and powerful frontend frameworks you can learn as of today. It allows you to build great web apps which offer awesome user experiences!<strong>&nbsp;Learn all the fundamentals you need to know to get started developing Angular&nbsp;applications right away.</strong></p>\r\n<p><strong>Hear what my students have to say</strong></p>\r\n<p><em>Absolutely fantastic tutorial series. I cannot thank you enough. The quality is first class and your presentational skills are second to none. Keep up this excellent work. You really rock! - Paul Whitehouse</em></p>\r\n<p><em>The instructor, Max, is very enthusiastic and engaging. He does a great job of explaining what he\'s doing and why rather than having students just mimic his coding. Max was also very responsive to questions. I would recommend this course and any others that he offers. Thanks, Max!<br /></em></p>\r\n<p><em>As a person new to both JavaScript and Angular 2 I found this course extremely helpful because Max does a great job of explaining all the important concepts behind the code. Max has a great teaching ability to focus on what his audience needs to understand.</em></p>\r\n<p><strong>This Course uses TypeScript</strong></p>\r\n<p>TypeScript is the main language used by the official Angular&nbsp;team and the language you\'ll mostly see in Angular tutorials. It\'s a superset to JavaScript and makes writing Angular&nbsp;apps really easy. Using it ensures, that you will have the best possible preparation for creating Angular&nbsp;apps. Check out the free videos for more information.</p>\r\n<p>TypeScript knowledge is, however, not required - basic JavaScript knowledge is enough.</p>\r\n<p><strong>Why Angular?</strong></p>\r\n<p>Angular&nbsp;is the next big deal. Being the successor of the overwhelmingly successful Angular.js framework it&rsquo;s bound to shape the future of frontend development in a similar way. The powerful features and capabilities of Angular&nbsp;allow you to create complex, customizable, modern, responsive and user friendly web applications.</p>\r\n<p>Angular 11&nbsp;simply is the latest version of the Angular framework and simply an update to Angular 2.</p>\r\n<p>Angular is faster than Angular 1 and offers a much more flexible and modular development approach. After taking this course you&rsquo;ll be able to fully take advantage of all those features and start developing awesome applications immediately.</p>\r\n<p>Due to the drastic differences between Angular 1 and Angular&nbsp;(=Angular 10)&nbsp;you don&rsquo;t need to know anything about Angular.js to be able to benefit from this course and build your futures projects with Angular.</p>\r\n<p><strong>Get a very deep understanding of how to create Angular&nbsp;applications</strong></p>\r\n<p>This course will teach you all the fundamentals about modules, directives, components, databinding, routing, HTTP access and much more! We will take a lot of deep dives and each section is backed up with a real project. All examples showcase the features Angular&nbsp;offers and how to apply them correctly.</p>\r\n<p>Specifically you will learn:</p>\r\n<ul>\r\n<li>\r\n<p>Which architecture Angular&nbsp;uses</p>\r\n</li>\r\n<li>\r\n<p>How to use TypeScript to write Angular&nbsp;applications</p>\r\n</li>\r\n<li>\r\n<p>All about directives and components, including the creation of custom directives/ components</p>\r\n</li>\r\n<li>\r\n<p>How databinding works</p>\r\n</li>\r\n<li>\r\n<p>All about routing and handling navigation</p>\r\n</li>\r\n<li>\r\n<p>What Pipes are and how to use them</p>\r\n</li>\r\n<li>\r\n<p>How to access the Web (e.g. RESTful servers)</p>\r\n</li>\r\n<li>\r\n<p>What dependency injection is and how to use it</p>\r\n</li>\r\n<li>\r\n<p>How to use Modules in Angular</p>\r\n</li>\r\n<li>\r\n<p>How to optimize your (bigger) Angular&nbsp;Application</p>\r\n</li>\r\n<li>\r\n<p>An introduction to NgRx and complex state management</p>\r\n</li>\r\n<li>\r\n<p>We will build a major project in this course so that you can practice all concepts</p>\r\n</li>\r\n<li>\r\n<p>and so much more!</p>\r\n</li>\r\n</ul>\r\n<p><strong>Pay once, benefit a lifetime!</strong></p>\r\n<p>Don&rsquo;t lose any time, gain an edge and start developing now!</p>\r\n</div>\r\n<div class=\"styles--audience--2pZ0S\" data-purpose=\"target-audience\">\r\n<h2 class=\"udlite-heading-xl styles--audience__title--1Sob_\">Who this course is for:</h2>\r\n<ul class=\"styles--audience__list--3NCqY\">\r\n<li>Newcomer as well as experienced frontend developers interested in learning a modern JavaScript framework</li>\r\n<li>This course is for everyone interested in learning a state-of-the-art frontend JavaScript framework</li>\r\n<li>Taking this course will enable you to be amongst the first to gain a very solid understanding of Angular</li>\r\n</ul>\r\n</div>', 4.6, NULL, 2, '2020-12-29', 3, b'0', 1, 129.99, NULL, '2021-01-12');
INSERT INTO `course` VALUES (3, 'Python for Data Science and Machine Learning Bootcamp', 'Learn how to use NumPy, Pandas, Seaborn , Matplotlib , Plotly , Scikit-Learn , Machine Learning, Tensorflow , and more!', '<div data-purpose=\"safely-set-inner-html:description:description\">\r\n<div data-purpose=\"safely-set-inner-html:description:description\">\r\n<p>Are you ready to start your path to becoming a Data Scientist!&nbsp;</p>\r\n<p>This comprehensive course will be your guide to learning how to use the power of Python to analyze data, create beautiful visualizations, and use powerful machine learning algorithms!</p>\r\n<p>Data Scientist has been ranked the number one job on Glassdoor and the average salary of a data scientist is over $120,000 in the United States according to Indeed! Data Science is a rewarding career that allows you to solve some of the world\'s most interesting problems!</p>\r\n<p>This course is designed for both beginners with some programming experience or experienced developers looking to make the jump to Data Science!</p>\r\n<p>This comprehensive course is comparable to other Data Science bootcamps that usually cost thousands of dollars, but now you can learn all that information at a fraction of the cost! With&nbsp;<strong>over 100 HD video lectures</strong>&nbsp;and&nbsp;<strong>detailed code notebooks for every lecture&nbsp;</strong>this is one of&nbsp;the most comprehensive course for data science and machine learning on Udemy!</p>\r\n<p>We\'ll teach you how to program with Python, how to create amazing data visualizations, and how to use Machine Learning with Python! Here a just a few of the topics we will be learning:</p>\r\n<ul>\r\n<li>Programming with Python</li>\r\n<li>NumPy with Python</li>\r\n<li>Using pandas&nbsp;Data Frames to solve complex tasks</li>\r\n<li>Use pandas&nbsp;to handle Excel Files</li>\r\n<li>Web scraping with python</li>\r\n<li>Connect Python&nbsp;to SQL</li>\r\n<li>Use matplotlib and seaborn for data visualizations</li>\r\n<li>Use plotly for interactive visualizations</li>\r\n<li>Machine Learning with SciKit Learn, including:</li>\r\n<li>Linear Regression</li>\r\n<li>K Nearest Neighbors</li>\r\n<li>K Means Clustering</li>\r\n<li>Decision Trees</li>\r\n<li>Random Forests</li>\r\n<li>Natural&nbsp;Language Processing</li>\r\n<li>Neural Nets and Deep Learning</li>\r\n<li>Support Vector&nbsp;Machines</li>\r\n<li>and much, much more!</li>\r\n</ul>\r\n<p>Enroll in the course and become a data scientist today!</p>\r\n<p>&nbsp;</p>\r\n</div>\r\n<div class=\"styles--audience--2pZ0S\" data-purpose=\"target-audience\">\r\n<h2 class=\"udlite-heading-xl styles--audience__title--1Sob_\">Who this course is for:</h2>\r\n<ul class=\"styles--audience__list--3NCqY\">\r\n<li>This course is meant for people with at least some programming experience</li>\r\n</ul>\r\n</div>\r\n</div>', 4.6, NULL, 3, '2020-12-28', 4, b'0', 0, 128.88, NULL, '2021-01-06');
INSERT INTO `course` VALUES (4, 'AWS Certified Developer - Associate 2020', 'Do you want AWS certification? Do you want to be an AWS Certified Developer Associate? This AWS online course is for you', '<div data-purpose=\"safely-set-inner-html:description:description\">\r\n<div data-purpose=\"safely-set-inner-html:description:description\">\r\n<p>Amazon Web Services - (AWS) Certification is fast becoming the must have certificate for any IT professional working with AWS. This course is designed to help you pass the&nbsp;<strong>AWS Certified Developer Associate (CDA) 2020&nbsp;Exam</strong>. Even if you have never logged in to the AWS platform before, by the end of our AWS training videos you will be able to take the CDA exam. No specific programming knowledge is needed (though knowing a language would be advantageous) and no prior AWS experience required. With AWS certification under your belt (and optionally after completing our AWS Certified Solutions Architect course - also available on Udemy), you will be in high demand by many employers and will command a superior salary.&nbsp;&nbsp;<strong>We have taught AWS to over half a million students on Udemy in the past 5 years.</strong></p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Please note,&nbsp;<strong>this is not a course to teach you how to code</strong>, this course is specifically designed on helping you to&nbsp;<strong>pass the &nbsp;AWS Certified Developer 2020&nbsp;exam</strong>. All required code to do the exercises in this course is provided when you join the course (via Github).</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; AWS are constantly evolving their platform, as 2020progresses we will continuously update this course with new content so you will never have to worry about missing out or failing the AWS certification test because of new content.</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Most lectures are 5 - 15 minutes long, with almost no lecture being over 20 minutes in length. I am an AWS Certified Solutions Architect and Certified Developer, living in London with over 17 years experience in IT. I have experience in developing in PHP, Python and Xcode. So join me in becoming A Cloud Guru today and get your AWS Certified Developer Associate 2019&nbsp;qualification by completing our AWS online course today!&nbsp;</p>\r\n</div>\r\n</div>', 4.4, NULL, 3, '2021-01-13', 5, b'0', 4, 129.99, NULL, '2021-01-05');

-- ----------------------------
-- Table structure for feedback
-- ----------------------------
DROP TABLE IF EXISTS `feedback`;
CREATE TABLE `feedback`  (
  `course_id` int NOT NULL,
  `user_id` int NULL DEFAULT NULL,
  `comment` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `rate` int NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of feedback
-- ----------------------------
INSERT INTO `feedback` VALUES (12, 3, 'amazing good job', 3);
INSERT INTO `feedback` VALUES (12, 1, 'good job', 5);
INSERT INTO `feedback` VALUES (6, 1, 'supper vjp pro', 5);
INSERT INTO `feedback` VALUES (9, 1, 'pro', 4);
INSERT INTO `feedback` VALUES (15, 1, 'i don\'t understand', 1);
INSERT INTO `feedback` VALUES (15, 1, 'bad teacher', NULL);

-- ----------------------------
-- Table structure for registercourse
-- ----------------------------
DROP TABLE IF EXISTS `registercourse`;
CREATE TABLE `registercourse`  (
  `course_id` int NOT NULL,
  `student_id` int NOT NULL,
  PRIMARY KEY (`course_id`, `student_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of registercourse
-- ----------------------------
INSERT INTO `registercourse` VALUES (6, 1);
INSERT INTO `registercourse` VALUES (9, 1);
INSERT INTO `registercourse` VALUES (12, 1);
INSERT INTO `registercourse` VALUES (12, 3);
INSERT INTO `registercourse` VALUES (15, 1);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `dob` date NOT NULL,
  `permission` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (5, 'phucphuc', '$2a$12$4RmFiF2uMo2TypOhAYl0l.whAy8VCITm9pgME49lWEccAoH4c0Rcu', 'phuc', 'phuc@gmail.com', '2000-01-22', 0);
INSERT INTO `users` VALUES (2, 'huyhuy', '$2a$12$QSTzuLLzLtF9e4uAM2SmvepTUEt3J8xEUwG2o2O6K2mrO8vhKZWKi', 'huy ong trum', 'huy@gmail.com', '2021-03-12', 1);
INSERT INTO `users` VALUES (4, 'longlong', '$2a$12$4Nu4AE3LahVfJkvDlMAKD.d0JxE7PWVMtK2vQz/wLgqrlLnpWBNEO', 'pe Long', 'pelongpebong@gmail.com', '2021-02-28', 0);
INSERT INTO `users` VALUES (3, 'haohao', '$2a$12$oXsOhcH9mDqyfDmO..J/lOhGN1OIN03yqQbaTinBlMmvTSAIZ.sLC', 'duc hao', 'hao@gmail.com', '2000-01-27', 1);
INSERT INTO `users` VALUES (1, 'admin', '$2a$12$uJC.Doa8AG/l8l5pENM.b.MhmCAtXD5kY2JWxfEnBTPkKuUyrD6iu', 'em la admin', 'admin@gmail.com', '2000-01-11', 2);

-- ----------------------------
-- Table structure for wishlist
-- ----------------------------
DROP TABLE IF EXISTS `wishlist`;
CREATE TABLE `wishlist`  (
  `course_id` int NOT NULL,
  `student_id` int NOT NULL,
  PRIMARY KEY (`course_id`, `student_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of wishlist
-- ----------------------------
INSERT INTO `wishlist` VALUES (0, 1);
INSERT INTO `wishlist` VALUES (0, 2);
INSERT INTO `wishlist` VALUES (6, 1);
INSERT INTO `wishlist` VALUES (9, 1);
INSERT INTO `wishlist` VALUES (10, 1);
INSERT INTO `wishlist` VALUES (12, 1);

SET FOREIGN_KEY_CHECKS = 1;
