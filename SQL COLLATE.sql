

SELECT NAME, Collation_name FROM sys.databases WHERE NAME LIKE 'MundoPokemon_DB2'

ALTER DATABASE MundoPokemon_DB2
	COLLATE Latin1_General_100_CI_AI_SC_UTF8