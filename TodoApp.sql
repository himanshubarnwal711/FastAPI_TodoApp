show databases;

use todoapp;

show tables;

DROP TABLE IF EXISTS `users`;

create table `users`(
`id` int(11) not null auto_increment,
`email` varchar(200) default null,
`username` varchar(45) default null,
`first_name` varchar(45) default null,
`last_name` varchar(45) default null,
`hashed_password` varchar(200) default null,
`is_active` int(1) default null,
Primary Key(`id`)
)Engine=InnoDB Auto_increment=1 default Charset=latin1;


drop table if exists `todos`;

create table `todos`(
`id` int(11) not null auto_increment,
`title` varchar(200) default null,
`description` varchar(200) default null,
`priority` int(1) default null,
`complete` int(1) default null,
`owner_id` int(11) default null,
primary key(`id`),
foreign key(`owner_id`) references users(`id`)
)engine=InnoDB auto_increment=1 default charset=latin1;


select * from todos;

select * from users;

select * from address;

