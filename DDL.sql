begin;
    --Precautional tables' deletion
    drop table if exists Utenti cascade;
    drop table if exists NumeriTelefono cascade;
    drop table if exists Host cascade;
    drop table if exists Alloggi cascade;
    drop table if exists Foto cascade;
    drop table if exists DotazioneServizi cascade;
    drop table if exists Servizi cascade;
    drop table if exists Citta cascade;
    drop table if exists Comuni cascade;
    drop table if exists Regione cascade;
    drop table if exists Stati cascade;
    drop table if exists MetodiPagamento cascade;
    drop table if exists UtilizzoMetodiPagamento cascade;
    drop table if exists PeriodiDisponibilita cascade;
    drop table if exists Prenotazioni cascade;
    drop table if exists ComposizioneUtenti cascade;
    drop table if exists Liste cascade;
    drop table if exists ComposizioneLista cascade;
    drop table if exists Viaggi cascade;
    drop table if exists Messaggi cascade;
    drop table if exists RecensioniHost cascade;
    drop table if exists RecensioniOspiti cascade;
    
    --Tables' creation
    create table Utenti(
        CodiceUtente SERIAL, --we use 32 bit given the huge number of users the db must store
        Nome varchar(30) not null,
        Cognome varchar(30) not null,
        Email varchar(30) not null,
        Password varchar(20) not null, --hash???
        CartaIdentita varchar(30) not null, -- file path
        constraint Utenti_PK primary key(CodiceUtente),
        unique(Email)
    );
    
    create table NumeriTelefono(
        Proprietario serial,
        Numero varchar(15) not null, -- long enough?
        constraint NumeriTelefono_PK primary key(Proprietario, Numero), --basta numero??
        constraint NumeriTelefono_Utenti_SK foreign key(Proprietario) references Utenti(CodiceUtente) on update cascade on delete no action
    );
    
    create table Host(
        CodiceHost serial,
        Badge bool,
        
        --NumeroSoggiorni integer,
        --TassoCancellazione decimal(5, 2),
        --NumeroNotti integer,
        --ValutazioneMedia decimal(2, 1)
        constraint Host_PK primary key(CodiceHost),
        constraint Host_Utenti_SK foreign key(CodiceHost) references Utenti(CodiceUtente) on update cascade on delete no action
    );
    
    create table Stati(
        CodiceStato serial,
        Nome varchar(20) not null,
        constraint Stati_PK primary key(CodiceStato),
        unique(Nome)
    );
    
    create table Regioni(
        CodiceRegione serial,
        Nome varchar(20) not null,
        CodiceStato integer not null,
        constraint Regioni_PK primary key(CodiceRegione),
        constraint Regioni_Stati_SK foreign key(CodiceStato) references Stati(CodiceStato) on update cascade on delete no action,
        unique(Nome, CodiceStato)
    );
    
    create table Comuni(
        CodiceComune serial,
        Nome varchar(30) not null,
        CodiceRegione integer not null,
        constraint Comuni_PK primary key(CodiceComune),
        constraint Comuni_Regioni_SK foreign key(CodiceRegione) references Regioni(CodiceRegione) on update cascade on delete no action,
        unique(Nome, CodiceRegione)
    );
    
    create table Citta(
        CodiceCitta serial,
        Nome varchar(20) not null,
        CodiceComune integer not null,
        constraint Citta_PK primary key(CodiceCitta),
        constraint Citta_Comuni_SK foreign key(CodiceComune) references Comuni(CodiceComune) on update cascade on delete no action,
        unique(Nome, CodiceComune)
    );
    
    create table Alloggi(
        CodiceAlloggio serial,
        NumLetti integer not null,
        Nome varchar(20) not null,
        Via varchar(20) not null,
        Civico varchar(5) not null,
        Cap integer not null,
        OrarioCheckIn time(4) not null,  --time zone
        OrarioCheckOut time(4) not null check(OrarioCheckOut > OrarioCheckIn),
        Citta integer not null,
        Proprietario integer not null,
        constraint Alloggi_PK primary key(CodiceAlloggio),
        constraint Alloggi_Citta_SK foreign key(Citta) references Citta(CodiceCitta) on update cascade on delete no action,
        constraint Alloggi_Host_SK foreign key(Proprietario) references Host(CodiceHost) on update cascade on delete no action,
        unique(Nome, Via, Civico, Cap, Citta)
    );
    
    create table Foto(
        CodiceFoto serial,
        Percorso varchar(30) not null, --file path
        CodiceAlloggio integer not null,
        constraint Foto_PK primary key(CodiceFoto),
        constraint Foto_Alloggi_SK foreign key(CodiceAlloggio) references Alloggi(CodiceAlloggio) on update cascade on delete no action
    );
    
    create table Servizi(
        CodiceServizio serial,
        Descrizione varchar(50) not null,
        constraint Servizi_PK primary key(CodiceServizio),
        unique(Descrizione)
    );
    
    create table DotazioneServizi(
        CodiceAlloggio integer not null,
        CodiceServizio integer not null,
        DataInizio date not null,
        DataFine date check (DataFine > DataInizio),
        constraint DotazioneServizi_PK primary key(CodiceAlloggio, CodiceServizio),
        constraint DotazioneServizi_Alloggi_SK foreign key(CodiceAlloggio) references Alloggi(CodiceAlloggio) on update cascade on delete no action,
        constraint DotazioneServizi_Servizi_SK foreign key(CodiceServizio) references Servizi(CodiceServizio) on update cascade on delete no action
    );
    
    create table MetodiPagamento(
        CodiceMetodo serial,
        Descrizione varchar(15) not null,
        constraint MetodiPagamento_PK primary key(CodiceMetodo),
        unique(Descrizione)
    );
    
    create table UtilizzoMetodiPagamento(
        CodicePossesso serial,
        CodiceUtente integer not null,
        CodiceMetodo integer not null,
        DataInizio date not null,
        DataFine date check (DataFine > DataInizio),
        constraint UtilizzoMetodiPagamento_PK primary key(CodicePossesso),
        constraint UtilizzoMetodiPagamento_MetodiPagamento_SK foreign key(CodiceMetodo) references MetodiPagamento(CodiceMetodo) on update cascade on delete no action,
        constraint UtilizzoMetodiPagamento_Utenti_SK foreign key(CodiceUtente) references Utenti(CodiceUtente) on update cascade on delete no action,
        unique(CodiceUtente, CodiceMetodo, DataInizio)
    );
    
    create table PeriodiDisponibilita(
        IdPeriodo serial,
        DataInizio date not null,
        DataFine date not null check (DataFine > DataInizio),
        CodiceAlloggio integer not null,
        constraint PeriodiDisponibilita_PK primary key(IdPeriodo),
        constraint PeriodiDisponibilita_Alloggi_SK foreign key(CodiceAlloggio) references Alloggi(CodiceAlloggio) on update cascade on delete no action,
        unique(CodiceAlloggio, DataInizio, DataFine)
    );
    
    create table Prenotazione(
        CodicePrenotazione serial,
        DataInizio date not null,
        DataFine date not null check (DataFine > DataInizio),
        --NumOspiti integer not null,
        CostoTotale decimal(6, 3) not null, -- dall'analisi delle ridondanze abbiamo appurato che serva
        DataPagamento date not null check (DataPagamento < DataInizio),
        CodiceAlloggio integer not null,
        CodiceUtente integer not null,
        CodiceMetodo integer not null,
        constraint Prenotazione_PK primary key(CodicePrenotazione),
        constraint Prenotazione_Alloggi_SK foreign key(CodiceAlloggio) references Alloggi(CodiceAlloggio) on update cascade on delete no action,
        constraint Prenotazione_Utenti_SK foreign key(CodiceUtente) references Utenti(CodiceUtente) on update cascade on delete no action,
        constraint Prenotazione_MetodiPagamento_SK foreign key(CodiceMetodo) references MetodiPagamento(CodiceMetodo) on update cascade on delete no action,
        unique(CodiceAlloggio, CodiceUtente, DataInizio, DataFine)
    );
    
    create table ComposizioneUtenti(
        CodicePrenotazione integer not null,
        CodiceUtente integer not null,
        constraint ComposizioneUtenti_PK primary key(CodicePrenotazione, CodiceUtente),
        constraint ComposizioneUtenti_Prenotazione_SK foreign key(CodicePrenotazione) references Prenotazione(CodicePrenotazione) on update cascade on delete no action,
        constraint ComposizioneUtenti_Utenti_SK foreign key(CodiceUtente) references Utenti(CodiceUtente) on update cascade on delete no action
    );
    
    create table Liste(
        CodiceLista serial,
        NomeLista varchar(20) not null,
        CodiceProprietario integer not null,
        constraint Liste_PK primary key(CodiceLista),
        constraint Liste_Utenti_SK foreign key(CodiceProprietario) references Utenti(CodiceUtente) on update cascade on delete no action,
        unique(NomeLista, CodiceProprietario)
    );
    
    create table ComposizioneLista(
        CodiceLista integer not null,
        CodiceAlloggio integer not null,
        DataInizio date not null,
        DataFine date check(DataFine > DataInizio),
        constraint ComposizioneLista_PK primary key(CodiceLista, CodiceAlloggio),
        constraint ComposizioneLista_Liste_SK foreign key(CodiceLista) references Liste(CodiceLista) on update cascade on delete no action,
        constraint ComposizioneLista_Alloggi_SK foreign key(CodiceAlloggio) references Alloggi(CodiceAlloggio) on update cascade on delete no action
    );
    
    create table Viaggi(
        CodiceLista integer not null,
        CodiceCitta integer not null,
        DataInizio date,
        DataFine date check(DataFine > DataInizio),
        constraint Viaggi_PK primary key(CodiceLista, CodiceCitta),
        constraint Viaggi_Liste_SK foreign key(CodiceLista) references Liste(CodiceLista) on update cascade on delete no action,
        constraint Viaggi_Citta_SK foreign key(CodiceCitta) references Citta(CodiceCitta) on update cascade on delete no action
    );

    create table Messaggi(
        CodiceMessaggio serial,
        Risposta integer, -- da gestire con le br
        Testo varchar(500) not null,
        DataOra date not null,
        constraint Messaggi_PK primary key(CodiceMessaggio),
        constraint Risposta_SK foreign key(Risposta) references Messaggi(Risposta)
    );

    create table RecensioniHost(
        CodicePrenotazione integer not null,
        CodiceMessaggio integer not null,
        Commento varchar(500) not null,

        constraint CodicePrenotazione_PK primary key(CodicePrenotazione),
        constraint CodiceMessaggio_SK foreign key(CodiceMessaggio) references Messaggi(CodiceMessaggio)
    );

    create table RecensioniOspiti(
        CodicePrenotazione integer not null,
        CodiceMessaggio integer not null,
        TestoAlloggio varchar(500) not null,
        TestoHost varchar(500) not null,
        PunteggioPulizia integer check(0 > PunteggioPulizia < 6),
        PunteggioComunicazione integer check(0 > PunteggioComunicazione < 6),
        PunteggioPosizione integer check(0 > PunteggioPosizione < 6),
        PunteggioQualità integer check(0 > PunteggioQualità < 6),

        constraint CodicePrenotazione_PK primary key(CodicePrenotazione),
        constraint CodiceMessaggio_SK foreign key(CodiceMessaggio) references Messaggi(CodiceMessaggio)
    );
    
commit;
