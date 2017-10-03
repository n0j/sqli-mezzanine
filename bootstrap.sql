# =======================================
# One, Two
# =======================================

DROP DATABASE IF EXISTS db01;
DROP USER IF EXISTS 'db01'@'localhost';

CREATE DATABASE db01;
GRANT SELECT ON db01.* TO 'db01'@'localhost' IDENTIFIED BY 'bVbo9rbi8VGmnWL3qzzR';
FLUSH PRIVILEGES;

USE db01;

DROP TABLE IF EXISTS user;
CREATE TABLE user (
  user varchar(20) DEFAULT NULL,
  pass varchar(20) DEFAULT NULL
);

INSERT INTO user (user, pass) VALUES ('admin', 'kfCQ4RyJCXan6HbJFz');
INSERT INTO user (user, pass) VALUES ('mike', 'p4ssw0rd1');
INSERT INTO user (user, pass) VALUES ('steve', 'haxa11day');
INSERT INTO user (user, pass) VALUES ('aunt_rita', 'ForestGump');

# =======================================
# Three
# =======================================

DROP DATABASE IF EXISTS db03;
DROP USER IF EXISTS 'db03'@'localhost';

CREATE DATABASE db03;
GRANT SELECT ON db03.* TO 'db03'@'localhost' IDENTIFIED BY 'f6UyL7vuYZJQDBeQWshG';
FLUSH PRIVILEGES;

USE db03;

DROP TABLE IF EXISTS user;
CREATE TABLE user (
  user varchar(20) DEFAULT NULL
);

INSERT INTO user (user) VALUES ('admin');
INSERT INTO user (user) VALUES ('MagnificentBeard99');
INSERT INTO user (user) VALUES ('steve');
INSERT INTO user (user) VALUES ('aunt_rita');

# =======================================
# Four
# =======================================

DROP DATABASE IF EXISTS db04;
DROP USER IF EXISTS 'db04'@'localhost';

CREATE DATABASE db04;
GRANT SELECT ON db04.* TO 'db04'@'localhost' IDENTIFIED BY 'NCvBqK2jPWrH3wv52sR4';
FLUSH PRIVILEGES;

USE db04;

DROP TABLE IF EXISTS user;
CREATE TABLE user (
  user varchar(20) DEFAULT NULL,
  pass varchar(20) DEFAULT NULL
);

INSERT INTO user (user, pass) VALUES ('admin', 'p7ku5NLThUXhFQ8VbWFb');
INSERT INTO user (user, pass) VALUES ('mike', 'p4ssw0rd1');
INSERT INTO user (user, pass) VALUES ('steve', 'haxa11day');
INSERT INTO user (user, pass) VALUES ('aunt_rita', 'ForestGump');
INSERT INTO user (user, pass) VALUES ('dejandayoff', 'serbiaRulez');
INSERT INTO user (user, pass) VALUES ('n0j', 'fnRADOOo');
INSERT INTO user (user, pass) VALUES ('hackerbyhobby', 'jT0wNr0b3ry');
INSERT INTO user (user, pass) VALUES ('bruteforce1', 'brutebrute');
INSERT INTO user (user, pass) VALUES ('Lars', 'Lars');
INSERT INTO user (user, pass) VALUES ('PWNRAD', 'iloveponies!');
INSERT INTO user (user, pass) VALUES ('SparklingIce', 'kiwistrawberry0');

# =======================================
# Five
# =======================================

DROP DATABASE IF EXISTS db05;
DROP USER IF EXISTS 'db05'@'localhost';

CREATE DATABASE db05;
GRANT SELECT ON db05.* TO 'db05'@'localhost' IDENTIFIED BY 'dy5hmvZp8wEMZ5PFDX3v';
FLUSH PRIVILEGES;

USE db05;

DROP TABLE IF EXISTS user;
CREATE TABLE user (
  user varchar(20) DEFAULT NULL,
  pass varchar(100) DEFAULT NULL
);

INSERT INTO user (user, pass) VALUES ('admin', 'k2dbnPUFRXzwk6S63WYkAaRFzLSx');
INSERT INTO user (user, pass) VALUES ('mike', 'p4ssw0rd1');
INSERT INTO user (user, pass) VALUES ('steve', 'haxa11day');
INSERT INTO user (user, pass) VALUES ('aunt_rita', 'ForestGump');
INSERT INTO user (user, pass) VALUES ('dejandayoff', 'serbiaRulez');
INSERT INTO user (user, pass) VALUES ('n0j', 'fnRADOOo');
INSERT INTO user (user, pass) VALUES ('hackerbyhobby', 'jT0wNr0b3ry');
INSERT INTO user (user, pass) VALUES ('bruteforce1', 'brutebrute');
INSERT INTO user (user, pass) VALUES ('Lars', 'Lars');
INSERT INTO user (user, pass) VALUES ('PWNRAD', 'iloveponies!');
INSERT INTO user (user, pass) VALUES ('SparklingIce', 'kiwistrawberry0');

# =======================================
# Six
# =======================================

DROP DATABASE IF EXISTS db06;
DROP USER IF EXISTS 'db06'@'localhost';

CREATE DATABASE db06;
GRANT SELECT ON db06.* TO 'db06'@'localhost' IDENTIFIED BY 'Jy8BqwAQHMEBRWJjTcP6';
FLUSH PRIVILEGES;

USE db06;

DROP TABLE IF EXISTS codes;
CREATE TABLE codes (
  code varchar(8) DEFAULT NULL
);

INSERT INTO codes (code) VALUES ('68LKzCqe');
INSERT INTO codes (code) VALUES ('rxWFevGp');
INSERT INTO codes (code) VALUES ('ZqsVneJu');
INSERT INTO codes (code) VALUES ('oORNAzsW');
INSERT INTO codes (code) VALUES ('caNZWLZZ');
INSERT INTO codes (code) VALUES ('R2RvJcLT');
INSERT INTO codes (code) VALUES ('Pn7U438X');
INSERT INTO codes (code) VALUES ('mEI4Fpke');
INSERT INTO codes (code) VALUES ('4VTwn79t');
INSERT INTO codes (code) VALUES ('G4H3ALtM');
INSERT INTO codes (code) VALUES ('IBu7ArDi');
INSERT INTO codes (code) VALUES ('5omMYLsK');
INSERT INTO codes (code) VALUES ('TSxsDrUm');
INSERT INTO codes (code) VALUES ('bHf8fn64');
INSERT INTO codes (code) VALUES ('fUbJfdSn');
INSERT INTO codes (code) VALUES ('Vz7LYljm');


DROP TABLE IF EXISTS user;
CREATE TABLE user (
  user varchar(20) DEFAULT NULL,
  pass varchar(100) DEFAULT NULL
);

INSERT INTO user (user, pass) VALUES ('admin', 'NQnc2CsjZeoeQoHUTWQmjEPiafQ8noMyBYDrWjze6roDPm3inWhq6fRX4QQ5JpZK');
