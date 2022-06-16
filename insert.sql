

--Utenti
INSERT INTO Utenti VALUES (1, 'Roberto', 'Carletto', 'rob.carletto@gmail.com', 'pwd', 'RC00000AA');
INSERT INTO Utenti VALUES (2, 'Federico', 'Giacardi', 'fede.giacs@gmail.com', 'pwd', 'FG00000AA');
INSERT INTO Utenti VALUES (3, 'Mario', 'Rossi', 'mario88@libero.it', 'pwd', 'MR00000AA');
INSERT INTO Utenti VALUES (4, 'Luigi', 'Verdi', 'luigi1.green@fiscali.com', 'pwd', 'LV00000AA');
INSERT INTO Utenti VALUES (5, 'Alberto', 'Bianchi', 'albi.bb@teletu.it', 'pwd', 'AB00000AA');

--NumeriTelefono
INSERT INTO NumeriTelefono VALUES (1, '0119010500');
INSERT INTO NumeriTelefono VALUES (1, '0118963789');
INSERT INTO NumeriTelefono VALUES (2, '3667100890');
INSERT INTO NumeriTelefono VALUES (3, '3391310021');
INSERT INTO NumeriTelefono VALUES (4, '3445105912');
INSERT INTO NumeriTelefono VALUES (5, '3212444492');

--Host
INSERT INTO Host VALUES (1, false);
INSERT INTO Host VALUES (2, false);

--Stati
INSERT INTO Stati VALUES (1, 'Italia');
INSERT INTO Stati VALUES (2, 'Francia');
INSERT INTO Stati VALUES (3, 'Inghilterra');
INSERT INTO Stati VALUES (4, 'Germania');
INSERT INTO Stati VALUES (5, 'Spagna');
INSERT INTO Stati VALUES (6, 'Paesi Bassi');
INSERT INTO Stati VALUES (7, 'Grecia');
INSERT INTO Stati VALUES (8, 'Polonia');

--Regioni
INSERT INTO Regioni VALUES (1, 'Piemonte', 1);
INSERT INTO Regioni VALUES (2, 'Cuneo', 1);
INSERT INTO Regioni VALUES (3, 'Normandie', 2);
INSERT INTO Regioni VALUES (4, 'Greater London', 3);
INSERT INTO Regioni VALUES (5, 'South West', 3);
INSERT INTO Regioni VALUES (6, 'Bayern', 4);
INSERT INTO Regioni VALUES (7, 'Andalusia', 5);
INSERT INTO Regioni VALUES (8, 'Drenthe', 6);
INSERT INTO Regioni VALUES (9, 'Epiro', 7);
INSERT INTO Regioni VALUES (10, 'Voivodato', 8);

--Comuni
INSERT INTO Comuni VALUES (1, 'Torino', 1);
INSERT INTO Comuni VALUES (2, 'Carmagnola', 1);
INSERT INTO Comuni VALUES (3, 'Fossano', 2);
INSERT INTO Comuni VALUES (4, 'Cervere', 2);
INSERT INTO Comuni VALUES (5, 'Rouen', 3);
INSERT INTO Comuni VALUES (6, 'Caen', 3);
INSERT INTO Comuni VALUES (7, 'Londra', 4);
INSERT INTO Comuni VALUES (8, 'Westminster', 4);
INSERT INTO Comuni VALUES (9, 'Exeter', 5);
INSERT INTO Comuni VALUES (10, 'Gloucester', 5);
INSERT INTO Comuni VALUES (11, 'Norimberga', 6);
INSERT INTO Comuni VALUES (12, 'Augusta', 6);
INSERT INTO Comuni VALUES (13, 'Siviglia', 7);
INSERT INTO Comuni VALUES (14, 'Granada', 7);
INSERT INTO Comuni VALUES (15, 'Assen', 8);
INSERT INTO Comuni VALUES (17, 'Meppel', 8);
INSERT INTO Comuni VALUES (18, 'Giannina', 9);
INSERT INTO Comuni VALUES (19, 'Prevesa', 9);
INSERT INTO Comuni VALUES (20, 'Danzica', 10);
INSERT INTO Comuni VALUES (21, 'Stettino', 10);

--Città
INSERT INTO Citta VALUES (1, 'Airasca', 1);
INSERT INTO Citta VALUES (2, 'Leini', 1);
INSERT INTO Citta VALUES (3, 'San Bernardo', 2);
INSERT INTO Citta VALUES (4, 'San Michele', 2);
INSERT INTO Citta VALUES (5, 'Motta', 2);

--TipologiaAlloggi
INSERT INTO TipologiaAlloggi VALUES (1, 'Attico');
INSERT INTO TipologiaAlloggi VALUES (2, 'Monolocale');
INSERT INTO TipologiaAlloggi VALUES (3, 'Bilocale');
INSERT INTO TipologiaAlloggi VALUES (4, 'Più piani');
INSERT INTO TipologiaAlloggi VALUES (5, 'Stanza singola');

