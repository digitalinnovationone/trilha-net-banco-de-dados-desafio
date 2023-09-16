CREATE DATABASE Filmes;
 
USE `Filmes`;
 

/* SET ANSI_NULLS ON */
 
/* SET QUOTED_IDENTIFIER ON */
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE `Atores`(
	`Id` int AUTO_INCREMENT NOT NULL,
	`PrimeiroNome` varchar(20) NULL,
	`UltimoNome` varchar(20) NULL,
	`Genero` varchar(1) NULL,
 CONSTRAINT `PK_actor` PRIMARY KEY 
(
	`Id` ASC
) 
);

/* SET ANSI_NULLS ON */
 
/* SET QUOTED_IDENTIFIER ON */
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE `ElencoFilme`(
	`Id` int AUTO_INCREMENT NOT NULL,
	`IdAtor` int NOT NULL,
	`IdFilme` int NULL,
	`Papel` varchar(30) NULL,
 CONSTRAINT `PK_ElencoFilme` PRIMARY KEY 
(
	`Id` ASC
) 
);

/* SET ANSI_NULLS ON */
 
/* SET QUOTED_IDENTIFIER ON */
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE `Filmes`(
	`Id` int AUTO_INCREMENT NOT NULL,
	`Nome` varchar(50) NULL,
	`Ano` int NULL,
	`Duracao` int NULL,
 CONSTRAINT `PK_movie` PRIMARY KEY 
(
	`Id` ASC
) 
);
/* SQLINES DEMO *** le [dbo].[FilmesGenero]    Script Date: 08/05/2022 23:14:01 ******/
/* SET ANSI_NULLS ON */
 
/* SET QUOTED_IDENTIFIER ON */
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE `FilmesGenero`(
	`Id` int AUTO_INCREMENT NOT NULL,
	`IdGenero` int NULL,
	`IdFilme` int NULL,
 CONSTRAINT `PK_FilmesGenero` PRIMARY KEY 
(
	`Id` ASC
) 
);

/* SET ANSI_NULLS ON */
 
/* SET QUOTED_IDENTIFIER ON */
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE `Generos`(
	`Id` int AUTO_INCREMENT NOT NULL,
	`Genero` varchar(20) NULL,
 CONSTRAINT `PK_genres` PRIMARY KEY 
(
	`Id` ASC
) 
);
/* SET IDENTITY_INSERT [dbo].[Atores] ON */ 
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `Atores` (`Id`, `PrimeiroNome`, `UltimoNome`, `Genero`) VALUES (1, 'James', 'Stewart', 'M');
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `Atores` (`Id`, `PrimeiroNome`, `UltimoNome`, `Genero`) VALUES (2, 'Deborah', 'Kerr', 'F');
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `Atores` (`Id`, `PrimeiroNome`, `UltimoNome`, `Genero`) VALUES (3, 'Peter', 'OToole', 'M');
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `Atores` (`Id`, `PrimeiroNome`, `UltimoNome`, `Genero`) VALUES (4, 'Robert', 'DeNiro', 'M');
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `Atores` (`Id`, `PrimeiroNome`, `UltimoNome`, `Genero`) VALUES (6, 'Harrison', 'Ford', 'M');
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `Atores` (`Id`, `PrimeiroNome`, `UltimoNome`, `Genero`) VALUES (7, 'Stephen', 'Baldwin', 'M');
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `Atores` (`Id`, `PrimeiroNome`, `UltimoNome`, `Genero`) VALUES (8, 'Jack', 'Nicholson', 'M');
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `Atores` (`Id`, `PrimeiroNome`, `UltimoNome`, `Genero`) VALUES (9, 'Mark', 'Wahlberg', 'M');
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `Atores` (`Id`, `PrimeiroNome`, `UltimoNome`, `Genero`) VALUES (10, 'Woody', 'Allen', 'M');
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `Atores` (`Id`, `PrimeiroNome`, `UltimoNome`, `Genero`) VALUES (11, 'Claire', 'Danes', 'F');
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `Atores` (`Id`, `PrimeiroNome`, `UltimoNome`, `Genero`) VALUES (12, 'Tim', 'Robbins', 'M');
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `Atores` (`Id`, `PrimeiroNome`, `UltimoNome`, `Genero`) VALUES (13, 'Kevin', 'Spacey', 'M');
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `Atores` (`Id`, `PrimeiroNome`, `UltimoNome`, `Genero`) VALUES (14, 'Kate', 'Winslet', 'F');
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `Atores` (`Id`, `PrimeiroNome`, `UltimoNome`, `Genero`) VALUES (15, 'Robin', 'Williams', 'M');
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `Atores` (`Id`, `PrimeiroNome`, `UltimoNome`, `Genero`) VALUES (16, 'Jon', 'Voight', 'M');
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `Atores` (`Id`, `PrimeiroNome`, `UltimoNome`, `Genero`) VALUES (17, 'Ewan', 'McGregor', 'M');
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `Atores` (`Id`, `PrimeiroNome`, `UltimoNome`, `Genero`) VALUES (18, 'Christian', 'Bale', 'M');
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `Atores` (`Id`, `PrimeiroNome`, `UltimoNome`, `Genero`) VALUES (19, 'Maggie', 'Gyllenhaal', 'F');
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `Atores` (`Id`, `PrimeiroNome`, `UltimoNome`, `Genero`) VALUES (20, 'Dev', 'Patel', 'M');
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `Atores` (`Id`, `PrimeiroNome`, `UltimoNome`, `Genero`) VALUES (21, 'Sigourney', 'Weaver', 'F');
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `Atores` (`Id`, `PrimeiroNome`, `UltimoNome`, `Genero`) VALUES (22, 'David', 'Aston', 'M');
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `Atores` (`Id`, `PrimeiroNome`, `UltimoNome`, `Genero`) VALUES (23, 'Ali', 'Astin', 'F');
 
