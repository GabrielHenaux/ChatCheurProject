# Dump of table user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (`id` int unsigned NOT NULL AUTO_INCREMENT,
                     `user_name` varchar(255) DEFAULT NULL,
                     `first_name` varchar(255) DEFAULT NULL,
                     `last_name` varchar(255) DEFAULT NULL,
                     `email` varchar(255) DEFAULT NULL,
                     `password` varchar(255) DEFAULT NULL,
                     `permission` enum('admin','moderator','normal'),
                     `last_connection_time` timestamp DEFAULT CURRENT_TIMESTAMP,
                     `login` enum('accepted','banned'),
                     `state` enum('online','offline','away'),
                     PRIMARY KEY (`id`));

# Dump of table message
# ------------------------------------------------------------

DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (`id` int unsigned NOT NULL AUTO_INCREMENT,
                        `user_id` varchar(255) DEFAULT NULL,
                        `timestamp` timestamp DEFAULT CURRENT_TIMESTAMP,
                        `content` varchar(255) DEFAULT NULL,
                        PRIMARY KEY (`id`),
                        FOREIGN KEY (`user_id`) REFERENCES `user`(`id`));

# Dump of table log
# ------------------------------------------------------------

DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (`id` int unsigned NOT NULL AUTO_INCREMENT,
                    `user_id` varchar(255) DEFAULT NULL,
                    `timestamp` timestamp DEFAULT CURRENT_TIMESTAMP,
                    `typelog` enum('connection','disconnection','sent','ban','stateUpdate'),
                    PRIMARY KEY (`id`),
                    FOREIGN KEY (`user_id`) REFERENCES `user`(`id`));