# Dump File
#
# Database is ported from MS Access
#--------------------------------------------------------
# Program Version 3.0.96

DROP DATABASE IF EXISTS `hmi`;
CREATE DATABASE IF NOT EXISTS `hmi`;
USE `hmi`;

#
# Table structure for table 'accessRights'
#

DROP TABLE IF EXISTS `accessRights`;

CREATE TABLE `accessRights` (
  `policy_id` INTEGER NOT NULL AUTO_INCREMENT, 
  `user_id` INTEGER, 
  `dash_id` INTEGER, 
  INDEX (`dash_id`), 
  PRIMARY KEY (`policy_id`), 
  INDEX (`user_id`)
) TYPE=MyISAM;

#
# Dumping data for table 'accessRights'
#

INSERT INTO `accessRights` (`policy_id`, `user_id`, `dash_id`) VALUES (1, 1, 1);
INSERT INTO `accessRights` (`policy_id`, `user_id`, `dash_id`) VALUES (2, 1, 2);
INSERT INTO `accessRights` (`policy_id`, `user_id`, `dash_id`) VALUES (3, 1, 3);
INSERT INTO `accessRights` (`policy_id`, `user_id`, `dash_id`) VALUES (4, 1, 4);
INSERT INTO `accessRights` (`policy_id`, `user_id`, `dash_id`) VALUES (5, 1, 5);
INSERT INTO `accessRights` (`policy_id`, `user_id`, `dash_id`) VALUES (6, 1, 6);
INSERT INTO `accessRights` (`policy_id`, `user_id`, `dash_id`) VALUES (7, 1, 7);
INSERT INTO `accessRights` (`policy_id`, `user_id`, `dash_id`) VALUES (8, 1, 8);
INSERT INTO `accessRights` (`policy_id`, `user_id`, `dash_id`) VALUES (9, 1, 9);
INSERT INTO `accessRights` (`policy_id`, `user_id`, `dash_id`) VALUES (10, 1, 10);
INSERT INTO `accessRights` (`policy_id`, `user_id`, `dash_id`) VALUES (11, 1, 11);
# 11 records

#
# Table structure for table 'customDash'
#

DROP TABLE IF EXISTS `customDash`;

CREATE TABLE `customDash` (
  `custom_id` INTEGER NOT NULL AUTO_INCREMENT, 
  `dash_id` INTEGER, 
  `widget_id` INTEGER, 
  `setting_id` INTEGER, 
  INDEX (`dash_id`), 
  PRIMARY KEY (`custom_id`), 
  INDEX (`setting_id`), 
  INDEX (`widget_id`)
) TYPE=MyISAM;

#
# Dumping data for table 'customDash'
#

# 0 records

#
# Table structure for table 'dashBoards'
#

DROP TABLE IF EXISTS `dashBoards`;

CREATE TABLE `dashBoards` (
  `dash_id` INTEGER NOT NULL AUTO_INCREMENT, 
  `dash_name` VARCHAR(255), 
  `dash_title` VARCHAR(255), 
  `dash_discription` VARCHAR(255), 
  `dash_path` VARCHAR(255), 
  `on_menu` TINYINT DEFAULT 0, 
  `menu_cat_id` INTEGER, 
  PRIMARY KEY (`dash_id`)
) TYPE=MyISAM;

#
# Dumping data for table 'dashBoards'
#

