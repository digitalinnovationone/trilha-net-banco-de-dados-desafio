CREATE DATABASE [Filmes]
GO
USE [Filmes]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Atores](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PrimeiroNome] [varchar](20) NULL,
	[UltimoNome] [varchar](20) NULL,
	[Genero] [varchar](1) NULL,
 CONSTRAINT [PK_actor] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ElencoFilme](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdAtor] [int] NOT NULL,
	[IdFilme] [int] NULL,
	[Papel] [varchar](30) NULL,
 CONSTRAINT [PK_ElencoFilme] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Filmes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](50) NULL,
	[Ano] [int] NULL,
	[Duracao] [int] NULL,
 CONSTRAINT [PK_movie] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FilmesGenero]    Script Date: 08/05/2022 23:14:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FilmesGenero](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdGenero] [int] NULL,
	[IdFilme] [int] NULL,
 CONSTRAINT [PK_FilmesGenero] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Generos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Genero] [varchar](20) NULL,
 CONSTRAINT [PK_genres] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Atores] ON 
GO
INSERT [dbo].[Atores] ([Id], [PrimeiroNome], [UltimoNome], [Genero]) VALUES (1, N'James', N'Stewart', N'M')
GO
INSERT [dbo].[Atores] ([Id], [PrimeiroNome], [UltimoNome], [Genero]) VALUES (2, N'Deborah', N'Kerr', N'F')
GO
INSERT [dbo].[Atores] ([Id], [PrimeiroNome], [UltimoNome], [Genero]) VALUES (3, N'Peter', N'OToole', N'M')
GO
INSERT [dbo].[Atores] ([Id], [PrimeiroNome], [UltimoNome], [Genero]) VALUES (4, N'Robert', N'DeNiro', N'M')
GO
INSERT [dbo].[Atores] ([Id], [PrimeiroNome], [UltimoNome], [Genero]) VALUES (6, N'Harrison', N'Ford', N'M')
GO
INSERT [dbo].[Atores] ([Id], [PrimeiroNome], [UltimoNome], [Genero]) VALUES (7, N'Stephen', N'Baldwin', N'M')
GO
INSERT [dbo].[Atores] ([Id], [PrimeiroNome], [UltimoNome], [Genero]) VALUES (8, N'Jack', N'Nicholson', N'M')
GO
INSERT [dbo].[Atores] ([Id], [PrimeiroNome], [UltimoNome], [Genero]) VALUES (9, N'Mark', N'Wahlberg', N'M')
GO
INSERT [dbo].[Atores] ([Id], [PrimeiroNome], [UltimoNome], [Genero]) VALUES (10, N'Woody', N'Allen', N'M')
GO
INSERT [dbo].[Atores] ([Id], [PrimeiroNome], [UltimoNome], [Genero]) VALUES (11, N'Claire', N'Danes', N'F')
GO
INSERT [dbo].[Atores] ([Id], [PrimeiroNome], [UltimoNome], [Genero]) VALUES (12, N'Tim', N'Robbins', N'M')
GO
INSERT [dbo].[Atores] ([Id], [PrimeiroNome], [UltimoNome], [Genero]) VALUES (13, N'Kevin', N'Spacey', N'M')
GO
INSERT [dbo].[Atores] ([Id], [PrimeiroNome], [UltimoNome], [Genero]) VALUES (14, N'Kate', N'Winslet', N'F')
GO
INSERT [dbo].[Atores] ([Id], [PrimeiroNome], [UltimoNome], [Genero]) VALUES (15, N'Robin', N'Williams', N'M')
GO
INSERT [dbo].[Atores] ([Id], [PrimeiroNome], [UltimoNome], [Genero]) VALUES (16, N'Jon', N'Voight', N'M')
GO
INSERT [dbo].[Atores] ([Id], [PrimeiroNome], [UltimoNome], [Genero]) VALUES (17, N'Ewan', N'McGregor', N'M')
GO
INSERT [dbo].[Atores] ([Id], [PrimeiroNome], [UltimoNome], [Genero]) VALUES (18, N'Christian', N'Bale', N'M')
GO
INSERT [dbo].[Atores] ([Id], [PrimeiroNome], [UltimoNome], [Genero]) VALUES (19, N'Maggie', N'Gyllenhaal', N'F')
GO
INSERT [dbo].[Atores] ([Id], [PrimeiroNome], [UltimoNome], [Genero]) VALUES (20, N'Dev', N'Patel', N'M')
GO
INSERT [dbo].[Atores] ([Id], [PrimeiroNome], [UltimoNome], [Genero]) VALUES (21, N'Sigourney', N'Weaver', N'F')
GO
INSERT [dbo].[Atores] ([Id], [PrimeiroNome], [UltimoNome], [Genero]) VALUES (22, N'David', N'Aston', N'M')
GO
INSERT [dbo].[Atores] ([Id], [PrimeiroNome], [UltimoNome], [Genero]) VALUES (23, N'Ali', N'Astin', N'F')
GO
SET IDENTITY_INSERT [dbo].[Atores] OFF
GO
SET IDENTITY_INSERT [dbo].[ElencoFilme] ON 
GO
INSERT [dbo].[ElencoFilme] ([Id], [IdAtor], [IdFilme], [Papel]) VALUES (1, 1, 1, N'John Scottie Ferguson')
GO
INSERT [dbo].[ElencoFilme] ([Id], [IdAtor], [IdFilme], [Papel]) VALUES (2, 2, 2, N'Miss Giddens')
GO
INSERT [dbo].[ElencoFilme] ([Id], [IdAtor], [IdFilme], [Papel]) VALUES (3, 3, 3, N'T.E. Lawrence')
GO
INSERT [dbo].[ElencoFilme] ([Id], [IdAtor], [IdFilme], [Papel]) VALUES (4, 4, 4, N'Michael')
GO
INSERT [dbo].[ElencoFilme] ([Id], [IdAtor], [IdFilme], [Papel]) VALUES (5, 6, 6, N'Rick Deckard')
GO
INSERT [dbo].[ElencoFilme] ([Id], [IdAtor], [IdFilme], [Papel]) VALUES (6, 7, 8, N'McManus')
GO
INSERT [dbo].[ElencoFilme] ([Id], [IdAtor], [IdFilme], [Papel]) VALUES (7, 9, 10, N'Eddie Adams')
GO
INSERT [dbo].[ElencoFilme] ([Id], [IdAtor], [IdFilme], [Papel]) VALUES (8, 10, 11, N'Alvy Singer')
GO
INSERT [dbo].[ElencoFilme] ([Id], [IdAtor], [IdFilme], [Papel]) VALUES (9, 11, 12, N'San')
GO
INSERT [dbo].[ElencoFilme] ([Id], [IdAtor], [IdFilme], [Papel]) VALUES (10, 12, 13, N'Andy Dufresne')
GO
INSERT [dbo].[ElencoFilme] ([Id], [IdAtor], [IdFilme], [Papel]) VALUES (11, 13, 14, N'Lester Burnham')
GO
INSERT [dbo].[ElencoFilme] ([Id], [IdAtor], [IdFilme], [Papel]) VALUES (12, 14, 15, N'Rose DeWitt Bukater')
GO
INSERT [dbo].[ElencoFilme] ([Id], [IdAtor], [IdFilme], [Papel]) VALUES (13, 15, 16, N'Sean Maguire')
GO
INSERT [dbo].[ElencoFilme] ([Id], [IdAtor], [IdFilme], [Papel]) VALUES (14, 16, 17, N'Ed')
GO
INSERT [dbo].[ElencoFilme] ([Id], [IdAtor], [IdFilme], [Papel]) VALUES (15, 17, 18, N'Renton')
GO
INSERT [dbo].[ElencoFilme] ([Id], [IdAtor], [IdFilme], [Papel]) VALUES (16, 19, 20, N'Elizabeth Darko')
GO
INSERT [dbo].[ElencoFilme] ([Id], [IdAtor], [IdFilme], [Papel]) VALUES (17, 20, 21, N'Older Jamal')
GO
INSERT [dbo].[ElencoFilme] ([Id], [IdAtor], [IdFilme], [Papel]) VALUES (18, 21, 22, N'Ripley')
GO
INSERT [dbo].[ElencoFilme] ([Id], [IdAtor], [IdFilme], [Papel]) VALUES (19, 13, 23, N'Bobby Darin')
GO
INSERT [dbo].[ElencoFilme] ([Id], [IdAtor], [IdFilme], [Papel]) VALUES (20, 8, 9, N'J.J. Gittes')
GO
INSERT [dbo].[ElencoFilme] ([Id], [IdAtor], [IdFilme], [Papel]) VALUES (21, 18, 19, N'Alfred Borden')
GO
SET IDENTITY_INSERT [dbo].[ElencoFilme] OFF
GO
SET IDENTITY_INSERT [dbo].[Filmes] ON 
GO
INSERT [dbo].[Filmes] ([Id], [Nome], [Ano], [Duracao]) VALUES (1, N'Um Corpo que Cai', 1958, 128)
GO
INSERT [dbo].[Filmes] ([Id], [Nome], [Ano], [Duracao]) VALUES (2, N'Os Inocentes', 1961, 100)
GO
INSERT [dbo].[Filmes] ([Id], [Nome], [Ano], [Duracao]) VALUES (3, N'Lawrence da Arábia', 1962, 216)
GO
INSERT [dbo].[Filmes] ([Id], [Nome], [Ano], [Duracao]) VALUES (4, N'O Franco Atirador', 1978, 183)
GO
INSERT [dbo].[Filmes] ([Id], [Nome], [Ano], [Duracao]) VALUES (5, N'Amadeus', 1984, 160)
GO
INSERT [dbo].[Filmes] ([Id], [Nome], [Ano], [Duracao]) VALUES (6, N'Blade Runner', 1982, 117)
GO
INSERT [dbo].[Filmes] ([Id], [Nome], [Ano], [Duracao]) VALUES (7, N'De Olhos Bem Fechados', 1999, 159)
GO
INSERT [dbo].[Filmes] ([Id], [Nome], [Ano], [Duracao]) VALUES (8, N'Os Suspeitos', 1995, 106)
GO
INSERT [dbo].[Filmes] ([Id], [Nome], [Ano], [Duracao]) VALUES (9, N'Chinatown', 1974, 130)
GO
INSERT [dbo].[Filmes] ([Id], [Nome], [Ano], [Duracao]) VALUES (10, N'Boogie Nights - Prazer Sem Limites', 1997, 155)
GO
INSERT [dbo].[Filmes] ([Id], [Nome], [Ano], [Duracao]) VALUES (11, N'Noivo Neurótico, Noiva Nervosa', 1977, 93)
GO
INSERT [dbo].[Filmes] ([Id], [Nome], [Ano], [Duracao]) VALUES (12, N'Princesa Mononoke', 1997, 134)
GO
INSERT [dbo].[Filmes] ([Id], [Nome], [Ano], [Duracao]) VALUES (13, N'Um Sonho de Liberdade', 1994, 142)
GO
INSERT [dbo].[Filmes] ([Id], [Nome], [Ano], [Duracao]) VALUES (14, N'Beleza Americana', 1999, 122)
GO
INSERT [dbo].[Filmes] ([Id], [Nome], [Ano], [Duracao]) VALUES (15, N'Titanic', 1997, 194)
GO
INSERT [dbo].[Filmes] ([Id], [Nome], [Ano], [Duracao]) VALUES (16, N'Gênio Indomável', 1997, 126)
GO
INSERT [dbo].[Filmes] ([Id], [Nome], [Ano], [Duracao]) VALUES (17, N'Amargo pesadelo', 1972, 109)
GO
INSERT [dbo].[Filmes] ([Id], [Nome], [Ano], [Duracao]) VALUES (18, N'Trainspotting - Sem Limites', 1996, 94)
GO
INSERT [dbo].[Filmes] ([Id], [Nome], [Ano], [Duracao]) VALUES (19, N'O Grande Truque', 2006, 130)
GO
INSERT [dbo].[Filmes] ([Id], [Nome], [Ano], [Duracao]) VALUES (20, N'Donnie Darko', 2001, 113)
GO
INSERT [dbo].[Filmes] ([Id], [Nome], [Ano], [Duracao]) VALUES (21, N'Quem Quer Ser um Milionário?', 2008, 120)
GO
INSERT [dbo].[Filmes] ([Id], [Nome], [Ano], [Duracao]) VALUES (22, N'Aliens, O Resgate', 1986, 137)
GO
INSERT [dbo].[Filmes] ([Id], [Nome], [Ano], [Duracao]) VALUES (23, N'Uma Vida sem Limites', 2004, 118)
GO
INSERT [dbo].[Filmes] ([Id], [Nome], [Ano], [Duracao]) VALUES (24, N'Avatar', 2009, 162)
GO
INSERT [dbo].[Filmes] ([Id], [Nome], [Ano], [Duracao]) VALUES (25, N'Coração Valente', 1995, 178)
GO
INSERT [dbo].[Filmes] ([Id], [Nome], [Ano], [Duracao]) VALUES (26, N'Os Sete Samurais', 1954, 207)
GO
INSERT [dbo].[Filmes] ([Id], [Nome], [Ano], [Duracao]) VALUES (27, N'A Viagem de Chihiro', 2001, 125)
GO
INSERT [dbo].[Filmes] ([Id], [Nome], [Ano], [Duracao]) VALUES (28, N'De Volta para o Futuro', 1985, 116)
GO
SET IDENTITY_INSERT [dbo].[Filmes] OFF
GO
SET IDENTITY_INSERT [dbo].[FilmesGenero] ON 
GO
INSERT [dbo].[FilmesGenero] ([Id], [IdGenero], [IdFilme]) VALUES (1, 1, 22)
GO
INSERT [dbo].[FilmesGenero] ([Id], [IdGenero], [IdFilme]) VALUES (2, 2, 17)
GO
INSERT [dbo].[FilmesGenero] ([Id], [IdGenero], [IdFilme]) VALUES (3, 2, 3)
GO
INSERT [dbo].[FilmesGenero] ([Id], [IdGenero], [IdFilme]) VALUES (4, 3, 12)
GO
INSERT [dbo].[FilmesGenero] ([Id], [IdGenero], [IdFilme]) VALUES (5, 5, 11)
GO
INSERT [dbo].[FilmesGenero] ([Id], [IdGenero], [IdFilme]) VALUES (6, 6, 8)
GO
INSERT [dbo].[FilmesGenero] ([Id], [IdGenero], [IdFilme]) VALUES (7, 6, 13)
GO
INSERT [dbo].[FilmesGenero] ([Id], [IdGenero], [IdFilme]) VALUES (8, 7, 26)
GO
INSERT [dbo].[FilmesGenero] ([Id], [IdGenero], [IdFilme]) VALUES (9, 7, 28)
GO
INSERT [dbo].[FilmesGenero] ([Id], [IdGenero], [IdFilme]) VALUES (10, 7, 18)
GO
INSERT [dbo].[FilmesGenero] ([Id], [IdGenero], [IdFilme]) VALUES (11, 7, 21)
GO
INSERT [dbo].[FilmesGenero] ([Id], [IdGenero], [IdFilme]) VALUES (12, 8, 2)
GO
INSERT [dbo].[FilmesGenero] ([Id], [IdGenero], [IdFilme]) VALUES (13, 9, 23)
GO
INSERT [dbo].[FilmesGenero] ([Id], [IdGenero], [IdFilme]) VALUES (14, 10, 7)
GO
INSERT [dbo].[FilmesGenero] ([Id], [IdGenero], [IdFilme]) VALUES (15, 10, 27)
GO
INSERT [dbo].[FilmesGenero] ([Id], [IdGenero], [IdFilme]) VALUES (16, 10, 1)
GO
INSERT [dbo].[FilmesGenero] ([Id], [IdGenero], [IdFilme]) VALUES (17, 11, 14)
GO
INSERT [dbo].[FilmesGenero] ([Id], [IdGenero], [IdFilme]) VALUES (18, 12, 6)
GO
INSERT [dbo].[FilmesGenero] ([Id], [IdGenero], [IdFilme]) VALUES (19, 13, 4)
GO
SET IDENTITY_INSERT [dbo].[FilmesGenero] OFF
GO
SET IDENTITY_INSERT [dbo].[Generos] ON 
GO
INSERT [dbo].[Generos] ([Id], [Genero]) VALUES (1, N'Ação')
GO
INSERT [dbo].[Generos] ([Id], [Genero]) VALUES (2, N'Aventura')
GO
INSERT [dbo].[Generos] ([Id], [Genero]) VALUES (3, N'Animação')
GO
INSERT [dbo].[Generos] ([Id], [Genero]) VALUES (4, N'Biografia')
GO
INSERT [dbo].[Generos] ([Id], [Genero]) VALUES (5, N'Comédia')
GO
INSERT [dbo].[Generos] ([Id], [Genero]) VALUES (6, N'Crime')
GO
INSERT [dbo].[Generos] ([Id], [Genero]) VALUES (7, N'Drama')
GO
INSERT [dbo].[Generos] ([Id], [Genero]) VALUES (8, N'Horror')
GO
INSERT [dbo].[Generos] ([Id], [Genero]) VALUES (9, N'Musical')
GO
INSERT [dbo].[Generos] ([Id], [Genero]) VALUES (10, N'Mistério')
GO
INSERT [dbo].[Generos] ([Id], [Genero]) VALUES (11, N'Romance')
GO
INSERT [dbo].[Generos] ([Id], [Genero]) VALUES (12, N'Suspense')
GO
INSERT [dbo].[Generos] ([Id], [Genero]) VALUES (13, N'Guerra')
GO
SET IDENTITY_INSERT [dbo].[Generos] OFF
GO
ALTER TABLE [dbo].[ElencoFilme]  WITH CHECK ADD  CONSTRAINT [FK__ElencoFil__IdAto__2C3393D0] FOREIGN KEY([IdAtor])
REFERENCES [dbo].[Atores] ([Id])
GO
ALTER TABLE [dbo].[ElencoFilme] CHECK CONSTRAINT [FK__ElencoFil__IdAto__2C3393D0]
GO
ALTER TABLE [dbo].[ElencoFilme]  WITH CHECK ADD  CONSTRAINT [FK__ElencoFil__IdFil__2D27B809] FOREIGN KEY([IdFilme])
REFERENCES [dbo].[Filmes] ([Id])
GO
ALTER TABLE [dbo].[ElencoFilme] CHECK CONSTRAINT [FK__ElencoFil__IdFil__2D27B809]
GO
ALTER TABLE [dbo].[FilmesGenero]  WITH CHECK ADD  CONSTRAINT [FK__FilmesGen__IdFil__2F10007B] FOREIGN KEY([IdFilme])
REFERENCES [dbo].[Filmes] ([Id])
GO
ALTER TABLE [dbo].[FilmesGenero] CHECK CONSTRAINT [FK__FilmesGen__IdFil__2F10007B]
GO
ALTER TABLE [dbo].[FilmesGenero]  WITH CHECK ADD  CONSTRAINT [FK__FilmesGen__IdGen__2E1BDC42] FOREIGN KEY([IdGenero])
REFERENCES [dbo].[Generos] ([Id])
GO
ALTER TABLE [dbo].[FilmesGenero] CHECK CONSTRAINT [FK__FilmesGen__IdGen__2E1BDC42]
GO
