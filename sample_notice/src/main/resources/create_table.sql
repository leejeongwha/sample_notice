CREATE TABLE IF NOT EXISTS user ( 
 id varchar(40) primary key,
 passwd varchar(40) not null
);

CREATE TABLE IF NOT EXISTS notice ( 
 seq integer IDENTITY,
 title varchar(100) not null,
 content varchar(300) not null,
 userId varchar(40) not null
);

INSERT INTO user (id, passwd) VALUES ('admin', '1234');

INSERT INTO notice (title, content, userId) VALUES ('test', 'org.springframework.web.servlet.handler.SimpleUrlHandlerMapping', 'admin');
INSERT INTO notice (title, content, userId) VALUES ('test2', 'org.springframework.web.servlet.handler.SimpleUrlHandlerMapping', 'admin');
INSERT INTO notice (title, content, userId) VALUES ('test3', 'org.springframework.web.servlet.handler.SimpleUrlHandlerMapping', 'admin');
INSERT INTO notice (title, content, userId) VALUES ('test4', 'org.springframework.web.servlet.handler.SimpleUrlHandlerMapping', 'admin');
INSERT INTO notice (title, content, userId) VALUES ('test5', 'org.springframework.web.servlet.handler.SimpleUrlHandlerMapping', 'admin');
INSERT INTO notice (title, content, userId) VALUES ('test6', 'org.springframework.web.servlet.handler.SimpleUrlHandlerMapping', 'admin');
INSERT INTO notice (title, content, userId) VALUES ('test7', 'org.springframework.web.servlet.handler.SimpleUrlHandlerMapping', 'admin');
INSERT INTO notice (title, content, userId) VALUES ('test8', 'org.springframework.web.servlet.handler.SimpleUrlHandlerMapping', 'admin');
INSERT INTO notice (title, content, userId) VALUES ('test9', 'org.springframework.web.servlet.handler.SimpleUrlHandlerMapping', 'admin');
INSERT INTO notice (title, content, userId) VALUES ('test10', 'org.springframework.web.servlet.handler.SimpleUrlHandlerMapping', 'admin');