--Alloggi
INSERT INTO Alloggi VALUES (1, 3, 'Villa Casa', 'Via del porto', '420', 10022, '10:30', '14:30', 3, 1, 1, 20.10, 12.11);
INSERT INTO Alloggi VALUES (2, 2, 'Casa Roberta', 'Vicolo Buio', '3', 10122, '8:30', '18:30', 3, 1, 2, 99.9, 32.1);
INSERT INTO Alloggi VALUES (3, 1, 'Dimora Lussuoso', 'Via Porta', '88', 10422, '9:30', '15:30', 4, 2, 3, 31.9, 66.5);
INSERT INTO Alloggi VALUES (4, 4, 'Villa Rossa', 'Via Nauria', '1', 12423, '11:30', '17:30', 4, 2, 3, 11.4, 41.9);
INSERT INTO Alloggi VALUES (5, 2, 'Casa Bruna', 'Vicolo Uno', '12', 10123, '10:30', '16:30', 1, 2, 4, 12.9, 42.1);

--Foto
INSERT INTO Foto VALUES (1, '/data/photo1.png', 1);
INSERT INTO Foto VALUES (2, '/data/photo2.png', 1);
INSERT INTO Foto VALUES (3, '/data/photo3.png', 2);
INSERT INTO Foto VALUES (4, '/data/photo4.png', 2);
INSERT INTO Foto VALUES (5, '/data/photo5.png', 3);
INSERT INTO Foto VALUES (6, '/data/photo6.png', 4);
INSERT INTO Foto VALUES (7, '/data/photo7.png', 5);

--Servizi
INSERT INTO Servizi VALUES (1, 'Cucina');
INSERT INTO Servizi VALUES (2, 'Lavatrice');
INSERT INTO Servizi VALUES (3, 'Essenziali Bagno');
INSERT INTO Servizi VALUES (4, 'Essenziali Letto');
INSERT INTO Servizi VALUES (5, 'Colazione Offerta');
INSERT INTO Servizi VALUES (6, 'Piscina');

--DotazioneServizi
INSERT INTO DotazioneServizi VALUES (1, 1, '01-01-2000', '01-01-2025');
INSERT INTO DotazioneServizi VALUES (1, 2, '01-01-2000', '01-01-2020');
INSERT INTO DotazioneServizi VALUES (1, 3, '01-01-2000', '01-01-2025');
INSERT INTO DotazioneServizi VALUES (1, 4, '01-01-2000', '01-01-2020');
INSERT INTO DotazioneServizi VALUES (1, 5, '01-01-2000', '01-01-2025');
INSERT INTO DotazioneServizi VALUES (2, 1, '01-01-2000', '01-01-2020');
INSERT INTO DotazioneServizi VALUES (3, 1, '01-01-2000', '01-01-2025');
INSERT INTO DotazioneServizi VALUES (4, 1, '01-01-2000', '01-01-2020');
INSERT INTO DotazioneServizi VALUES (5, 1, '01-01-2000', '01-01-2025');
INSERT INTO DotazioneServizi VALUES (5, 2, '01-01-2000', '01-01-2020');
INSERT INTO DotazioneServizi VALUES (5, 3, '01-01-2000', '01-01-2025');

--MetodiPagamento
INSERT INTO MetodiPagamento VALUES (1, 'Carta Prepagata');
INSERT INTO MetodiPagamento VALUES (2, 'Conto Bancario');
INSERT INTO MetodiPagamento VALUES (3, 'Paypal');
INSERT INTO MetodiPagamento VALUES (4, 'Satispay');

--UtilizzoMetodiPagamento
INSERT INTO UtilizzoMetodiPagamento VALUES (1, 3, 1, '01-11-2019', '01-11-2021');
INSERT INTO UtilizzoMetodiPagamento VALUES (2, 3, 1, '01-11-2020', '01-11-2021');
INSERT INTO UtilizzoMetodiPagamento VALUES (3, 3, 2, '01-11-2021', '01-11-2026');
INSERT INTO UtilizzoMetodiPagamento VALUES (4, 3, 3, '01-11-2021', '01-11-2026');
INSERT INTO UtilizzoMetodiPagamento VALUES (5, 4, 4, '01-11-2021', '01-11-2026');
INSERT INTO UtilizzoMetodiPagamento VALUES (6, 5, 4, '01-11-2021', '01-11-2026');

--PeriodiDisponibilita
INSERT INTO PeriodiDisponibilita VALUES (1, '19-09-2000', '19-09-2012', 1);
INSERT INTO PeriodiDisponibilita VALUES (2, '10-09-2015', '01-09-2025', 1);
INSERT INTO PeriodiDisponibilita VALUES (3, '01-09-2000', '12-09-2025', 2);
INSERT INTO PeriodiDisponibilita VALUES (4, '14-09-2000', '01-09-2025', 3);
INSERT INTO PeriodiDisponibilita VALUES (5, '08-09-2000', '18-09-2025', 4);
INSERT INTO PeriodiDisponibilita VALUES (6, '29-09-2000', '26-09-2025', 5);

