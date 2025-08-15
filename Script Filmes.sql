-- Cria o banco se ainda não existir (sem GO)
IF DB_ID(N'Filmes') IS NULL
    CREATE DATABASE [Filmes];

SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;

------------------------------------------------------------
-- DROP (se existir) - ordem segura (FKs primeiro)
------------------------------------------------------------
IF OBJECT_ID(N'[Filmes].[dbo].[ElencoFilme]', 'U') IS NOT NULL DROP TABLE [Filmes].[dbo].[ElencoFilme];
IF OBJECT_ID(N'[Filmes].[dbo].[FilmesGenero]', 'U') IS NOT NULL DROP TABLE [Filmes].[dbo].[FilmesGenero];
IF OBJECT_ID(N'[Filmes].[dbo].[Atores]', 'U') IS NOT NULL DROP TABLE [Filmes].[dbo].[Atores];
IF OBJECT_ID(N'[Filmes].[dbo].[Filmes]', 'U') IS NOT NULL DROP TABLE [Filmes].[dbo].[Filmes];
IF OBJECT_ID(N'[Filmes].[dbo].[Generos]', 'U') IS NOT NULL DROP TABLE [Filmes].[dbo].[Generos];

------------------------------------------------------------
-- CREATE TABLES (sem WITH (...) nos índices)
------------------------------------------------------------
CREATE TABLE [Filmes].[dbo].[Atores](
    [Id] INT IDENTITY(1,1) NOT NULL,
    [PrimeiroNome] VARCHAR(20) NULL,
    [UltimoNome] VARCHAR(20) NULL,
    [Genero] VARCHAR(1) NULL,
    CONSTRAINT [PK_actor] PRIMARY KEY CLUSTERED ([Id] ASC)
);

CREATE TABLE [Filmes].[dbo].[Filmes](
    [Id] INT IDENTITY(1,1) NOT NULL,
    [Nome] VARCHAR(50) NULL,
    [Ano] INT NULL,
    [Duracao] INT NULL,
    CONSTRAINT [PK_movie] PRIMARY KEY CLUSTERED ([Id] ASC)
);

CREATE TABLE [Filmes].[dbo].[FilmesGenero](
    [Id] INT IDENTITY(1,1) NOT NULL,
    [IdGenero] INT NULL,
    [IdFilme] INT NULL,
    CONSTRAINT [PK_FilmesGenero] PRIMARY KEY CLUSTERED ([Id] ASC)
);

CREATE TABLE [Filmes].[dbo].[Generos](
    [Id] INT IDENTITY(1,1) NOT NULL,
    [Genero] VARCHAR(20) NULL,
    CONSTRAINT [PK_genres] PRIMARY KEY CLUSTERED ([Id] ASC)
);

CREATE TABLE [Filmes].[dbo].[ElencoFilme](
    [Id] INT IDENTITY(1,1) NOT NULL,
    [IdAtor] INT NOT NULL,
    [IdFilme] INT NULL,
    [Papel] VARCHAR(30) NULL,
    CONSTRAINT [PK_ElencoFilme] PRIMARY KEY CLUSTERED ([Id] ASC)
);

------------------------------------------------------------
-- INSERTS (com IDENTITY_INSERT e múltiplas linhas)
------------------------------------------------------------

SET IDENTITY_INSERT [Filmes].[dbo].[Atores] ON;
INSERT INTO [Filmes].[dbo].[Atores] ([Id], [PrimeiroNome], [UltimoNome], [Genero]) VALUES
(1, N'James', N'Stewart', N'M'),
(2, N'Deborah', N'Kerr', N'F'),
(3, N'Peter', N'OToole', N'M'),
(4, N'Robert', N'DeNiro', N'M'),
(6, N'Harrison', N'Ford', N'M'),
(7, N'Stephen', N'Baldwin', N'M'),
(8, N'Jack', N'Nicholson', N'M'),
(9, N'Mark', N'Wahlberg', N'M'),
(10, N'Woody', N'Allen', N'M'),
(11, N'Claire', N'Danes', N'F'),
(12, N'Tim', N'Robbins', N'M'),
(13, N'Kevin', N'Spacey', N'M'),
(14, N'Kate', N'Winslet', N'F'),
(15, N'Robin', N'Williams', N'M'),
(16, N'Jon', N'Voight', N'M'),
(17, N'Ewan', N'McGregor', N'M'),
(18, N'Christian', N'Bale', N'M'),
(19, N'Maggie', N'Gyllenhaal', N'F'),
(20, N'Dev', N'Patel', N'M'),
(21, N'Sigourney', N'Weaver', N'F'),
(22, N'David', N'Aston', N'M'),
(23, N'Ali', N'Astin', N'F');
SET IDENTITY_INSERT [Filmes].[dbo].[Atores] OFF;

