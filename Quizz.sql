CREATE TABLE User(
idUser INT(10) PRIMARY KEY NOT NULL AUTO_INCREMENT,
nom VARCHAR(45) NOT NULL,
prenom VARCHAR(45) NOT NULL,
age date NOT NULL,
pseudo CHAR(15) NOT NULL,
mail VARCHAR(45) NOT NULL,
mdp VARCHAR(15) NOT NULL
);

CREATE TABLE Historique(
idHistorique INT UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
numHistorique VARCHAR(15) not null,
idUser INT(10) UNSIGNED
);

CREATE TABLE Theme(
idTheme INT UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
categorie VARCHAR(30) not null
);

CREATE TABLE Question(
idQuestion INT UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
question VARCHAR(15) not null,
idTheme INT(10) UNSIGNED
);

CREATE TABLE Reponse(
idReponse INT UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
r1 VARCHAR(150) not null,
r2 VARCHAR(150) not null,
r3 VARCHAR(150) not null,
r4 VARCHAR(150) not null,
bReponse VARCHAR(150) not null,
idQuestion INT(10) UNSIGNED
);

CREATE TABLE Game(
idGame INT UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
numGame VARCHAR(10) not null,
Q1 VARCHAR(300) not null,
R1 VARCHAR(300) not null,
Q2 VARCHAR(300) not null,
R2 VARCHAR(300) not null,
Q3 VARCHAR(300) not null,
R3 VARCHAR(300) not null,
Q4 VARCHAR(300) not null,
R4 VARCHAR(300) not null,
Q5 VARCHAR(300) not null,
R5 VARCHAR(300) not null,
idUser INT(10) UNSIGNED,
idHistorique INT(10) UNSIGNED,
idLien INT(10) UNSIGNED
);

CREATE TABLE Lien(
idLien INT(10) UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
idTheme INT(10) UNSIGNED,
idQuestion INT(10) UNSIGNED,
idReponse INT(10) UNSIGNED,
idGame INT(10) UNSIGNED
);

ALTER TABLE Game ADD CONSTRAINT fk_GameUser_id FOREIGN KEY(idUser) REFERENCES User (idUser);
ALTER TABLE Historique ADD CONSTRAINT fk_HistoriqueUser_id FOREIGN KEY(idUser) REFERENCES User (idUser);
ALTER TABLE Game ADD CONSTRAINT fk_GameHistorique_id FOREIGN KEY(idHistorique) REFERENCES Historique (idHistorique);
ALTER TABLE Lien ADD CONSTRAINT fk_LienGame_id FOREIGN KEY(idGame) REFERENCES Game (idGame);
ALTER TABLE Lien ADD CONSTRAINT fk_LienTheme_id FOREIGN KEY(idTheme) REFERENCES Theme (idTheme);
ALTER TABLE Lien ADD CONSTRAINT fk_LienQuestion_id FOREIGN KEY(idQuestion) REFERENCES Question (idQuestion);
ALTER TABLE Lien ADD CONSTRAINT fk_LienReponse_id FOREIGN KEY(idReponse) REFERENCES Reponse (idReponse);
ALTER TABLE Question ADD CONSTRAINT fk_QuestionTheme_id FOREIGN KEY(idTheme) REFERENCES Theme (idTheme);


==============================================================================================================

INSERT INTO User (idUser, nom, prenom, age, pseudo, mail, mdp) values
(default, 'mouret', 'sebastien', '1989-07-12', 'furi', 's.mouret.pro@gmail.com', 'test1234');


INSERT INTO Historique (idHistorique, numHistorique, idUser) values


INSERT INTO Game (idGame, numGame, Q1, R1, Q2, R2, Q3, R3, Q4, R4 , Q5, R5, idUser, idHistorique) values
()


INSERT INTO Lien (idLien, idTheme, idQuestion, idReponse, idGame) values


INSERT INTO Theme (idTheme, categorie) values
(default, 'anime'),
(default, 'tech'),
(default, 'cinema'),
(default, 'gaming');