/* SET IDENTITY_INSERT [dbo].[Atores] OFF */
 
/* SET IDENTITY_INSERT [dbo].[ElencoFilme] ON */ 
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `ElencoFilme` (`Id`, `IdAtor`, `IdFilme`, `Papel`) VALUES (1, 1, 1, 'John Scottie Ferguson');
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `ElencoFilme` (`Id`, `IdAtor`, `IdFilme`, `Papel`) VALUES (2, 2, 2, 'Miss Giddens');
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `ElencoFilme` (`Id`, `IdAtor`, `IdFilme`, `Papel`) VALUES (3, 3, 3, 'T.E. Lawrence');
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `ElencoFilme` (`Id`, `IdAtor`, `IdFilme`, `Papel`) VALUES (4, 4, 4, 'Michael');
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `ElencoFilme` (`Id`, `IdAtor`, `IdFilme`, `Papel`) VALUES (5, 6, 6, 'Rick Deckard');
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `ElencoFilme` (`Id`, `IdAtor`, `IdFilme`, `Papel`) VALUES (6, 7, 8, 'McManus');
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `ElencoFilme` (`Id`, `IdAtor`, `IdFilme`, `Papel`) VALUES (7, 9, 10, 'Eddie Adams');
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `ElencoFilme` (`Id`, `IdAtor`, `IdFilme`, `Papel`) VALUES (8, 10, 11, 'Alvy Singer');
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `ElencoFilme` (`Id`, `IdAtor`, `IdFilme`, `Papel`) VALUES (9, 11, 12, 'San');
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `ElencoFilme` (`Id`, `IdAtor`, `IdFilme`, `Papel`) VALUES (10, 12, 13, 'Andy Dufresne');
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `ElencoFilme` (`Id`, `IdAtor`, `IdFilme`, `Papel`) VALUES (11, 13, 14, 'Lester Burnham');
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `ElencoFilme` (`Id`, `IdAtor`, `IdFilme`, `Papel`) VALUES (12, 14, 15, 'Rose DeWitt Bukater');
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `ElencoFilme` (`Id`, `IdAtor`, `IdFilme`, `Papel`) VALUES (13, 15, 16, 'Sean Maguire');
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `ElencoFilme` (`Id`, `IdAtor`, `IdFilme`, `Papel`) VALUES (14, 16, 17, 'Ed');
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `ElencoFilme` (`Id`, `IdAtor`, `IdFilme`, `Papel`) VALUES (15, 17, 18, 'Renton');
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `ElencoFilme` (`Id`, `IdAtor`, `IdFilme`, `Papel`) VALUES (16, 19, 20, 'Elizabeth Darko');
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `ElencoFilme` (`Id`, `IdAtor`, `IdFilme`, `Papel`) VALUES (17, 20, 21, 'Older Jamal');
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `ElencoFilme` (`Id`, `IdAtor`, `IdFilme`, `Papel`) VALUES (18, 21, 22, 'Ripley');
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `ElencoFilme` (`Id`, `IdAtor`, `IdFilme`, `Papel`) VALUES (19, 13, 23, 'Bobby Darin');
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `ElencoFilme` (`Id`, `IdAtor`, `IdFilme`, `Papel`) VALUES (20, 8, 9, 'J.J. Gittes');
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `ElencoFilme` (`Id`, `IdAtor`, `IdFilme`, `Papel`) VALUES (21, 18, 19, 'Alfred Borden');
 
/* SET IDENTITY_INSERT [dbo].[ElencoFilme] OFF */
 
