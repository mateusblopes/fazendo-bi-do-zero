USE [DM_ELEICOES]
GO
/****** Object:  Table [dbo].[DIM_CANDIDATO]    Script Date: 19/12/2016 19:02:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DIM_CANDIDATO](
	[SKEY_DIM_CANDIDATO] [int] IDENTITY(1,1) NOT NULL,
	[ID_CANDIDATO] [int] NULL,
	[NOME_CANDIDATO] [nvarchar](100) NULL,
	[NOME_URNA_CANDIDATO] [nvarchar](100) NULL,
	[DESC_CARGO] [nvarchar](100) NULL,
	[SIGLA_PARTIDO] [nvarchar](100) NULL,
	[NOME_PARTIDO] [nvarchar](100) NULL,
	[DATA_INICIO] [date] NULL,
	[DATA_FIM] [date] NULL,
 CONSTRAINT [PK_DIM_CANDIDATO] PRIMARY KEY CLUSTERED 
(
	[SKEY_DIM_CANDIDATO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DIM_DATA]    Script Date: 19/12/2016 19:02:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DIM_DATA](
	[SKEY_DIM_DATA] [int] IDENTITY(1,1) NOT NULL,
	[DIA] [int] NULL,
	[MES] [int] NULL,
	[ANO] [int] NULL,
 CONSTRAINT [PK_DIM_DATA] PRIMARY KEY CLUSTERED 
(
	[SKEY_DIM_DATA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DIM_ELEICAO]    Script Date: 19/12/2016 19:02:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DIM_ELEICAO](
	[SKEY_DIM_ELEICAO] [int] IDENTITY(1,1) NOT NULL,
	[ID_ELEICAO] [int] NULL,
	[NUMERO_TURNO_ELEICAO] [int] NULL,
	[ANO_ELEICAO] [int] NULL,
	[DESC_ELEICAO] [nvarchar](100) NULL,
	[NOME_MUNICIPIO] [nvarchar](100) NULL,
	[SIGLA_UF] [nvarchar](100) NULL,
	[REGIAO] [nvarchar](100) NULL,
	[PAIS] [nvarchar](100) NULL,
	[DATA_INICIO] [date] NULL,
	[DATA_FIM] [date] NULL,
 CONSTRAINT [PK_DIM_ELEICAO] PRIMARY KEY CLUSTERED 
(
	[SKEY_DIM_ELEICAO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DIM_HORA]    Script Date: 19/12/2016 19:02:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DIM_HORA](
	[SKEY_DIM_HORA] [int] IDENTITY(1,1) NOT NULL,
	[HORA] [int] NULL,
	[MINUTO] [int] NULL,
	[SEGUNDO] [int] NULL,
 CONSTRAINT [PK_DIM_HORA] PRIMARY KEY CLUSTERED 
(
	[SKEY_DIM_HORA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DIM_PARTIDOS]    Script Date: 19/12/2016 19:02:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DIM_PARTIDOS](
	[SKEY_DIM_PARTIDOS] [int] IDENTITY(1,1) NOT NULL,
	[ID_PARTIDO] [int] NULL,
	[SIGLA_PARTIDO] [nvarchar](100) NULL,
	[NOME_PARTIDO] [nvarchar](100) NULL,
	[DATA_INICIO] [date] NULL,
	[DATA_FIM] [date] NULL,
 CONSTRAINT [PK_DIM_PARTIDOS] PRIMARY KEY CLUSTERED 
(
	[SKEY_DIM_PARTIDOS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DIM_SITU_CAND]    Script Date: 19/12/2016 19:02:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DIM_SITU_CAND](
	[SKEY_DIM_SITUACAO_CANDIDATO] [int] NOT NULL,
	[ID_CANDIDATO] [int] NULL,
	[DESC_SIT_CAND_SUPERIOR] [nvarchar](100) NOT NULL,
	[DESC_SIT_CANDIDATO] [nvarchar](100) NOT NULL,
	[DESC_SIT_CAND_TOT] [nvarchar](100) NOT NULL,
	[DATA_INICIO] [date] NULL,
	[DATA_FIM] [date] NULL,
 CONSTRAINT [PK_DIM_SITU_CAND] PRIMARY KEY CLUSTERED 
(
	[SKEY_DIM_SITUACAO_CANDIDATO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FATO_APURACAO_ELEICOES]    Script Date: 19/12/2016 19:02:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FATO_APURACAO_ELEICOES](
	[DIM_PARTIDOS_SKEY_DIM_PARTIDOS] [int] NOT NULL,
	[DIM_CANDIDATO_SKEY_DIM_CANDIDATO] [int] NOT NULL,
	[DIM_ELEICAO_SKEY_DIM_ELEICAO] [int] NOT NULL,
	[DIM_DATA_SKEY_DIM_DATA] [int] NOT NULL,
	[QUANTIDADE_VOTOS] [int] NOT NULL,
	[DATA_CARGA] [date] NULL,
	[DIM_SITU_CAND_SKEY_DIM_SITU_CAND] [int] NOT NULL
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[FATO_APURACAO_ELEICOES]  WITH CHECK ADD  CONSTRAINT [FK_FATO_APURACAO_ELEICOES_DIM_CANDIDATO] FOREIGN KEY([DIM_CANDIDATO_SKEY_DIM_CANDIDATO])
REFERENCES [dbo].[DIM_CANDIDATO] ([SKEY_DIM_CANDIDATO])
GO
ALTER TABLE [dbo].[FATO_APURACAO_ELEICOES] CHECK CONSTRAINT [FK_FATO_APURACAO_ELEICOES_DIM_CANDIDATO]
GO
ALTER TABLE [dbo].[FATO_APURACAO_ELEICOES]  WITH CHECK ADD  CONSTRAINT [FK_FATO_APURACAO_ELEICOES_DIM_DATA] FOREIGN KEY([DIM_DATA_SKEY_DIM_DATA])
REFERENCES [dbo].[DIM_DATA] ([SKEY_DIM_DATA])
GO
ALTER TABLE [dbo].[FATO_APURACAO_ELEICOES] CHECK CONSTRAINT [FK_FATO_APURACAO_ELEICOES_DIM_DATA]
GO
ALTER TABLE [dbo].[FATO_APURACAO_ELEICOES]  WITH CHECK ADD  CONSTRAINT [FK_FATO_APURACAO_ELEICOES_DIM_ELEICAO] FOREIGN KEY([DIM_ELEICAO_SKEY_DIM_ELEICAO])
REFERENCES [dbo].[DIM_ELEICAO] ([SKEY_DIM_ELEICAO])
GO
ALTER TABLE [dbo].[FATO_APURACAO_ELEICOES] CHECK CONSTRAINT [FK_FATO_APURACAO_ELEICOES_DIM_ELEICAO]
GO
ALTER TABLE [dbo].[FATO_APURACAO_ELEICOES]  WITH CHECK ADD  CONSTRAINT [FK_FATO_APURACAO_ELEICOES_DIM_PARTIDOS] FOREIGN KEY([DIM_PARTIDOS_SKEY_DIM_PARTIDOS])
REFERENCES [dbo].[DIM_PARTIDOS] ([SKEY_DIM_PARTIDOS])
GO
ALTER TABLE [dbo].[FATO_APURACAO_ELEICOES] CHECK CONSTRAINT [FK_FATO_APURACAO_ELEICOES_DIM_PARTIDOS]
GO
ALTER TABLE [dbo].[FATO_APURACAO_ELEICOES]  WITH CHECK ADD  CONSTRAINT [FK_FATO_APURACAO_ELEICOES_DIM_SITU_CAND] FOREIGN KEY([DIM_SITU_CAND_SKEY_DIM_SITU_CAND])
REFERENCES [dbo].[DIM_SITU_CAND] ([SKEY_DIM_SITUACAO_CANDIDATO])
GO
ALTER TABLE [dbo].[FATO_APURACAO_ELEICOES] CHECK CONSTRAINT [FK_FATO_APURACAO_ELEICOES_DIM_SITU_CAND]
GO