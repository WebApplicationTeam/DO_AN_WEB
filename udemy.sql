/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 100417
 Source Host           : localhost:3306
 Source Schema         : udemy

 Target Server Type    : MySQL
 Target Server Version : 100417
 File Encoding         : 65001

 Date: 20/01/2021 08:39:34
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `cat_id` int NOT NULL,
  `cat_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cat_desc_1` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `cat_desc_2` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`cat_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (1, 'Web Development', 'Built websites and applications with Web Development', 'The world of web development is as wide as the internet itself. Much of our social and vocational lives play out on the internet, which prompts new industries aimed at creating, managing, and debugging the websites and applications that we increasingly rely on.');
INSERT INTO `category` VALUES (2, 'Mobile App Development', 'mobile app is here', 'yeah yeah mobile app hihihi');

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
INSERT INTO `content` VALUES (0, 0, NULL, 0, NULL, NULL);
INSERT INTO `content` VALUES (1, 1, 'Introduce', 1, 'Introduce', NULL);
INSERT INTO `content` VALUES (1, 2, 'What is Front-End development', 1, 'What is Front-End development', NULL);
INSERT INTO `content` VALUES (1, 1, 'Introduce', 2, 'How does the website work?', NULL);
INSERT INTO `content` VALUES (2, 1, 'Foucus on variables', 1, 'the different of value type', NULL);
INSERT INTO `content` VALUES (2, 1, 'Foucus on variables', 2, 'different', NULL);
INSERT INTO `content` VALUES (2, 1, 'Foucus on variables', 3, 'hoisting', NULL);
INSERT INTO `content` VALUES (3, 1, NULL, 0, '1', NULL);
INSERT INTO `content` VALUES (3, 1, 'Introduce', 2, 'What if React', NULL);
INSERT INTO `content` VALUES (3, 1, 'Introduce', 3, 'Why learn and user react', NULL);
INSERT INTO `content` VALUES (3, 1, 'Introduce', 4, 'Course Map', NULL);
INSERT INTO `content` VALUES (4, 1, 'Introduce', 1, 'Introduce', NULL);
INSERT INTO `content` VALUES (4, 2, 'Preamble', 1, 'Foreword', NULL);
INSERT INTO `content` VALUES (5, 1, 'Introduce', 1, 'Introduce', NULL);
INSERT INTO `content` VALUES (5, 1, 'Introduce', 2, 'Tool', NULL);
INSERT INTO `content` VALUES (6, 1, 'Discovery', 1, 'What will you learn', NULL);
INSERT INTO `content` VALUES (6, 1, 'Discovery', 2, 'Which project', NULL);
INSERT INTO `content` VALUES (6, 1, 'Discovery', 3, 'What is HTML', NULL);
INSERT INTO `content` VALUES (7, 1, 'Introduce', 1, 'Introduce', NULL);
INSERT INTO `content` VALUES (7, 2, 'Developmant Implementation', 1, 'Introduce', NULL);
INSERT INTO `content` VALUES (7, 1, 'Introduce', 2, 'Presentation', NULL);
INSERT INTO `content` VALUES (7, 2, 'Developmant Implementation', 2, 'Install NodeJS', NULL);
INSERT INTO `content` VALUES (8, 1, 'Introduce', 1, 'Introduce', NULL);
INSERT INTO `content` VALUES (8, 2, 'Learn Programing with C#', 1, 'Learn Programing with C#-Introduce', NULL);
INSERT INTO `content` VALUES (8, 1, 'Introduce', 2, 'Who am I?', NULL);
INSERT INTO `content` VALUES (8, 2, 'Learn Programing with C#', 2, 'Development concepts', NULL);
INSERT INTO `content` VALUES (9, 1, 'Introduce', 1, 'Introduce', NULL);
INSERT INTO `content` VALUES (10, 1, 'Introduce', 1, 'Introduce', NULL);
INSERT INTO `content` VALUES (11, 1, 'Introduce', 1, 'Introduce', NULL);
INSERT INTO `content` VALUES (12, 1, 'Introduce', 1, 'Introduce', NULL);
INSERT INTO `content` VALUES (13, 1, 'Introduce', 1, 'Introduce', NULL);
INSERT INTO `content` VALUES (14, 1, 'Introduce', 1, 'Introduce', NULL);
INSERT INTO `content` VALUES (15, 1, 'Introduce', 1, 'Introduce', NULL);

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course`  (
  `course_id` int NOT NULL,
  `course_name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `course_tiny_desc` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `course_full_desc` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `rating` float(2, 1) NULL DEFAULT NULL,
  `course_participant` int NULL DEFAULT NULL,
  `teacher_id` int NULL DEFAULT NULL,
  `last_update` datetime NULL DEFAULT NULL,
  `amount_chapter` int NULL DEFAULT NULL,
  `complete` bit(1) NULL DEFAULT NULL,
  `cat_id` int NULL DEFAULT NULL,
  `course_pic` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `price` float(10, 2) NULL DEFAULT NULL,
  `learned` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`course_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES (1, 'Complete Web Developer Training', 'Web Development from A to Z. Learn HTML, CSS, Javascript, jQuery, Bootstrap, PHP, MySQL, Wordpress ...', 'Web Development from A to Z. Learn HTML, CSS, Javascript, jQuery, Bootstrap, PHP, MySQL, Wordpress ...\r\n\r\nWant to learn web development?\r\nAre you a beginner? Or do you just want to improve your skills?\r\nGood news, you\'ve come to the right place!', 4.5, 0, 2, '2020-01-18 00:00:00', 10, b'0', 1, NULL, 129.99, NULL);
INSERT INTO `course` VALUES (2, 'REALLY Understand Javascript', 'Become a monster in Javascript and master the subjects that are scary: hoisting, scopes, closures, prototypes, etc ...', 'This course is special: just the title already:  VRAIMENT Bien Understand Javascript  !!! Isn\'t that a bit exaggerated? Well no ... Know that this is the most complicated course I have done so far.\r\n\r\nWhy complicated?\r\n\r\nBecause we are going to go into the details of the details. You will actually understand how JavaScript works in depth. Besides, to get started in this course,  you must already know a minimum of JavaScript basics .\r\n\r\nThe goal is to understand all the subtleties of this language. In the end, you will be one of the few people who can claim to have mastered JavaScript. You can tear up your interviews!  \r\n\r\nAnd yes ! You will be able to answer all those little tests that recruiters love to give. But above all, you will finally understand behind the scenes and it will make you the best developers.\r\n\r\n \r\n\r\nBut then be careful! Becoming a JavaScript monster  has a price! You will have to hang in there because I warn you right away: you will sweat from the brain… that\'s why I put on a cap. In short, in this course, you will have to give yourself 100%.\r\n\r\n \r\n\r\nNow know that I will do EVERYTHING to make JavaScript secrets as easy as possible for you. We are going to go through everything under the microscope properly.\r\n\r\nAnd to check that everything is well integrated in your heads,  I will give you a quiz at the end of each game. So it\'s not a quiz as usual!\r\n\r\nSince we are talking about complex things, I wanted to give you  a detailed video correction for each of the questions in the quiz .\r\n\r\nThat way I\'m sure you won\'t miss it.\r\n\r\nNothing is left to chance to help you understand,  we will also apply your new knowledge directly to the Serpent Project: the Snake . That is to say, we will improve this project with everything we have learned.\r\n\r\n \r\n\r\nSo here\'s what we\'ll learn in this course!\r\n\r\n \r\n\r\nA FOCUS ON VARIABLES\r\n\r\nI\'ll start by telling you about the  different types of variables . What are the differences between  primitive types  and  objects  ? Also what is the difference between  null ,  undefined  and is not defined error .\r\n\r\nAnd if not you know what  hoisting is  ? Well, I\'ll explain it to you.\r\n\r\nAnd I\'ll end this part by showing you how the new ES6 keywords:  let  and  const  will be a game-changer for our variables.\r\n\r\n \r\n\r\nFOCUS ON THE SCOPES\r\n\r\nSo the scopes are hot and we\'re going to take it all apart. I will tell you  about the execution contexts , the object of variables  and the  chain of scopes . And there again, we will see that with ES6, we can now use a new kind of scope:  the block scope .\r\n\r\n \r\n\r\nFOCUS ON FUNCTIONS\r\n\r\nIn JavaScript,  functions are first class objects . And I will explain to you one of the subjects that most scares beginners:  Les Closures .\r\n\r\nI will also show you what  IIFEs are  and how they can be useful to us to  protect our variables . And if not there is another topic that causes a lot of problems for some developers, and that is the this keyword  .\r\n\r\nSo no fear, I\'ll explain everything to you and I\'ll show you how to handle it with the  Bind ,  Call  and  Apply functions .\r\n\r\nAnd we will end with the  arrow functions : these are functions of a new kind that can be used from ES6.\r\n\r\n \r\n\r\nCLOSE UP ON OBJECTS\r\n\r\nMan descends from the monkey and almost everything descends from the object. It does not mean anything ?\r\n\r\nWait a bit this sentence will make a lot more sense when you get to this part I promise you! I will explain in detail what  prototypes are  and we will examine the  chain of prototypes . We will finish this part using the  classes of ES6 .\r\n\r\n\r\n\r\nHere I think you understood it, we have a very busy schedule so let\'s not waste time. Let\'s go !!!', 4.1, 0, 2, '2020-01-15 00:00:00', 10, b'0', 1, NULL, 139.50, NULL);
INSERT INTO `course` VALUES (3, 'React 16+ The Complete Guide (+ Redux, React Router & Firebase)', 'React in depth from scratch. Learn Reactjs, Redux, React Router 4, Authentication, BDD and more!', '*** The best React training in French! ***\r\n\r\nLast update for Redux on July 27, 2020.\r\n\r\nLatest update for React v16.6.0 and React Router v4.3.1!\r\n\r\n...\r\n\r\nAre you looking for the best way to build modern apps or websites?\r\n\r\nHave you already tried lots of React courses but they are neither very clear nor in French?\r\n\r\nDo you want to give your JavaScript learning a boost?\r\n\r\nThis training is exactly what you need!\r\n\r\n...', 4.6, 0, 2, '2020-01-19 00:00:00', 15, b'0', 1, NULL, 145.99, NULL);
INSERT INTO `course` VALUES (4, 'Angular 9: Developing your first app (2021)', 'Easily develop an Angular application of Pokémon from an empty folder, with Angular and TypeScript.', 'So like that, you want to train yourself in web application development with the latest version of Angular? \r\n\r\nDo you also dream of building dynamic websites , which react immediately to the slightest interactions of your users, with optimal performance ? Hey, that\'s good, you\'ve come to the right place!\r\n\r\nThese are exciting times for web development with JavaScript. There are a multitude of new Frameworks available, and yet another multitude that is popping up day after day. We are going to see why you should take the bet to get started with Angular , and what you will be able to do with this little gem, straight out of the minds of Google engineers .\r\n\r\nThis new version of Angular is a complete rewrite of the first version of Angular, named AngularJS. So this is good news for those who do not know this version of Angular, or who have just heard of it: no need to know AngularJS, you can start learning Angular right now! \r\n\r\nTo be clear, Angular refers to the \"new\" Angular (version 2 and above), and AngularJS refers to version 1 of the Framework. These are the names that I will use in the course.\r\n\r\nIf you get stuck, be aware that there is a full code fix at the end of each chapter , and that I will respond quickly (in a very friendly way) to all of your messages. I\'m not forgetting anyone, you have my word! ; D\r\n\r\nAngular is one of the most modern, successful, and powerful frontend frameworks you can learn to date . It allows you to create powerful web applications that deliver great user experiences! All of the fundamentals you need to start developing Angular applications are covered in this course.\r\n\r\nI will do your Angular watch for you . As soon as there is an interesting novelty on Angular, I will let you know via Udemy announcements. No need to spend hours on the Internet searching for the latest news on your own! : D\r\n\r\nBuy this course NOW and learn Angular when you want next. Access to the course is guaranteed for life, and the content will always be up to date!', 4.0, 0, 2, '2020-09-12 00:00:00', 2, b'1', 1, NULL, 150.00, NULL);
INSERT INTO `course` VALUES (5, 'JavaScript: the ULTIMATE training', 'Master Javascript with the most comprehensive course on the internet! Projects, exercises, quizzes, ES8 and many more!', 'JavaScript is truly THE programming language you need to know if you want to get started in web development. And that\'s good: with this course, you are sure not to miss an important notion, because it is complete ! In addition to that, this course will allow you to carry out 8 projects , dozens of exercises and around fifty challenges during the video!\r\n\r\nYou are on the most comprehensive, educational, and clearest course on JavaScript, and what\'s more: it\'s continuously updated ! The plan of this course was produced after weeks of work, in accordance with what is best in terms of pedagogy to learn and especially retain each concept evoked.\r\n\r\nThis is not a course in which you are thrown into the jungle: you will be continuously monitored with the possibility of asking questions at any time to get a precise answer from our team.\r\n\r\nWhether you are a beginner or already well advanced with JavaScript, this course will teach you new things and new ways of programming, as it is comprehensive.\r\n\r\nIf you are motivated, interested in JavaScript, and looking for a course in which you won\'t be disappointed: stop by. You are at the right place!\r\n\r\nI will be happy to help you achieve your goals.', 5.0, 0, 2, '2020-01-23 00:00:00', 2, b'1', 1, NULL, 65.99, NULL);
INSERT INTO `course` VALUES (6, 'HTML5 and CSS3: the ULTIMATE training', 'Create modern websites adapted to mobiles with the latest flexbox technology, become a web developer!', '*** The # 1 HTML5 and CSS3 course in the official Udemy ranking! ***\r\n\r\nWant to create your first site? Sell ​​it to customers? Improve your mobile development? Or just create websites that have a professional look? You are in the right place !\r\n\r\nMy objective ? Make this training THE ULTIMATE training  on HTML5 and CSS3.\r\n\r\n\r\n\r\nWhy did I have to take this course and not another?\r\n\r\nThe answer is simple: it is the most complete that you can find on the internet, and it is certainly with me that you will have the most help, because I will answer your questions during the day . This training is evolving: I add new content every month , such as big projects, new even deeper notions and many other things that are necessary to make this training ULTIMATE.', 4.9, 0, 2, '2019-12-21 00:00:00', 16, b'0', 1, NULL, 99.99, NULL);
INSERT INTO `course` VALUES (7, 'Learn Node.js & Create a REST API from A to Z!', 'Learn how to develop with Node js, and how to create complete APIs using Express, MySQL, etc ...In this course, learn how to build apps with Node.js!\r\n\r\nThis course allows you to learn all the basics of Node.js, understanding the technology and operation , analyzing the module system , learning many NPM- related commands  , and even taking an interest in ES6 / ES7 !\r\n\r\nDiscover how REST APIs work and how powerful they are!\r\n\r\nREST APIs are the future of websites , more precisely \" web apps \" which are essential for this type of client-server relationship. Many large companies such as PayPal, Microsoft, or LindekIn use the REST API, more: they are developed with Node.js, which creates an API complete, scalable, simple and it quickly !\r\nThis type of organization is made for the web, because it uses the methods of the HTTP protocol (GET, POST, PUT, DELETE, etc ...), if you don\'t understand all of this, don\'t worry, I explain this quickly in the course, in order to develop as many APIs as possible with Node.\r\n\r\n\r\n\r\nThis training will allow you to develop with Node.js and to know how to create / use a REST API.', 'In this course, learn how to build apps with Node.js!\r\n\r\nThis course allows you to learn all the basics of Node.js, understanding the technology and operation , analyzing the module system , learning many NPM- related commands  , and even taking an interest in ES6 / ES7 !\r\n\r\nDiscover how REST APIs work and how powerful they are!\r\n\r\nREST APIs are the future of websites , more precisely \" web apps \" which are essential for this type of client-server relationship. Many large companies such as PayPal, Microsoft, or LindekIn use the REST API, more: they are developed with Node.js, which creates an API complete, scalable, simple and it quickly !\r\nThis type of organization is made for the web, because it uses the methods of the HTTP protocol (GET, POST, PUT, DELETE, etc ...), if you don\'t understand all of this, don\'t worry, I explain this quickly in the course, in order to develop as many APIs as possible with Node.\r\n\r\n\r\n\r\nThis training will allow you to develop with Node.js and to know how to create / use a REST API.', 3.0, 0, 5, '2018-03-17 00:00:00', 12, b'0', 1, NULL, 50.00, NULL);
INSERT INTO `course` VALUES (8, 'Mobile Application Developer | Full training 2021', 'Learn programming from scratch and build iOS Android mobile apps with Xamarin Forms and C #Becoming a mobile application developer becomes accessible to everyone thanks to this comprehensive training! (Already more than 7000 participants inside the course)\r\n\r\nNo prior programming knowledge is required to follow this training: Whether you are a student, retraining, developer or working in another profession (teacher, doctor ...), you can start your apprenticeship now!\r\n\r\nYou just need a PC or a MAC and an internet connection.\r\n\r\n\r\n\r\nThis training allows you to achieve the following objectives in a simple and efficient way:\r\n\r\n- Know how to create your own iOS and Android mobile applications from A to Z (and publish them in the stores)\r\n- Know how to create all types of applications while sharing the code between iOS and Android (huge time saving)\r\n- Know how to develop in language C # (one of the best existing programming languages, which will allow you to move on to other areas afterwards: Unity game development, server developments, etc.)\r\n\r\n\r\n\r\nThese high value-added skills will allow you to qualify for a job or create your own product.\r\n\r\nThere is currently a significant need for mobile application developers. Take this opportunity to learn the skills most in demand in the job market, and earn money!', 'Becoming a mobile application developer becomes accessible to everyone thanks to this comprehensive training! (Already more than 7000 participants inside the course)\r\n\r\nNo prior programming knowledge is required to follow this training: Whether you are a student, retraining, developer or working in another profession (teacher, doctor ...), you can start your apprenticeship now!\r\n\r\nYou just need a PC or a MAC and an internet connection.\r\n\r\n\r\n\r\nThis training allows you to achieve the following objectives in a simple and efficient way:\r\n\r\n- Know how to create your own iOS and Android mobile applications from A to Z (and publish them in the stores)\r\n- Know how to create all types of applications while sharing the code between iOS and Android (huge time saving)\r\n- Know how to develop in language C # (one of the best existing programming languages, which will allow you to move on to other areas afterwards: Unity game development, server developments, etc.)\r\n\r\n\r\n\r\nThese high value-added skills will allow you to qualify for a job or create your own product.\r\n\r\nThere is currently a significant need for mobile application developers. Take this opportunity to learn the skills most in demand in the job market, and earn money!', 3.0, 0, 5, '2017-01-23 00:00:00', 2, b'1', 2, NULL, 100.00, NULL);
INSERT INTO `course` VALUES (9, 'Android & Kotlin | Complete training', 'Learn Android development with the new Kotlin programming language', 'Welcome to the full Android & Kotlin training. In this course, you will learn how to use the Kotlin language to develop your Android applications.\r\n\r\nWhether you are a complete beginner in programming or you are already an intermediate, this course will teach you how to make mobile applications.\r\n\r\nWhy make Android applications in Kotlin?\r\n\r\nGoogle announced official support for Kotlin on Android in 2017. Java is no longer the only language on this platform, you can now write your applications using Kotlin 100% !\r\n\r\nAt the end of this course, you will be able to write complex Android applications , with phone / tablet view support, database storage of your information and HTTP requests to make your application connected.\r\n\r\nIf you fancy becoming a mobile developer, Android is the most common OS on users\' phones today. It represents 85% of the entire market. If you have an idea for an app in mind, there is a 9 out of 10 chance that your users are on Android .\r\n\r\n\r\n\r\nCourse structure\r\n\r\nI think in order to learn and master a new skill, you have to practice it. This is why we are going to realize together 2 projects of complete applications (Notes and Weather) with all the theoretical explanations that go around.', 2.9, 0, 5, '2018-02-18 00:00:00', 16, b'0', 2, NULL, 149.99, NULL);
INSERT INTO `course` VALUES (10, 'Flutter & Dart: Create apps for iOS and Android', 'Learn how to develop apps for iOS 12 and Android P', 'Do you know Flutter?\r\nThis is the SDK (or Development Kit in French) from Google. It allows you to create apps for both Android and iOS.\r\n\r\nDo you know Dart?\r\nIt is an object oriented programming language developed by Google. It is easy to understand and handle and is similar to languages ​​such as Java or Swift for example.\r\n\r\nIn this course we will learn together how to develop applications for both iOS and Android with Flutter and Dart. We will start from the basics to create more and more advanced applications over the course of the course.\r\n\r\nTo put your new skills into practice, you will have challenges to do throughout the course, such as creating a calorie calculator application.', 1.0, 0, 5, '2020-06-19 00:00:00', 7, b'0', 2, NULL, 199.00, NULL);
INSERT INTO `course` VALUES (11, 'Flutter and Firebase: Create an iOS and Android chat app', 'Learn how to create a Messenger and WhatsApp clone with Flutter, Dart and Firebase for iOS 12 and Android P', 'Do you know the basics of Dart and Flutter application development? What if we go a little further?\r\n\r\nIn this course, we will together create a chat application with Flutter and Firebase. You can thus have a messenger or WhatsApp type application for both iOS and Android. For this, we will:\r\n\r\nAdapt our application according to the platform with an adapted material design according to whether we are under iOS or Android.', 0.0, 0, 5, '2015-01-01 00:00:00', 10, b'0', 2, NULL, 49.99, NULL);
INSERT INTO `course` VALUES (12, 'React Native (2020): The Complete Guide (+ Redux & Hooks)', 'Beginner to advanced: develop and publish apps with React Native, React Navigation, and Redux!React Native has become in a few years an essential framework in the development of mobile applications . Based on React, which is enriched each year with new innovative and powerful concepts, React Native allows front-end developers to publish native Android and iOS applications with Javascript.\r\n\r\n\r\n\r\nAt the end of this course, you will have developed several applications and you will be able to publish them on the App Store and the Play Store . The difficulty of the concepts will be gradual: we will start with basic concepts and end with the development of an application making Http requests to API.\r\n\r\n\r\n\r\nIf you\'re new to React, don\'t panic! We will see the basic concepts of React together. You will learn everything you need to know about React to get started with React Native.\r\n\r\n\r\n\r\nYou can also contact me to ask any questions you want. Everyone is different and I understand very well that some passages can be complex. So don\'t hesitate to write to me!', 'React Native has become in a few years an essential framework in the development of mobile applications . Based on React, which is enriched each year with new innovative and powerful concepts, React Native allows front-end developers to publish native Android and iOS applications with Javascript.\r\n\r\n\r\n\r\nAt the end of this course, you will have developed several applications and you will be able to publish them on the App Store and the Play Store . The difficulty of the concepts will be gradual: we will start with basic concepts and end with the development of an application making Http requests to API.\r\n\r\n\r\n\r\nIf you\'re new to React, don\'t panic! We will see the basic concepts of React together. You will learn everything you need to know about React to get started with React Native.\r\n\r\n\r\n\r\nYou can also contact me to ask any questions you want. Everyone is different and I understand very well that some passages can be complex. So don\'t hesitate to write to me!', 5.0, 0, 2, '2020-06-21 00:00:00', 10, b'0', 2, NULL, 139.99, NULL);
INSERT INTO `course` VALUES (13, 'iOS 14 and Swift 5.3: The Complete Course\r\n', 'Learn how to develop iOS apps for iPhone and iPad with iOS14, Xcode12 and Swift5 and UIKit', 'Welcome to the course iOS 14 and Swift 5.3: The complete course,\r\n\r\nIn this course, you will learn through more than 25 hours of videos how to develop applications for iPhone and iPad, starting from scratch and arriving at the end of the course to create complex applications.\r\n\r\nEven if you\'ve never written a line of code in your life, you\'ll be guided through the process so you can build the app of your dreams or that knows how to change professional careers.', 3.7, 0, 2, '2021-01-18 00:00:00', 10, b'0', 2, NULL, 119.99, NULL);
INSERT INTO `course` VALUES (14, 'Creation of Mobile Applications with Android Studio and Java', 'Mobile development', 'This Course is a complete training which contains all the practical notions (100%) for the creation of Android mobile applications.\r\n\r\nYou will learn how to create Android apps using Android Studio and the JAVA programming language.\r\n\r\nEven if you have no background in computer science or development, or even if you have never programmed, you can take this training which starts from scratch.\r\n\r\nIt contains all the basics and advanced notions.\r\n\r\nYou will learn :\r\n\r\n-Java and Object Oriented programming\r\n\r\n-Databases and how to apply it in an Android application\r\n\r\n-Sending SMS\r\n\r\n-Make a phone call\r\n\r\n-Use Google Maps\r\n\r\n-Publish your app on Google Play Store\r\n\r\n-How to earn money and advertise\r\n\r\n-Program with Java\r\n\r\n-XML\r\n\r\n-Creation of graphical interfaces\r\n\r\n-and lots of things, ....', 0.5, 0, 5, '2020-09-21 00:00:00', 5, b'0', 2, NULL, 99.99, NULL);
INSERT INTO `course` VALUES (15, 'SwiftUI for iOS 14, iPadOS 14 and macOS 11', 'Create apps for iOS14, macOS11 and iPadOS14', 'Do you know the basics of Swift and Object programming?\r\n\r\nHave you ever developed apps for iOS with Swift?\r\n\r\nDo you want to learn the latest framework from Apple?\r\n\r\n\r\n\r\nThis course on SwiftUI is therefore for you.\r\n\r\nWe will learn together step by step how to create applications with the latest Apple Framework released in June 2019 and updated in June 2020.', 4.8, 0, 5, '2020-09-20 00:00:00', 6, b'0', 2, NULL, 89.99, NULL);

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
INSERT INTO `feedback` VALUES (0, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for profile
-- ----------------------------
DROP TABLE IF EXISTS `profile`;
CREATE TABLE `profile`  (
  `user_id` int NOT NULL,
  `first_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `last_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `function` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'nghe nghiep',
  `biograpgy` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'tieu su',
  `avatar_pic` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of profile
-- ----------------------------
INSERT INTO `profile` VALUES (1, 'Trần', 'Hoàng Long', 'Student', 'best student of the year', NULL);
INSERT INTO `profile` VALUES (2, 'Nguyễn', 'Văn Huy', 'Teacher', 'bad teacher of the decade', NULL);
INSERT INTO `profile` VALUES (3, 'Trần', 'Gia Phúc', 'Student', 'too lazy to write biography', NULL);
INSERT INTO `profile` VALUES (4, 'Nguyễn ', 'Đức Hảo', 'Admin', 'I\'m the boss', NULL);
INSERT INTO `profile` VALUES (5, 'Trần', 'Công Tử', 'Teacher', 'nothing', NULL);

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
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'admin', '$2a$12$4WO8B8pk1fOOTBre6Ljf4ukMqbXDmdUEMEJwPEC9VcP8Kvfn2bXo.', 'Admin', '', '2000-03-30', 1);
INSERT INTO `users` VALUES (3, 'duchao111', '$2a$12$a7KtAZ0bOku1.er/RzBAP.WOXbr47dj/AUTgpR2001pPjrlZtQOVi', 'Háº£o', 'duchao3003@gmail.com', '2008-01-30', 0);
INSERT INTO `users` VALUES (4, 'haohao', '$2a$12$EdKwbZay3yiQHPlXI4V9zuegwkuN1uGmxuj3fuQGJ32Nafm1dU84G', 'haohao', 'haoxongroi123@gmail.com', '2020-12-04', 0);
INSERT INTO `users` VALUES (5, 'phuctran', '$2a$12$110A22mCJVaSK2tHmPM/6e0Dkk.FtSSvZDXvMsgizL1mhyQq3CX/q', 'PhÃºc', 'phuc@gmail.com', '2020-12-30', 0);

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
INSERT INTO `wishlist` VALUES (13, 1);
INSERT INTO `wishlist` VALUES (14, 1);
INSERT INTO `wishlist` VALUES (15, 1);

SET FOREIGN_KEY_CHECKS = 1;
