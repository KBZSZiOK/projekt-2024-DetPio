CREATE DATABASE kino_gr1;
CREATE TABLE Filmy( 
    ID bigint AUTO_INCREMENT PRIMARY KEY NOT NULL, 
    Tytul varchar(255) NOT NULL, 
    Rezyser varchar(255) NOT NULL, 
    Czas_trwania_min int NOT NULL); 


CREATE TABLE Rodzaj_filmu(
    ID bigint AUTO_INCREMENT PRIMARY KEY NOT NULL, 
    Nazwa varchar(255) NOT NULL); 


CREATE TABLE Filmy_rodzaj(
    ID bigint AUTO_INCREMENT PRIMARY KEY NOT NULL,
    Filmy_ID bigint NOT NULL,
    Rodzaj_ID bigint NOT NULL,
CONSTRAINT `filmy_fk` FOREIGN KEY (`Filmy_ID`) REFERENCES Filmy(`ID`),
CONSTRAINT `rodzaj_fk` FOREIGN KEY (`Rodzaj_ID`) REFERENCES Rodzaj_filmu(`ID`));


CREATE TABLE SALE(
    ID bigint AUTO_INCREMENT PRIMARY KEY NOT NULL,
    Ilosc_miejsc int NOT NULL);


CREATE TABLE Seanse(
    ID bigint AUTO_INCREMENT PRIMARY KEY NOT NULL,
    Termin datetime NOT NULL,
    Sala_ID bigint NOT NULL,
    Film_ID bigint NOT NULL,
    Liczba_wolnych_miejsc int NOT NULL,
CONSTRAINT `sala_fk` FOREIGN KEY (`Sala_ID`) REFERENCES SALE(`ID`),
CONSTRAINT `film_fk` FOREIGN KEY (`Film_ID`) REFERENCES Filmy(`ID`));


CREATE TABLE Klienci(
    ID bigint AUTO_INCREMENT PRIMARY KEY NOT NULL,
    Imie varchar(255) NOT NULL,
    Nazwisko varchar(255) NOT NULL,
    Mail varchar(255) NOT NULL);


CREATE TABLE Sprzedawcy(
    ID bigint AUTO_INCREMENT PRIMARY KEY NOT NULL,
    Imie varchar(255) NOT NULL,
    Nazwisko varchar(255) NOT NULL);


CREATE TABLE Bilety(
    ID bigint AUTO_INCREMENT PRIMARY KEY NOT NULL,
    Seans_ID bigint NOT NULL,
    Sprzedawca_ID bigint NOT NULL,
    Klient_ID bigint NOT NULL,
    Cena int NOT NULL, 
CONSTRAINT `seans_fk` FOREIGN KEY (`Seans_ID`) REFERENCES Seanse(`ID`),
CONSTRAINT `sprzedawca_fk` FOREIGN KEY (`Sprzedawca_ID`) REFERENCES Sprzedawcy(`ID`),
CONSTRAINT `klient_fk` FOREIGN KEY (`Klient_ID`) REFERENCES Klienci(`ID`)
);

INSERT INTO `sprzedawcy` (`Imie`, `Nazwisko`) VALUES
("Jan", "Kowlaski"),
("Anna", "Nowak"),
("Marek", "Zieliński"),
("Katarzyna", "Wiśniewska"),
("Piotr", "Wójcik");

INSERT INTO `klienci` (`Imie`, `Nazwisko`, `Mail`) VALUES 
("Tomasz", "Lewandowski", "tomaszlewandowski@gmail.com"),
("Monika", "Kamińska", "monikakaminska@wp.pl"),
("Paweł", "Jankowski", "paweljankowski@onet.pl"),
("Agnieszka", "Dąbrowska", "agnieszkadabrowska@wp.pl"),
("Marcin", "Sikora", "marcisikora@gmail.com");

INSERT INTO `filmy` (`Tytul`, `Rezyser`, `Czas_trwania_min`) VALUES
("Incepcja", "Christopher Nolan", 148),
("Forrest Gump", "Robert Zemeckis", 142),
("Skazani na Shawshank", "Frank Darabont", 142),
("Gladiator", "Ridley Scott", 155),
("Pulp Fiction", "Quentin Tarantino", 154);

INSERT INTO `rodzaj_filmu` (`Nazwa`) VALUES 
("Thriller"),
("Komedia"),
("Dramat"),
("Dramat historyczny"),
("Kryinał");

 INSERT INTO `sale` (`Ilosc_miejsc`) VALUES
 (300),
 (250),
 (150),
 (170),
 (200);