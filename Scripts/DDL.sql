CREATE TABLE DimLocal(
		idLocal			INT				NOT NULL,
		UF				VARCHAR(2)		NOT NULL,
		Cidade			VARCHAR(100)	NOT NULL,
		CONSTRAINT PK_DimLocal PRIMARY KEY (idLocal),
)	

CREATE TABLE DimTempo(
		idTempo			INT				IDENTITY	NOT NULL,
		Ano				INT				NOT NULL,
		Mes				VARCHAR(50)		NOT NULL
		CONSTRAINT PK_DimTempo PRIMARY KEY (idTempo),
)

CREATE TABLE FatoCasoConfirmado(
		idCaso							INT				IDENTITY	NOT NULL,
		idTempo							INT				NOT NULL,
		idLocal							INT				NOT NULL,
		TotalCasosConfirmados			INT				NOT NULL,
		CONSTRAINT PK_idCaso PRIMARY KEY (idCaso),
		CONSTRAINT FK_FatoCasoConfirmado_DimTempo	FOREIGN KEY (idTempo) REFERENCES DimTempo(idTempo),
		CONSTRAINT FK_FatoCasoConfirmado_DimLocal	FOREIGN KEY (idLocal) REFERENCES DimLocal(idLocal)
)

CREATE TABLE FatoAgenteSaude(
		idAgenteSaude					INT				IDENTITY	NOT NULL,
		idTempo							INT				NOT NULL,
		idLocal							INT				NOT NULL,
		TotalAgentes					INT				NOT NULL,
		CONSTRAINT PK_idAgenteSaude PRIMARY KEY (idAgenteSaude),
		CONSTRAINT FK_FatoAgenteSaude_DimTempo	FOREIGN KEY (idTempo) REFERENCES DimTempo(idTempo),
		CONSTRAINT FK_FatoAgenteSaude_DimLocal	FOREIGN KEY (idLocal) REFERENCES DimLocal(idLocal)
)



