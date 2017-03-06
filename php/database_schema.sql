CREATE TABLE movie(id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    hash TEXT NOT NULL UNIQUE,
    title TEXT NOT NULL,
    folder TEXT NOT NULL,
    url TEXT NOT NULL UNIQUE,
    idapi INT,
    overview TEXT,
    vote_average INT,
    vote_count INT,
    release_date TEXT,
    runtime INT,
    backdrop_path TEXT,
    filetime TIMESTAMP,
    confirmed INT);

CREATE TABLE user(
id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
name TEXT NOT NULL UNIQUE,
mail TEXT NOT NULL UNIQUE,
pswd TEXT NOT NULL,
salt TEXT NOT NULL,
role INT NOT NULL,
img TEXT);

INSERT INTO user (name,mail,paswd,salt,role,img) VALUES ("admin","admin","admin","0000",0,"default.jpg");

CREATE TABLE genres(
id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
name TEXT NOT NULL,
idmoive INTEGER NOT NULL);

CREATE TABLE favorite(
id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
iduser INT NOT NULL,
idmovie INT NOT NULL);

CREATE TABLE watched(
id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
idmovie INT NOT NULL,
iduser INT NOT NULL,
time DATETIME DEFAULT CURRENT_TIMESTAMP);

CREATE TABLE secret(
id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
iduser INT NOT NULL,
key TEXT NOT NULL,
active INT NOT NULL,
time DATETIME DEFAULT CURRENT_TIMESTAMP);

CREATE TABLE post(
id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
iduser INT NOT NULL,
idmovie INT NOT NULL,
mex TEXT NOT NULL,
star INT,
time DATETIME DEFAULT CURRENT_TIMESTAMP);

CREATE TABLE federation(
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    url TEXT UNIQUE NOT NULL,
    secret TEXT NOT NULL,
    name TEXT
);