--Prentoazione
INSERT INTO Prenotazione VALUES (1, '15-10-2015', '21-10-2015', 800.99, '01-10-2015', 1, 3, 1); 
INSERT INTO Prenotazione VALUES (2, '10-01-2018', '17-01-2018', 200.85, '28-12-2017', 1, 3, 2); 
INSERT INTO Prenotazione VALUES (3, '15-10-2018', '21-10-2018', 623.99, '01-10-2018', 2, 3, 3); 
INSERT INTO Prenotazione VALUES (4, '15-10-2019', '18-10-2019', 127.99, '01-10-2019', 3, 4, 4); 
INSERT INTO Prenotazione VALUES (5, '04-07-2020', '11-07-2020', 800.99, '23-06-2020', 4, 5, 4); 
INSERT INTO Prenotazione VALUES (6, '18-10-2021', '21-10-2021', 800.99, '21-06-2021', 5, 5, 4); 

--ComposizioneUtenti
INSERT INTO ComposizioneUtenti VALUES (1, 3);
INSERT INTO ComposizioneUtenti VALUES (1, 4);
INSERT INTO ComposizioneUtenti VALUES (2, 4);
INSERT INTO ComposizioneUtenti VALUES (2, 5);
INSERT INTO ComposizioneUtenti VALUES (3, 3);
INSERT INTO ComposizioneUtenti VALUES (4, 4);
INSERT INTO ComposizioneUtenti VALUES (5, 4);
INSERT INTO ComposizioneUtenti VALUES (5, 3);

--Liste
INSERT INTO Liste VALUES (1, 'Viaggio Maturità', 3);
INSERT INTO Liste VALUES (2, 'Viaggio di Lavoro', 4);
INSERT INTO Liste VALUES (3, 'Vacanze', 5);

--ComposizioneLista
INSERT INTO ComposizioneLista VALUES (1, 2, '20-11-2015', '10-12-2015');
INSERT INTO ComposizioneLista VALUES (1, 3, '11-12-2015', '20-12-2015');
INSERT INTO ComposizioneLista VALUES (2, 4, '05-01-2017', '15-01-2017');
INSERT INTO ComposizioneLista VALUES (2, 1, '16-01-2017', '23-01-2017');
INSERT INTO ComposizioneLista VALUES (3, 1, '28-06-2020', '12-07-2020');
INSERT INTO ComposizioneLista VALUES (3, 2, '13-07-2020', '20-07-2020');

--Viaggi
INSERT INTO Viaggi VALUES (1, 1, '20-11-2015', '20-12-2015');
INSERT INTO Viaggi VALUES (2, 4, '05-01-2017', '23-01-2017');
INSERT INTO Viaggi VALUES (3, 1, '28-06-2020', '20-07-2020');

--Messaggi
INSERT INTO Messaggi VALUES (1, NULL, 'Molto deludente, non era presente spazio a sufficienza per tutti gli ospiti.', '12-12-2015 16:30:00');
INSERT INTO Messaggi VALUES (2, 1, 'Ci dispiace per l inconveniente, abbiamo aggiornato il numero di posti letto.', '12-12-2015 20:30:00');
INSERT INTO Messaggi VALUES (3, NULL, 'Tutto molto gradevole, servizi al top.', '12-08-2018 14:30:00');
INSERT INTO Messaggi VALUES (4, NULL, 'Niente da comunicare.', '12-08-2018 14:30:00');
INSERT INTO Messaggi VALUES (5, NULL, 'Tutto bene.', '21-01-2020 14:30:00');
INSERT INTO Messaggi VALUES (6, NULL, 'Da riprovare !', '23-02-2021 14:30:00');

--RecensioniHost
INSERT INTO RecensioniHost VALUES (1, 2, 'Si è trovata una soluzione per i pernottamenti e sono stati presi provvedimenti per l incoveniente');
INSERT INTO RecensioniHost VALUES (2, 4, 'Niente da commentare.');
INSERT INTO RecensioniHost VALUES (3, 3, 'Gli affituari sono stati gentile ed ordinati. Posso prevedere una referenza per gli ospiti.');

--RecensioniOspiti
INSERT INTO RecensioniOspiti VALUES (1, 1, 'Alloggio stretto, sconsigliato.', 'Il proprietario si è mostrato disponibile ma la mancanza di spazio è stata comunque un problema.', 5, 5, 3, 1);
INSERT INTO RecensioniOspiti VALUES (2, 5, 'Torneremo sicuramente', 'Proprietario simpatico ma un po invadente', 1, 3, 3, 1);
INSERT INTO RecensioniOspiti VALUES (3, 6, 'Bello e riservato.', 'Proprietario gentile e disponibile.', 5, 1, 5, 5);