INSERT INTO `dashBoards` (`dash_id`, `dash_name`, `dash_title`, `dash_discription`, `dash_path`, `on_menu`, `menu_cat_id`) VALUES (1, 'Query Runner', 'Query Runner', 'Enable advanced database queries', './xmlRunner/xmlRun.swf', -1, 4);
INSERT INTO `dashBoards` (`dash_id`, `dash_name`, `dash_title`, `dash_discription`, `dash_path`, `on_menu`, `menu_cat_id`) VALUES (2, 'CWRSAD', 'Chilled Water Reduced Scale Advanced Demostrator (CWRSAD)', NULL, './cwrsad/cwrsad.swf', -1, 1);
INSERT INTO `dashBoards` (`dash_id`, `dash_name`, `dash_title`, `dash_discription`, `dash_path`, `on_menu`, `menu_cat_id`) VALUES (3, 'Dashboard Builder', 'Dash Builder', NULL, './dashBuilder/dashBuilder.swf', 0, 1);
INSERT INTO `dashBoards` (`dash_id`, `dash_name`, `dash_title`, `dash_discription`, `dash_path`, `on_menu`, `menu_cat_id`) VALUES (4, 'Dashboard Manager', 'Dashboard Manager', NULL, './dashboardManager/manDash.swf', -1, 1);
INSERT INTO `dashBoards` (`dash_id`, `dash_name`, `dash_title`, `dash_discription`, `dash_path`, `on_menu`, `menu_cat_id`) VALUES (5, 'Who am I', 'Who am I', NULL, './whoAmI/whoAmI.swf', 0, 2);
INSERT INTO `dashBoards` (`dash_id`, `dash_name`, `dash_title`, `dash_discription`, `dash_path`, `on_menu`, `menu_cat_id`) VALUES (6, 'User Manager', 'User Manager', NULL, './manUsers/manUsers.swf', -1, 2);
INSERT INTO `dashBoards` (`dash_id`, `dash_name`, `dash_title`, `dash_discription`, `dash_path`, `on_menu`, `menu_cat_id`) VALUES (7, 'Lock / Logout', 'Lock / Logout', NULL, './logout/logout.swf', -1, 2);
INSERT INTO `dashBoards` (`dash_id`, `dash_name`, `dash_title`, `dash_discription`, `dash_path`, `on_menu`, `menu_cat_id`) VALUES (8, 'Cluster Manager', 'Cluster Manager', NULL, './clusterManager/clusterManager.swf', 0, 4);
INSERT INTO `dashBoards` (`dash_id`, `dash_name`, `dash_title`, `dash_discription`, `dash_path`, `on_menu`, `menu_cat_id`) VALUES (9, 'Database Manager', 'Database Manager', NULL, './databaseManager/databaseManager.swf', 0, 4);
INSERT INTO `dashBoards` (`dash_id`, `dash_name`, `dash_title`, `dash_discription`, `dash_path`, `on_menu`, `menu_cat_id`) VALUES (10, 'Simulation Manager', 'Simulation Manager', NULL, './simulationManager/simulationManager.swf', 0, 3);
INSERT INTO `dashBoards` (`dash_id`, `dash_name`, `dash_title`, `dash_discription`, `dash_path`, `on_menu`, `menu_cat_id`) VALUES (11, 'Data Manager', 'Data Manager', NULL, './dataManager/dataManager.swf', 0, 3);
# 11 records

#
# Table structure for table 'dashConfiguration'
#

DROP TABLE IF EXISTS `dashConfiguration`;

CREATE TABLE `dashConfiguration` (
  `config_id` INTEGER NOT NULL AUTO_INCREMENT, 
  `simulation_id` VARCHAR(255), 
  `dash_id` VARCHAR(255), 
  `config_data` VARCHAR(255), 
  PRIMARY KEY (`config_id`)
) TYPE=MyISAM;

#
# Dumping data for table 'dashConfiguration'
#

# 0 records

#
# Table structure for table 'log'
#

DROP TABLE IF EXISTS `log`;

CREATE TABLE `log` (
  `log_id` INTEGER NOT NULL AUTO_INCREMENT, 
  `user_id` INTEGER, 
  `log` VARCHAR(255), 
  `time` DATETIME, 
  PRIMARY KEY (`log_id`), 
  INDEX (`user_id`)
) TYPE=MyISAM;

#
# Dumping data for table 'log'
#

# 0 records

#
# Table structure for table 'logins'
#

DROP TABLE IF EXISTS `logins`;

CREATE TABLE `logins` (
  `login_id` INTEGER NOT NULL AUTO_INCREMENT, 
  `user_id` INTEGER, 
  `ip_address` VARCHAR(255), 
  PRIMARY KEY (`login_id`), 
  INDEX (`user_id`)
) TYPE=MyISAM;

#
# Dumping data for table 'logins'
#

INSERT INTO `logins` (`login_id`, `user_id`, `ip_address`) VALUES (1, 1, '127.0.0.1');
INSERT INTO `logins` (`login_id`, `user_id`, `ip_address`) VALUES (2, 1, '10.16.1.1');
INSERT INTO `logins` (`login_id`, `user_id`, `ip_address`) VALUES (3, 1, '128.61.191.50');
# 3 records

#
# Table structure for table 'menuCatagorys'
#

DROP TABLE IF EXISTS `menuCatagorys`;

CREATE TABLE `menuCatagorys` (
  `menu_cat_id` INTEGER NOT NULL AUTO_INCREMENT, 
  `menu_cat_name` VARCHAR(255), 
  PRIMARY KEY (`menu_cat_id`)
) TYPE=MyISAM;

#
# Dumping data for table 'menuCatagorys'
#

INSERT INTO `menuCatagorys` (`menu_cat_id`, `menu_cat_name`) VALUES (1, 'Dashboards');
INSERT INTO `menuCatagorys` (`menu_cat_id`, `menu_cat_name`) VALUES (2, 'Users');
INSERT INTO `menuCatagorys` (`menu_cat_id`, `menu_cat_name`) VALUES (3, 'Data');
INSERT INTO `menuCatagorys` (`menu_cat_id`, `menu_cat_name`) VALUES (4, 'Server');
# 4 records

#
# Table structure for table 'settingTypes'
#

DROP TABLE IF EXISTS `settingTypes`;

