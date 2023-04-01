# Dump of table user
# ------------------------------------------------------------

LOCK TABLES `user` WRITE;
INSERT INTO `user` (`id`, `user_name`, `first_name`, `last_name`,`email`,`password`,`permission`, `last_connection_time`,`login`,`state`)
VALUES
    (1,'gabyformula','gabriel','henaux','gaby.henaux@gmail.com','mercedes08','moderator',CURRENT_TIMESTAMP,'banned','offline'),
    (2,'baloo','hippolyte','gillet','hippo.gillet@gmail.com','GitHub007','admin',CURRENT_TIMESTAMP,'accepted','offline'),
    (3,'chofo','nathan','outrey','nathoudu66@gmail.com','@perpignan','normal',CURRENT_TIMESTAMP,'accepted','offline'),
    (4,'jujulafondue','juliette','lafond','juliettelafond@gmail.com','123456789','admin',CURRENT_TIMESTAMP,'accepted','offline'),
    (5,'stanounette','stanislas','bourseau','stan_bourseau@gmail.com','Socket69','moderator',CURRENT_TIMESTAMP,'accepted','offline');
UNLOCK TABLES;

# Dump of table message
# ------------------------------------------------------------

LOCK TABLES `message` WRITE;
INSERT INTO `message` (`id`, `user_id`, `timestamp`, `content`)
VALUES
    (01,2,CURRENT_TIMESTAMP,'Coucou comment vas-tu ?');
    (02,3,CURRENT_TIMESTAMP,'Au top :)');
UNLOCK TABLES;

# Dump of table log
# ------------------------------------------------------------

LOCK TABLES `log` WRITE;
INSERT INTO `log` (`id`, `user_id`, `timestamp`, `typelog`)
VALUES
    (001,5,CURRENT_TIMESTAMP,'connection');
    (002,1,CURRENT_TIMESTAMP,'disconnection');
UNLOCK TABLES;