INSERT INTO Question (idQuestion, question, idTheme) values
(1, 'Où est-ce que Kaneki décide de travailler ?', 1),
(2, 'Comment s’appelle l’auteur que Kaneki aime beaucoup ?', 1),
(3, 'Dans quel manga ou anime, le héros est un petit robot ?', 1),
(4, 'Qui est l’étudiant  qui dépasse certain héro pro ?', 1),
(5, 'Qui emmène Eren au tribunal ?' ,1),
(6, 'Lors du combat final contre Buu buu , Vegeta déclare que ?', 1),
(7, 'Quelle est l\'année de sortie de la Super Nintendo en France ? ', 2),
(8, "Dans quelle ville est né Altaïr, le héros du premier Assassin\'s Creed ?", 2),
(9, 'Comment s’appel le puissant héro de God of war ?', 2),
(10, 'De quels jeux Franklin Michael Trevor sont-ils  issus ?',  2),
(11, 'Quel studio a développé Call of Duty: Advanced Warfare ?', 2),
(12, 'Quel est le nom du créateur de Mario ?',  2),
(13, 'Quel moteur graphique utilisé dans les jeux battlefield ?',  2),
(14, 'Dans the last of us comment appelle t’on le champignon responsable de l’infection ?',  2),
(15, 'Dans Apex Legend comment se nomme le héros possédant un corbeau ?', 2),
(16, 'Quel est le studio qui a crée la licence Assassin’s Creed ?', 2),
(17, 'De quel film est issu la musique culte « Now we are free »?',  3),
(18, 'Dans le film « La Chute du Faucon noir » quel est la force d’intervention à pied ?',  3),
(19, 'Dans le film gladiator qui assassine Marc Aurèle ? ',  3),
(20, 'En quel lieu Frodon se fait-il blesser par l\'un des neuf cavaliers noirs ?',  3),
(21, 'A travers quel artefact possédé par Saroumane voit-on luire l\'oeil de Sauron ?',  3),
(22, 'Dans intouchable, qu’elle est l’handicape de Phillipe ?',  3),
(23, 'Dans The Amazing Spiderman quel est la vraie identité d’électro ?', 3),
(24, 'Dans X men origins Wolwerine Logan se prend une explosion de quel type ?', 3),
(25, 'Comment s’ appel le méchant qui a copié la technologie Stark lors du grand prix à Monaco ?',3),
(26, 'Dans Transformers comment appelle t’on l’élément pouvant réanimer un transformers ?',  3),
(27, 'Que veut dire High tech ?', 4),
(28, 'Que veut dire RAM ?',  4),
(29, 'Quel est le role d’un processeur ?', 4),
(30, 'Où se trouve le siège d’Intel Corporation ?', 4),
(31, 'Que veut dire CPL ?', 4),
(32, 'Quel est le le classement juste  des stockages les plus rapides ?', 4),
(33, 'Quel type de connexion est la plus rapide ?', 4),
(34, 'Quel débit est le plus rapide ?', 4),
(35, 'Quel est le nouveau nom de Facebook?', 4),
(36, 'Qui est le successeur de Steve Jobs ?', 4);


