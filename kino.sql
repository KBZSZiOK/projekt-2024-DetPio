CREATE DATABASE kino_gr1;
CREATE TABLE Filmy( ID bigint AUTO_INCREMENT PRIMARY KEY NOT NULL, Tytul varchar(255) NOT NULL, Rezyser varchar(255) NOT NULL, Czas_trwania_min int NOT NULL); 
CREATE TABLE Rodzaj_filmu( ID bigint AUTO_INCREMENT PRIMARY KEY NOT NULL, Nazwa varchar(255) NOT NULL); 
CREATE TABLE Filmy_rodzaj(ID bigint AUTO_INCREMENT PRIMARY KEY NOT NULL, Filmy_ID int NOT NULL, Rodzaj_ID int NOT NULL,
CONSTRAINT `filmy_fk` FOREIGN KEY (`Filmy_ID`) REFERENCES Filmy(`ID`),
CONSTRAINT `rodzaj_fk` FOREIGN KEY (`Rodzaj_ID`) REFERENCES Rodzaj_filmu(`ID`)
);