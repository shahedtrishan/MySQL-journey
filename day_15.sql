-- section 17
-- instagram database clone

show databases;
create database ig_clone;
use ig_clone;

CREATE TABLE users (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) UNIQUE NOT NULL,
    created_at TIMESTAMP DEFAULT NOW()
);

desc users;

create table photos(
id int auto_increment primary key, 
image_url varchar(255),
user_id int not null,
created_at timestamp default now(), 
foreign key (user_id) references users(id)
);

desc users;
drop table users;

create table comments(
id int auto_increment primary key,
comment_text varchar(255) not null,
user_id int not null,
photo_id int not null,
created_at timestamp default now(),
foreign key (user_id) references users(id),
foreign key (photo_id) references photos(id)
);

desc comments;

create table likes(
user_id int not null,
photo_id int not null,
created_at timestamp default now(),
foreign key (user_id) references users(id),
foreign key (photo_id) references photos(id)
);

create table follows(
follower_id int not null,
followee_id int not null, 
created_at timestamp default now(),
foreign key (follower_id) references users(id),
foreign key (followee_id) references users(id),
primary key(follower_id, followee_id)
);

desc follows;

create table tags(
id int primary key auto_increment,
tag_name varchar(255) unique,
created_at timestamp default now()
);

create table photo_tags(
photo_id int not null,
tag_id int not null,
foreign key (photo_id) references photos(id),
foreign key (tag_id) references tags(id),
primary key (photo_id, tag_id)
);

desc photo_tags;
show tables;