INSERT INTO Reponse (idReponse, r1, r2, r3, r4, bReponse) values
(default, 'Dans un bar.', 'Dans un café appelé l’Antique.', 'Dans un restaurant pour Goule. ', 'À l’université.', 'Dans un café appelé l’Antique.'),
(default, 'Takatsuki Sen', 'Tachibana Sen', 'Takatsuki Seido', 'Akira Mado', 'Takatsuki Sen'),
(default, "Yume Senshi", "Wingman", "Astro Boy", " Gundam Wing, Gundam Seed et Gundam 00 Mazinger",'Astro Boy' ),
(default, "Lemillion", "Endevor", "Hawks", "Stain ",'Lemillion' ),
(default, "Erwin Smith", "Levy", "Hanzi Zoé", "Mikasa Ackerman" ,'Levy' ),
(default, "Goku est un imbécile", "Goku est le numéro 1", "Goku est le plus gentil des sayan", "Goku est son plus grand rival","Goku est le numéro 1" ),
(default, "1990", "1991", "1992", "1993",'1991' ),
(default,'Jérusalemen','Rome', 'Masyaf', 'Sparte', 'Masyaf'),
(default, "Credos ", "Démios ", "Kratos ", "Sakrot", 'Kratos' ),
(default, "Unity ", "Unreal Engine", "Rage ", "Frostbite ",'Frostbite' ),
(default,'Treyarch studio','Sledge Hammer Games','Rockstar Games','Infinity Ward','Rockstar Games'),
(default,'Akira Toriyama','Shigeru Miyamoto','Zang Yamoto','Dashan Wang','Shigeru Miyamoto'),
(default, 'Unity', 'Unreal Engine','Rage','Frostbite','Frostbite'),
(default,'Cordyceps','Coprin','Amanite Phalloïde','Lactarius Amirus','Cordyceps'),
(default, 'Wraith','Sombra','Bloodhound','Mirage', 'Bloodhound'),
(default, 'Valve','Bethesda','Criterion','Ubisoft', 'Ubisoft'),
(default, 'Gladiator','Star Wars','Le seigneur des Anneaux', 'Il faut sauver le soldat Rayan', 'Gladiator'),
(default, 'Mac V SOG', 'Les Marines', 'La Delta Force', 'Les Spetsnaz', 'Les Marines' ),
(default, 'Spartacus', 'Octave', 'Comode', 'Maximus', 'Comode' ),
(default, 'Amon sûl','Le mont Ventoux','Le Gué de Bruinen','Le mont Valérien', 'Le mont Ventoux'),
(default, 'Le miroir Galadriel', 'Le bâton de pouvoir', 'Le Palantir', 'Le Tesseract', 'Le Palantir'),
(default, 'Il est paraplégique', 'Il est tétraplégique', 'Il est hémiplégique', 'Il est polyphylétique', 'Il est tétraplégique'),
(default, 'Arthur Parks', 'Steeve Rogers',  'Max Dillon',  'Curtis Connors', 'Max Dillon'),
(default, 'Incident industrielle', 'Une explosion', 'Une Explosion atomique', 'Un tir de mortier', 'Une Explosion atomique'), 
(default, 'Enton Vanko', 'Ivan Vanko', 'Jin Khanè', 'Raymon Barkov', 'Ivan Vanko' ),
(default, 'La Matrice de commandement', 'Le All Spark', 'Le cube de commandement', 'Le tesseract commandement', 'La Matrice de commandement'),
(default, 'Technologie', 'La petite technologie', 'La haute technologie', 'La techno', 'La haute technologie' ),
(default, 'Random Access Memory', 'Right Acces Mobile', 'Rainbow Acces Memory', 'Random Admin Memory', 'Random Access Memory' ),
(default, 'D’exécuter des fréquences d’images','D’échanger des données entre les différents composants informatique','De stocker des données','De centraliser la prise en charge de la RAM','D’échanger des données entre les différents composants informatique'),
(default, 'Santa Monica', 'Santa Clara', 'Santa Barbara', 'Santa Clause', 'Santa Clara' ),
(default, 'Courant porteur de liens', 'Couverture pérméable de ligne', 'Courant porteur en ligne', 'Courant paramétrable de ligne', 'Courant porteur de liens' ),
(default, 'HDD<SSD<SD<Flash Memory', 'Flash Memory <SD<HDD<SSD', 'SD<SSD<Flash Memory<HDD', 'SSD<HDD<Flash Memory<SD','SSD<HDD<Flash Memory<SD' ),
(default, 'VDSL2', 'Modem', 'ADSL', 'Fibre', 'Fibre' ),
(default, 'Tera bits/s', 'Gigabyte /s', 'Mégabyte/s', 'Microbytes /s', 'Tera bits/s' ),
(default, 'Méta', 'Messenger', 'Discord', 'Zétaverse', 'Méta' ),
(default, 'Ragnar Lothbrok', 'Mark Zuckerberg', 'Richard Branson', 'Tim Cook', 'Tim Cook' );
