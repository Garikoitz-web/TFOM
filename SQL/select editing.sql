----   INSTRUMENTOS   ----

drop table instrumentos;

create table instrumentos  (
    id_inst int auto_increment not null,
    instrumentos varchar(50) not null,
	primary key(id_inst));
                        
INSERT into instrumentos values 
('','Guitarra'),
('','Bajo');
(,'GUITAR'),
('BASS');

select * from instrumentos;

----   AFINACIONES   ----

drop table afinaciones;

create table afinaciones  (
    id_inst int not null,
    id_afin int not null auto_increment,
    afinaciones varchar(50) not null,
	primary key(id_afin),
    FOREIGN KEY (id_inst) REFERENCES instrumentos(id_inst)
    );
                        
INSERT into afinaciones values 
(1,'','EADGBE'),
(1,'','DGCFAD'),
(2,'','EADG'),
(2,'','DGCF');

select * from afinaciones;

----   TONALIDADES   ----

drop table tonalidades;

create table tonalidades  (
    id_afin int not null,
    id_tona int not null auto_increment,
    tonalidad varchar(50) not null,
	primary key(id_tona),
    FOREIGN KEY (id_afin) REFERENCES afinaciones(id_afin)
    );
                        
INSERT into tonalidades values 
(1,'','A'),
(1,'','A#/Bb'),
(1,'','B'),
(1,'','C'),
(1,'','C#/Db'),
(1,'','D'),
(1,'','D#/Eb'),
(1,'','E'),
(1,'','F'),
(1,'','F#/Gb'),
(1,'','G'),
(1,'','G#/Ab'),
(2,'','2A'),
(2,'','2A#/Bb'),
(2,'','2B'),
(2,'','2C'),
(2,'','2C#/Db'),
(2,'','2D'),
(2,'','2D#/Eb'),
(2,'','2E'),
(2,'','2F'),
(2,'','2F#/Gb'),
(2,'','2G'),
(2,'','2G#/Ab');

select * from tonalidades;

----   ACORDES   ----

drop table acordes;

create table acordes  (
    id_tona int not null,
    id_acor int not null auto_increment,
    acordes varchar(50) not null,
    escalas varchar(50) not null,
	primary key(id_acor),
    FOREIGN KEY (id_tona) REFERENCES tonalidades(id_tona)
    );
                        