/* SET IDENTITY_INSERT [dbo].[Filmes] ON */ 
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `Filmes` (`Id`, `Nome`, `Ano`, `Duracao`) VALUES (1, 'Um Corpo que Cai', 1958, 128);
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `Filmes` (`Id`, `Nome`, `Ano`, `Duracao`) VALUES (2, 'Os Inocentes', 1961, 100);
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `Filmes` (`Id`, `Nome`, `Ano`, `Duracao`) VALUES (3, 'Lawrence da Arábia', 1962, 216);
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `Filmes` (`Id`, `Nome`, `Ano`, `Duracao`) VALUES (4, 'O Franco Atirador', 1978, 183);
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `Filmes` (`Id`, `Nome`, `Ano`, `Duracao`) VALUES (5, 'Amadeus', 1984, 160);
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `Filmes` (`Id`, `Nome`, `Ano`, `Duracao`) VALUES (6, 'Blade Runner', 1982, 117);
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `Filmes` (`Id`, `Nome`, `Ano`, `Duracao`) VALUES (7, 'De Olhos Bem Fechados', 1999, 159);
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `Filmes` (`Id`, `Nome`, `Ano`, `Duracao`) VALUES (8, 'Os Suspeitos', 1995, 106);
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `Filmes` (`Id`, `Nome`, `Ano`, `Duracao`) VALUES (9, 'Chinatown', 1974, 130);
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `Filmes` (`Id`, `Nome`, `Ano`, `Duracao`) VALUES (10, 'Boogie Nights - Prazer Sem Limites', 1997, 155);
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `Filmes` (`Id`, `Nome`, `Ano`, `Duracao`) VALUES (11, 'Noivo Neurótico, Noiva Nervosa', 1977, 93);
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `Filmes` (`Id`, `Nome`, `Ano`, `Duracao`) VALUES (12, 'Princesa Mononoke', 1997, 134);
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `Filmes` (`Id`, `Nome`, `Ano`, `Duracao`) VALUES (13, 'Um Sonho de Liberdade', 1994, 142);
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `Filmes` (`Id`, `Nome`, `Ano`, `Duracao`) VALUES (14, 'Beleza Americana', 1999, 122);
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `Filmes` (`Id`, `Nome`, `Ano`, `Duracao`) VALUES (15, 'Titanic', 1997, 194);
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `Filmes` (`Id`, `Nome`, `Ano`, `Duracao`) VALUES (16, 'Gênio Indomável', 1997, 126);
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `Filmes` (`Id`, `Nome`, `Ano`, `Duracao`) VALUES (17, 'Amargo pesadelo', 1972, 109);
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `Filmes` (`Id`, `Nome`, `Ano`, `Duracao`) VALUES (18, 'Trainspotting - Sem Limites', 1996, 94);
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `Filmes` (`Id`, `Nome`, `Ano`, `Duracao`) VALUES (19, 'O Grande Truque', 2006, 130);
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `Filmes` (`Id`, `Nome`, `Ano`, `Duracao`) VALUES (20, 'Donnie Darko', 2001, 113);
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `Filmes` (`Id`, `Nome`, `Ano`, `Duracao`) VALUES (21, 'Quem Quer Ser um Milionário?', 2008, 120);
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `Filmes` (`Id`, `Nome`, `Ano`, `Duracao`) VALUES (22, 'Aliens, O Resgate', 1986, 137);
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `Filmes` (`Id`, `Nome`, `Ano`, `Duracao`) VALUES (23, 'Uma Vida sem Limites', 2004, 118);
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `Filmes` (`Id`, `Nome`, `Ano`, `Duracao`) VALUES (24, 'Avatar', 2009, 162);
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `Filmes` (`Id`, `Nome`, `Ano`, `Duracao`) VALUES (25, 'Coração Valente', 1995, 178);
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `Filmes` (`Id`, `Nome`, `Ano`, `Duracao`) VALUES (26, 'Os Sete Samurais', 1954, 207);
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `Filmes` (`Id`, `Nome`, `Ano`, `Duracao`) VALUES (27, 'A Viagem de Chihiro', 2001, 125);
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `Filmes` (`Id`, `Nome`, `Ano`, `Duracao`) VALUES (28, 'De Volta para o Futuro', 1985, 116);
 
/* SET IDENTITY_INSERT [dbo].[Filmes] OFF */
 
