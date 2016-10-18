USE [DM_STAGE_1]
GO
/****** Object:  Table [dbo].[VOTACAO_CANDIDATO_MUN_ZONA]    Script Date: 10/18/2016 3:43:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VOTACAO_CANDIDATO_MUN_ZONA](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DATA_GERACAO] [date] NULL,
	[HORA_GERACAO] [time](7) NULL,
	[ANO_ELEICAO] [int] NULL,
	[NUM_TURNO] [int] NULL,
	[DESCRICAO_ELEICAO] [nvarchar](max) NULL,
	[SIGLA_UF] [nvarchar](max) NULL,
	[SIGLA_UE] [nvarchar](max) NULL,
	[CODIGO_MUNICIPIO] [nvarchar](max) NULL,
	[NOME_MUNICIPIO] [nvarchar](max) NULL,
	[NUMERO_ZONA] [int] NULL,
	[CODIGO_CARGO] [nvarchar](max) NULL,
	[NUMERO_CAND] [int] NULL,
	[SQ_CANDIDATO] [nvarchar](max) NULL,
	[NOME_CANDIDATO] [nvarchar](max) NULL,
	[NOME_URNA_CANDIDATO] [nvarchar](max) NULL,
	[DESCRICAO_CARGO] [nvarchar](max) NULL,
	[COD_SIT_CAND_SUPERIOR] [nvarchar](max) NULL,
	[DESC_SIT_CAND_SUPERIOR] [nvarchar](max) NULL,
	[CODIGO_SIT_CANDIDATO] [nvarchar](max) NULL,
	[DESC_SIT_CANDIDATO] [nvarchar](max) NULL,
	[CODIGO_SIT_CAND_TOT] [nvarchar](max) NULL,
	[DESC_SIT_CAND_TOT] [nvarchar](max) NULL,
	[NUMERO_PARTIDO] [int] NULL,
	[SIGLA_PARTIDO] [nvarchar](max) NULL,
	[NOME_PARTIDO] [nvarchar](max) NULL,
	[SEQUENCIAL_LEGENDA] [nvarchar](max) NULL,
	[NOME_COLIGACAO] [nvarchar](max) NULL,
	[COMPOSICAO_LEGENDA] [nvarchar](max) NULL,
	[TOTAL_VOTOS] [int] NULL,
	[TRANSITO] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
