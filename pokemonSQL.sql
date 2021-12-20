--Pokemon Challange

--DROP TABLE Pokemon
--DROP TABLE Type
--DROP TABLE PokemonType

CREATE TABLE Pokemon
(
	--Id INT IDENTITY PRIMARY KEY NOT NULL, did not work 
	Id INT NOT NULL IDENTITY PRIMARY KEY , 
	PokemonName VARCHAR (15) NOT NULL,
	PokemonHeight VARCHAR (10) NOT NULL,
	PokemonWeight VARCHAR (10) NOT NULL
); 

CREATE TABLE [Type] 
(
	Id INT NOT NULL IDENTITY PRIMARY KEY , 
	typeId INT NOT NULL (500),
	[Name] NVARCHAR NOT NULL (100), 
);

CREATE TABLE PokemonType --pokemonid and typeide need to reference back to pokemon and type.
(
	Id INT NOT NULL IDENTITY PRIMARY KEY , 
	PokemonId INT (500) FOREIGN KEY REFERENCES Pokemon (ID) NOT NULL,
	TypeId INT (500) FOREIGN KEY REFERENCES [Type] (typeId) NOT NULL,
);


--Inserting data to tables
INSERT Pokemon
	(id, PokemonName, PokemonHeight, PokemonWeight)
VALUES
	(1, Bulbasur, 7, 70),
	(2, Dittom, 3, 40);

INSERT [Type]
	(typeId, [Name])
VALUES
	(2, Normal),
	(1, Grass);



SELECT * FROM Pokemon