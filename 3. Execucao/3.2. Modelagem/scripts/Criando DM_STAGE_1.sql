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
	[DESCRICAO_ELEICAO] [nvarchar](100) NULL,
	[SIGLA_UF] [nvarchar](100) NULL,
	[SIGLA_UE] [nvarchar](100) NULL,
	[CODIGO_MUNICIPIO] [nvarchar](100) NULL,
	[NOME_MUNICIPIO] [nvarchar](100) NULL,
	[NUMERO_ZONA] [int] NULL,
	[CODIGO_CARGO] [nvarchar](100) NULL,
	[NUMERO_CAND] [int] NULL,
	[SQ_CANDIDATO] [nvarchar](100) NULL,
	[NOME_CANDIDATO] [nvarchar](100) NULL,
	[NOME_URNA_CANDIDATO] [nvarchar](100) NULL,
	[DESCRICAO_CARGO] [nvarchar](100) NULL,
	[COD_SIT_CAND_SUPERIOR] [nvarchar](100) NULL,
	[DESC_SIT_CAND_SUPERIOR] [nvarchar](100) NULL,
	[CODIGO_SIT_CANDIDATO] [nvarchar](100) NULL,
	[DESC_SIT_CANDIDATO] [nvarchar](100) NULL,
	[CODIGO_SIT_CAND_TOT] [nvarchar](100) NULL,
	[DESC_SIT_CAND_TOT] [nvarchar](100) NULL,
	[NUMERO_PARTIDO] [int] NULL,
	[SIGLA_PARTIDO] [nvarchar](100) NULL,
	[NOME_PARTIDO] [nvarchar](100) NULL,
	[SEQUENCIAL_LEGENDA] [nvarchar](100) NULL,
	[NOME_COLIGACAO] [nvarchar](100) NULL,
	[COMPOSICAO_LEGENDA] [nvarchar](100) NULL,
	[TOTAL_VOTOS] [int] NULL,
	[TRANSITO] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
