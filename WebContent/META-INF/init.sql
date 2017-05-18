CREATE TABLE `employee` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `FIRST_NAME` varchar(45) NOT NULL,
  `LAST_NAME` varchar(45) NOT NULL,
  `EMAIL` varchar(45) NOT NULL,
  `USER_NAME` varchar(45) NOT NULL,
  `PASSWORD` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `USER_NAME_UNIQUE` (`USER_NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;
insert into employee values(null,'Admin','User','admin@something.com','admin','admin');
insert into employee values(null,'Leslie','Knope','lKnope@awesome.com','lKnope','iHateJeremyJam');
insert into employee values(null,'Ron','Swanson','rSwanson@awesome.com','rSwanson','leaveMeAlone');
insert into employee values(null,'Andy','Dwyer','aDwyer@awesome.com','aDwyer','adsfuvpnwe;fn');
insert into employee values(null,'Ann','Perkins','aPerkins@awesome.com','aPerkins','iHateJeremyJam');
insert into employee values(null,'Ben','Wyatt','bWyatt@awesome.com','bWyatt','starWars!!!');
insert into employee values(null,'Frank','Reynalds','fReynalds@awesome.com','fReynalds','iLoveMoney');
insert into employee values(null,'Roger','Waters','rWaters@awesome.com','rWaters','anotherBrick');