INSERT into acordes values 
(1,'','A','A_TONE_I.png'), 
(1,'','Bm', 'A_TONE_II.png'),
(1,'','C#m/Dbm', 'A_TONE_III.png'), 
(1,'','D', 'A_TONE_IV.png'), 
(1,'','E', 'A_TONE_V.png'), 
(1,'','F#m/Gbm','A_TONE_VI.png'), 
(1,'','G#dim/Abdim', 'A_TONE_VII.png'),
(2,'','A#/Bb','A#-Bb_TONE_I.png'), 
(2,'','Cm', 'A#-Bb_TONE_II.png'), 
(2,'','Dm', 'A#-Bb_TONE_III.png'), 
(2,'','D#/Eb', 'A#-Bb_TONE_IV.png'), 
(2,'','F', 'A#-Bb_TONE_V.png'), 
(2,'','Gm','A#-Bb_TONE_VI.png'), 
(2,'','Adim', 'A#-Bb_TONE_VII.png'),
(3,'','B','B_TONE_I.png'), 
(3,'','C#m/Dbm', 'B_TONE_II.png'), 
(3,'','E', 'B_TONE_III.png'), 
(3,'','F', 'B_TONE_IV.png'), 
(3,'','F#/Gb', 'B_TONE_V.png'), 
(3,'','G#m/Abm','B_TONE_VI.png'), 
(3,'','A#dim/Bbdim', 'B_TONE_VII.png'),
(4,'','C','C_TONE_I.png'), 
(4,'','Dm', 'C_TONE_II.png'), 
(4,'','Em', 'C_TONE_III.png'), 
(4,'','F', 'C_TONE_IV.png'), 
(4,'','G', 'C_TONE_V.png'), 
(4,'','Am','C_TONE_VI.png'), 
(4,'','Bdim', 'C_TONE_VII.png'),
(5,'','C#/Db','C#-Db_TONE_I.png'), 
(5,'','D#m/Ebm', 'C#-Db_TONE_II.png'), 
(5,'','Fm', 'C#-Db_TONE_III.png'), 
(5,'','F#/Gb', 'C#-Db_TONE_IV.png'), 
(5,'','G#/Ab', 'C#-Db_TONE_V.png'), 
(5,'','A#m/Bbm','C#-Db_TONE_VI.png'), 
(5,'','Cdim', 'C#-Db_TONE_VII.png'),
(6,'','D','D_TONE_I.png'), 
(6,'','Em', 'D_TONE_II.png'), 
(6,'','F#m/Gbm', 'D_TONE_III.png'), 
(6,'','G', 'D_TONE_IV.png'), 
(6,'','A', 'D_TONE_V.png'), 
(6,'','Bm','D_TONE_VI.png'), 
(6,'','C#dim/Dbdim', 'D_TONE_VII.png'),
(7,'','D#/Eb','D#-Eb_TONE_I.png'), 
(7,'','Fm', 'D#-Eb_TONE_II.png'), 
(7,'','Gm', 'D#-Eb_TONE_III.png'), 
(7,'','G#/Ab', 'D#-Eb_TONE_IV.png'), 
(7,'','A#/Bb', 'D#-Eb_TONE_V.png'), 
(7,'','Cm','D#-Eb_TONE_VI.png'), 
(7,'','Ddim', 'D#-Eb_TONE_VII.png'),
(8,'','E', 'E_TONE_I.png'), 
(8,'','F#m/Gbm', 'E_TONE_II.png'), 
(8,'','G#m/Abm', 'E_TONE_III.png'), 
(8,'','A', 'E_TONE_IV.png'), 
(8,'','B', 'E_TONE_V.png'), 
(8,'','C#m/Dbm','E_TONE_VI.png'), 
(8,'','D#dim/Ebdim', 'E_TONE_VII.png'),
(9,'','F','F_TONE_I.png'), 
(9,'','Gm', 'F_TONE_II.png'), 
(9,'','Am', 'F_TONE_III.png'), 
(9,'','A#/Bb', 'F_TONE_IV.png'), 
(9,'','C', 'F_TONE_V.png'), 
(9,'','Dm','F_TONE_VI.png'), 
(9,'','Edim', 'F_TONE_VII.png'),
(10,'','F#/Gb','F#-Gb_TONE_I.png'), 
(10,'','G#m/Abm', 'F#-Gb_TONE_II.png'), 
(10,'','A#m/Bbm', 'F#-Gb_TONE_III.png'), 
(10,'','B', 'F#-Gb_TONE_IV.png'), 
(10,'','C#/Db', 'F#-Gb_TONE_V.png'), 
(10,'','D#m/Ebm','F#-Gb_TONE_VI.png'), 
(10,'','Fdim', 'F#-Gb_TONE_VII.png'),
(11,'','G','G_TONE_I.png'), 
(11,'','Am', 'G_TONE_II.png'), 
(11,'','Bm', 'G_TONE_III.png'), 
(11,'','C', 'G_TONE_IV.png'), 
(11,'','D', 'G_TONE_V.png'), 
(11,'','Em','G_TONE_VI.png'), 
(11,'','F#dim/Gbdim', 'G_TONE_VII.png'),
(12,'','G#/Ab','G#-Ab_TONE_I.png'), 
(12,'','A#m/Bbm', 'G#-Ab_TONE_II.png'), 
(12,'','Cm', 'G#-Ab_TONE_III.png'), 
(12,'','C#/Db', 'G#-Ab_TONE_IV.png'), 
(12,'','D#/Eb', 'G#-Ab_TONE_V.png'), 
(12,'','Fm','G#-Ab_TONE_VI.png'), 
(12,'','Gdim', 'G#-Ab_TONE_VII.png');



select * from acordes;





SELECT * FROM instrumentos WHERE id_inst=(select id_inst from afinaciones where id_afin=3);