CREATE TABLE `settingTypes` (
  `settingType_id` INTEGER NOT NULL AUTO_INCREMENT, 
  `settingType_name` VARCHAR(255), 
  `settingType` VARCHAR(255), 
  PRIMARY KEY (`settingType_id`)
) TYPE=MyISAM;

#
# Dumping data for table 'settingTypes'
#

# 0 records

#
# Table structure for table 'simData'
#

DROP TABLE IF EXISTS `simData`;

CREATE TABLE `simData` (
  `data_id` INTEGER NOT NULL AUTO_INCREMENT, 
  `user_id` VARCHAR(255), 
  `simulation_id` VARCHAR(255), 
  `data` VARCHAR(255), 
  `cdata` VARCHAR(255), 
  `time` VARCHAR(255), 
  PRIMARY KEY (`data_id`), 
  INDEX (`simulation_id`), 
  INDEX (`user_id`)
) TYPE=MyISAM;

#
# Dumping data for table 'simData'
#

# 0 records

#
# Table structure for table 'simulations'
#

DROP TABLE IF EXISTS `simulations`;

CREATE TABLE `simulations` (
  `simulation_id` INTEGER NOT NULL AUTO_INCREMENT, 
  `simulation_name` VARCHAR(255), 
  `simulation_discription` VARCHAR(255), 
  `simulation_source_ip` VARCHAR(255), 
  PRIMARY KEY (`simulation_id`)
) TYPE=MyISAM;

#
# Dumping data for table 'simulations'
#

INSERT INTO `simulations` (`simulation_id`, `simulation_name`, `simulation_discription`, `simulation_source_ip`) VALUES (1, 'test', 'dfw', '128.61.191.50');
INSERT INTO `simulations` (`simulation_id`, `simulation_name`, `simulation_discription`, `simulation_source_ip`) VALUES (2, 'test2', 'dfw', '111.11.111.11');
# 2 records

#
# Table structure for table 'units'
#

DROP TABLE IF EXISTS `units`;

CREATE TABLE `units` (
  `units_id` INTEGER NOT NULL AUTO_INCREMENT, 
  `units_name` VARCHAR(255), 
  `units_discription` VARCHAR(255), 
  PRIMARY KEY (`units_id`)
) TYPE=MyISAM;

#
# Dumping data for table 'units'
#

# 0 records

#
# Table structure for table 'users'
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `user_id` INTEGER NOT NULL AUTO_INCREMENT, 
  `user_name` VARCHAR(255), 
  `first_name` VARCHAR(255), 
  `last_name` VARCHAR(255), 
  `email` VARCHAR(255), 
  `password` VARCHAR(255), 
  `activated` TINYINT DEFAULT 0, 
  `is_logged_in` TINYINT DEFAULT 0, 
  `is_administrator` TINYINT DEFAULT 0, 
  `last_communication` DATETIME, 
  PRIMARY KEY (`user_id`)
) TYPE=MyISAM;

#
# Dumping data for table 'users'
#

INSERT INTO `users` (`user_id`, `user_name`, `first_name`, `last_name`, `email`, `password`, `activated`, `is_logged_in`, `is_administrator`, `last_communication`) VALUES (1, 'david', 'David', 'Fullmer', 'david.fullmer@asdl.gatech.edu', 'fullmer', -1, 0, -1, NULL);
INSERT INTO `users` (`user_id`, `user_name`, `first_name`, `last_name`, `email`, `password`, `activated`, `is_logged_in`, `is_administrator`, `last_communication`) VALUES (2, 'sarah', 'Sarah', 'Fullmer', 'sarah@none.com', 'fullmer', -1, 0, 0, NULL);
INSERT INTO `users` (`user_id`, `user_name`, `first_name`, `last_name`, `email`, `password`, `activated`, `is_logged_in`, `is_administrator`, `last_communication`) VALUES (3, 'brennan', 'Brennan', 'Fullmer', 'brennan@none.com', 'fullmer', 0, 0, 0, NULL);
# 3 records

#
# Table structure for table 'variables'
#

DROP TABLE IF EXISTS `variables`;

CREATE TABLE `variables` (
  `variable_id` INTEGER NOT NULL AUTO_INCREMENT, 
  `variable_name` VARCHAR(255), 
  `variable_type` VARCHAR(255), 
  `variable_units` VARCHAR(255), 
  PRIMARY KEY (`variable_id`)
) TYPE=MyISAM;

#
# Dumping data for table 'variables'
#

# 0 records

#
# Table structure for table 'widgets'
#

DROP TABLE IF EXISTS `widgets`;

CREATE TABLE `widgets` (
  `widget_id` INTEGER NOT NULL AUTO_INCREMENT, 
  `widget_name` VARCHAR(255), 
  `widget_path` VARCHAR(255), 
  `widget_discription` VARCHAR(255), 
  PRIMARY KEY (`widget_id`)
) TYPE=MyISAM;

#
# Dumping data for table 'widgets'
#

# 0 records