SET IDENTITY_INSERT [Filmes].[dbo].[Filmes] ON;
INSERT INTO [Filmes].[dbo].[Filmes] ([Id], [Nome], [Ano], [Duracao]) VALUES
(1, N'Um Corpo que Cai', 1958, 128),
(2, N'Os Inocentes', 1961, 100),
(3, N'Lawrence da Arábia', 1962, 216),
(4, N'O Franco Atirador', 1978, 183),
(5, N'Amadeus', 1984, 160),
(6, N'Blade Runner', 1982, 117),
(7, N'De Olhos Bem Fechados', 1999, 159),
(8, N'Os Suspeitos', 1995, 106),
(9, N'Chinatown', 1974, 130),
(10, N'Boogie Nights - Prazer Sem Limites', 1997, 155),
(11, N'Noivo Neurótico, Noiva Nervosa', 1977, 93),
(12, N'Princesa Mononoke', 1997, 134),
(13, N'Um Sonho de Liberdade', 1994, 142),
(14, N'Beleza Americana', 1999, 122),
(15, N'Titanic', 1997, 194),
(16, N'Gênio Indomável', 1997, 126),
(17, N'Amargo pesadelo', 1972, 109),
(18, N'Trainspotting - Sem Limites', 1996, 94),
(19, N'O Grande Truque', 2006, 130),
(20, N'Donnie Darko', 2001, 113),
(21, N'Quem Quer Ser um Milionário?', 2008, 120),
(22, N'Aliens, O Resgate', 1986, 137),
(23, N'Uma Vida sem Limites', 2004, 118),
(24, N'Avatar', 2009, 162),
(25, N'Coração Valente', 1995, 178),
(26, N'Os Sete Samurais', 1954, 207),
(27, N'A Viagem de Chihiro', 2001, 125),
(28, N'De Volta para o Futuro', 1985, 116);
SET IDENTITY_INSERT [Filmes].[dbo].[Filmes] OFF;

SET IDENTITY_INSERT [Filmes].[dbo].[FilmesGenero] ON;
INSERT INTO [Filmes].[dbo].[FilmesGenero] ([Id], [IdGenero], [IdFilme]) VALUES
(1, 1, 22),
(2, 2, 17),
(3, 2, 3),
(4, 3, 12),
(5, 5, 11),
(6, 6, 8),
(7, 6, 13),
(8, 7, 26),
(9, 7, 28),
(10, 7, 18),
(11, 7, 21),
(12, 8, 2),
(13, 9, 23),
(14, 10, 7),
(15, 10, 27),
(16, 10, 1),
(17, 11, 14),
(18, 12, 6),
(19, 13, 4);
SET IDENTITY_INSERT [Filmes].[dbo].[FilmesGenero] OFF;

SET IDENTITY_INSERT [Filmes].[dbo].[Generos] ON;
INSERT INTO [Filmes].[dbo].[Generos] ([Id], [Genero]) VALUES
(1, N'Ação'),
(2, N'Aventura'),
(3, N'Animação'),
(4, N'Biografia'),
(5, N'Comédia'),
(6, N'Crime'),
(7, N'Drama'),
(8, N'Horror'),
(9, N'Musical'),
(10, N'Mistério'),
(11, N'Romance'),
(12, N'Suspense'),
(13, N'Guerra');
SET IDENTITY_INSERT [Filmes].[dbo].[Generos] OFF;

------------------------------------------------------------
-- FOREIGN KEYS (com ; antes do WITH CHECK)
------------------------------------------------------------
ALTER TABLE [Filmes].[dbo].[ElencoFilme]
    WITH CHECK ADD CONSTRAINT [FK__ElencoFil__IdAto__2C3393D0]
    FOREIGN KEY([IdAtor]) REFERENCES [Filmes].[dbo].[Atores] ([Id]);

ALTER TABLE [Filmes].[dbo].[ElencoFilme]
    CHECK CONSTRAINT [FK__ElencoFil__IdAto__2C3393D0];

ALTER TABLE [Filmes].[dbo].[ElencoFilme]
    WITH CHECK ADD CONSTRAINT [FK__ElencoFil__IdFil__2D27B809]
    FOREIGN KEY([IdFilme]) REFERENCES [Filmes].[dbo].[Filmes] ([Id]);

ALTER TABLE [Filmes].[dbo].[ElencoFilme]
    CHECK CONSTRAINT [FK__ElencoFil__IdFil__2D27B809];

ALTER TABLE [Filmes].[dbo].[FilmesGenero]
    WITH CHECK ADD CONSTRAINT [FK__FilmesGen__IdFil__2F10007B]
    FOREIGN KEY([IdFilme]) REFERENCES [Filmes].[dbo].[Filmes] ([Id]);

ALTER TABLE [Filmes].[dbo].[FilmesGenero]
    CHECK CONSTRAINT [FK__FilmesGen__IdFil__2F10007B];

ALTER TABLE [Filmes].[dbo].[FilmesGenero]
    WITH CHECK ADD CONSTRAINT [FK__FilmesGen__IdGen__2E1BDC42]
    FOREIGN KEY([IdGenero]) REFERENCES [Filmes].[dbo].[Generos] ([Id]);

ALTER TABLE [Filmes].[dbo].[FilmesGenero]
    CHECK CONSTRAINT [FK__FilmesGen__IdGen__2E1BDC42];