/* SET IDENTITY_INSERT [dbo].[FilmesGenero] ON */ 
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `FilmesGenero` (`Id`, `IdGenero`, `IdFilme`) VALUES (1, 1, 22);
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `FilmesGenero` (`Id`, `IdGenero`, `IdFilme`) VALUES (2, 2, 17);
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `FilmesGenero` (`Id`, `IdGenero`, `IdFilme`) VALUES (3, 2, 3);
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `FilmesGenero` (`Id`, `IdGenero`, `IdFilme`) VALUES (4, 3, 12);
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `FilmesGenero` (`Id`, `IdGenero`, `IdFilme`) VALUES (5, 5, 11);
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `FilmesGenero` (`Id`, `IdGenero`, `IdFilme`) VALUES (6, 6, 8);
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `FilmesGenero` (`Id`, `IdGenero`, `IdFilme`) VALUES (7, 6, 13);
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `FilmesGenero` (`Id`, `IdGenero`, `IdFilme`) VALUES (8, 7, 26);
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `FilmesGenero` (`Id`, `IdGenero`, `IdFilme`) VALUES (9, 7, 28);
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `FilmesGenero` (`Id`, `IdGenero`, `IdFilme`) VALUES (10, 7, 18);
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `FilmesGenero` (`Id`, `IdGenero`, `IdFilme`) VALUES (11, 7, 21);
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `FilmesGenero` (`Id`, `IdGenero`, `IdFilme`) VALUES (12, 8, 2);
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `FilmesGenero` (`Id`, `IdGenero`, `IdFilme`) VALUES (13, 9, 23);
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `FilmesGenero` (`Id`, `IdGenero`, `IdFilme`) VALUES (14, 10, 7);
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `FilmesGenero` (`Id`, `IdGenero`, `IdFilme`) VALUES (15, 10, 27);
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `FilmesGenero` (`Id`, `IdGenero`, `IdFilme`) VALUES (16, 10, 1);
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `FilmesGenero` (`Id`, `IdGenero`, `IdFilme`) VALUES (17, 11, 14);
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `FilmesGenero` (`Id`, `IdGenero`, `IdFilme`) VALUES (18, 12, 6);
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `FilmesGenero` (`Id`, `IdGenero`, `IdFilme`) VALUES (19, 13, 4);
 
/* SET IDENTITY_INSERT [dbo].[FilmesGenero] OFF */
 
/* SET IDENTITY_INSERT [dbo].[Generos] ON */ 
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `Generos` (`Id`, `Genero`) VALUES (1, 'Ação');
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `Generos` (`Id`, `Genero`) VALUES (2, 'Aventura');
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `Generos` (`Id`, `Genero`) VALUES (3, 'Animação');
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `Generos` (`Id`, `Genero`) VALUES (4, 'Biografia');
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `Generos` (`Id`, `Genero`) VALUES (5, 'Comédia');
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `Generos` (`Id`, `Genero`) VALUES (6, 'Crime');
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `Generos` (`Id`, `Genero`) VALUES (7, 'Drama');
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `Generos` (`Id`, `Genero`) VALUES (8, 'Horror');
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `Generos` (`Id`, `Genero`) VALUES (9, 'Musical');
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `Generos` (`Id`, `Genero`) VALUES (10, 'Mistério');
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `Generos` (`Id`, `Genero`) VALUES (11, 'Romance');
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `Generos` (`Id`, `Genero`) VALUES (12, 'Suspense');
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `Generos` (`Id`, `Genero`) VALUES (13, 'Guerra');
 
/* SET IDENTITY_INSERT [dbo].[Generos] OFF */
 
ALTER TABLE `ElencoFilme` ADD  CONSTRAINT `FK__ElencoFil__IdAto__2C3393D0` FOREIGN KEY(`IdAtor`)
REFERENCES `Atores` (`Id`);
 
-- ALTER TABLE `ElencoFilme` CHECK CONSTRAINT `FK__ElencoFil__IdAto__2C3393D0`;
 
ALTER TABLE `ElencoFilme` ADD  CONSTRAINT `FK__ElencoFil__IdFil__2D27B809` FOREIGN KEY(`IdFilme`)
REFERENCES `Filmes` (`Id`);
 
-- ALTER TABLE `ElencoFilme` CHECK CONSTRAINT `FK__ElencoFil__IdFil__2D27B809`;
 
ALTER TABLE `FilmesGenero` ADD  CONSTRAINT `FK__FilmesGen__IdFil__2F10007B` FOREIGN KEY(`IdFilme`)
REFERENCES `Filmes` (`Id`);
 
-- ALTER TABLE `FilmesGenero` CHECK CONSTRAINT `FK__FilmesGen__IdFil__2F10007B`;
 
ALTER TABLE `FilmesGenero` ADD  CONSTRAINT `FK__FilmesGen__IdGen__2E1BDC42` FOREIGN KEY(`IdGenero`)
REFERENCES `Generos` (`Id`);
 
-- ALTER TABLE `FilmesGenero` CHECK CONSTRAINT `FK__FilmesGen__IdGen__2E1BDC42`;
 