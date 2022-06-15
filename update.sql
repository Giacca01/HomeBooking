UPDATE Utenti SET CodiceUtente = 55 WHERE CodiceUtente = 5;
--Check if on update cascade worked
SELECT *
FROM NumeriTelefono
WHERE Proprietario = 55

UPDATE Utenti SET CodiceUtente = 22 WHERE CodiceUtente = 2;
--Check if on update cascade worked
--This is the correct way to change a Host ID
SELECT *
FROM Alloggi
WHERE Proprietario = 22

UPDATE Alloggi SET CodiceAlloggio = 11 WHERE CodiceAlloggio = 1;
--Check if on update cascade worked
SELECT *
FROM Foto
WHERE CodiceAlloggio = 11

UPDATE Stati SET CodiceStato = 11 WHERE CodiceStato = 1;
--Check if on update cascade worked
SELECT *
FROM Regioni
WHERE CodiceStato = 11

UPDATE Regioni SET CodiceRegione = 11 WHERE CodiceRegione = 1;
--Check if on update cascade worked
SELECT *
FROM Comuni
WHERE CodiceRegione = 11

UPDATE Comuni SET CodiceComune = 50 WHERE CodiceComune = 1;
--Check if on update cascade worked
SELECT *
FROM Citta
WHERE CodiceComune = 50

UPDATE Citta SET CodiceCitta = 15 WHERE CodiceCitta = 1;
--Check if on update cascade worked
SELECT *
FROM Alloggi
WHERE Citta = 15

UPDATE Host SET CodiceHost = 4 WHERE CodiceHost = 1;
--Check if on update cascade worked
--Switch role from normal user to host, gettings it's properties
SELECT *
FROM Alloggi
WHERE Proprietario = 4

UPDATE Servizi SET CodiceServizio = 50 WHERE CodiceServizio = 1;
--Check if on update cascade worked
SELECT *
FROM DotazioneServizi
WHERE CodiceServizio = 50

UPDATE MetodiPagamento SET CodiceMetodo = 10 WHERE CodiceMetodo = 1;
--Check if on update cascade worked
SELECT *
FROM UtilizzoMetodiPagamento
WHERE CodiceMetodo = 10

UPDATE Prenotazione SET CodicePrenotazione = 10 WHERE CodicePrenotazione = 1;
--Check if on update cascade worked
SELECT *
FROM ComposizioneUtenti
WHERE CodicePrenotazione = 10

UPDATE Liste SET CodiceLista = 10 WHERE CodiceLista = 1;
--Check if on update cascade worked
SELECT *
FROM ComposizioneLista
WHERE CodiceLista = 10

UPDATE Messaggi SET CodiceMessaggio = 10 WHERE CodiceMessaggio = 1;
--Check if on update cascade worked
SELECT *
FROM RecensioniOspiti
WHERE CodiceMessaggio = 10


--Some checks unique costrains, this should fire an error
--unique(Email)
UPDATE Utenti SET Email = 'fede.giacs@gmail.com' WHERE CodiceUtente = 3;

--unique(Nome)
UPDATE Stati SET Nome = 'Francia' WHERE CodiceStato = 3;

--unique(CodiceUtente, CodiceMetodo, DataInizio)
UPDATE UtilizzoMetodiPagamento SET DataInizio = '01-11-2019' WHERE CodicePossesso = 2;

--unique(CodiceMessaggio, Risposta)
UPDATE Messaggi SET Risposta = 1, CodiceMessaggio = 2 WHERE CodiceMessaggio = 6;

--unique(Descrizione)
UPDATE MetodiPagamento SET Descrizione = 'Carta Prepagata' WHERE CodiceMetodo = 2;