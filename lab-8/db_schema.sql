
DROP TABLE IF EXISTS team CASCADE;
DROP TABLE IF EXISTS player CASCADE;
DROP TABLE IF EXISTS game CASCADE;
DROP TABLE IF EXISTS game_stats CASCADE;


CREATE TABLE team(
name varchar(50) PRIMARY KEY,
city varchar(50)
);

CREATE TABLE player (
player_id integer PRIMARY KEY,
name varchar(50),
position varchar(10),
height integer,
weight integer,
team varchar(50) REFERENCES team(name),
CHECK (position='Defender' OR position='Midfielder' OR position='Forward')
);

CREATE TABLE game (
game_id integer PRIMARY KEY,
home_team varchar(50) REFERENCES team(name) NOT NULL,
away_team varchar(50) REFERENCES team(name) NOT NULL,
homescore integer,
awayscore integer,
CHECK (home_team <> away_team)
);

CREATE TABLE game_stats (
player_id integer REFERENCES player(player_id) NOT NULL,
game_id integer REFERENCES game(game_id) NOT NULL,
goals integer,
assists integer,
passes integer,
PRIMARY KEY (player_id, game_id)
);


INSERT INTO team VALUES('Arsenal','London');
INSERT INTO team VALUES('Liverpool','Liverpool');
INSERT INTO team VALUES('Chelsea','London');
INSERT INTO team VALUES('Manchester United','Manchester');
INSERT INTO team VALUES('Manchester City','Manchester');
INSERT INTO team VALUES('Tottenham Hotspurs','London');

INSERT INTO player VALUES(1,'Alexandre Lacazette','Forward',175,73,'Arsenal');
INSERT INTO player VALUES(2,'Mohamed Salah','Forward',175,71,'Liverpool');
INSERT INTO player VALUES(3,'Marcos Alonso','Defender',188,85,'Chelsea');
INSERT INTO player VALUES(4,'Paul Pogba','Midfielder',191,84,'Manchester United');
INSERT INTO player VALUES(5,'David Silva','Midfielder',173,67,'Manchester City');
INSERT INTO player VALUES(6,'Jan Vertonghen','Defender',189,88,'Tottenham Hotspurs');

INSERT INTO game VALUES(12,'Arsenal','Liverpool',0,3);
INSERT INTO game VALUES(23,'Liverpool','Chelsea',2,1);
INSERT INTO game VALUES(34,'Chelsea','Manchester United',3,1);
INSERT INTO game VALUES(45,'Manchester United','Manchester City',1,5);
INSERT INTO game VALUES(56,'Manchester City','Tottenham Hotspurs',2,0);
INSERT INTO game VALUES(61,'Tottenham Hotspurs','Arsenal',2,2);

INSERT INTO game_stats VALUES(2,12,2,0,80);
INSERT INTO game_stats VALUES(2,23,1,1,70);
INSERT INTO game_stats VALUES(3,34,0,1,67);
INSERT INTO game_stats VALUES(4,45,2,2,71);
INSERT INTO game_stats VALUES(5,56,1,0,59);
INSERT INTO game_stats VALUES(1,61,1,1,62);




