create database COMF;

use COMF;

DROP TABLE users;

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL auto_increment,
  `username` text COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `email` text COLLATE utf8_unicode_ci NOT NULL,
  `name` text COLLATE utf8_unicode_ci,
  `verified` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0' COMMENT 'Este perfil esta verificado?',
  `banned` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0' COMMENT 'Este perfil esta baneado?',
  `code` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `confirmed` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0' COMMENT 'Verifico el correo',
  `signup_date` datetime NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `signup_ip` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_ip` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  primary key(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE tono;

CREATE TABLE tono (
tonalidad varchar(10) NOT NULL, 
I_MAYOR varchar(10) NOT NULL, 
II_menor varchar(10) NOT NULL, 
III_menor varchar(10) NOT NULL, 
IV_MAYOR varchar(10) NOT NULL, 
V_MAYOR varchar(10) NOT NULL, 
VI_menor varchar(10) NOT NULL, 
VII_disminuido varchar(20) NOT NULL 
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


INSERT INTO tono (tonalidad, I_MAYOR, II_menor, III_menor, IV_MAYOR, V_MAYOR, VI_menor, VII_disminuido) VALUES 
('A', 'A', 'Bm', 'C#m/Dbm', 'D', 'E', 'F#m/Gbm', 'G#dim/Abdim'), 
('A#/Bb', 'A#/Bb', 'Cm', 'Dm', 'D#/Eb', 'F', 'Gm', 'Adim'), 
('B', 'B', 'C#m/Dbm', 'D#m/Ebm', 'E', 'F#/Gb', 'G#m/Abm', 'A#dim/Bbdim'),
('C','C', 'Dm', 'Em', 'F', 'G', 'Am', 'Bdim'), 
('C#/Db','C#/Db', 'D#m/Ebm', 'Fm', 'F#/Gb', 'G#/Ab', 'A#m/Bbm', 'Cdim'), 
('D', 'D', 'Em', 'F#m/Gbm', 'G', 'A', 'Bm', 'C#dim/Dbdim'), 
('D#/Eb', 'D#/Eb', 'Fm', 'Gm', 'G#/Ab', 'A#/Bb', 'Cm', 'Ddim'), 
('E', 'E', 'F#m/Gbm', 'G#m/Abm', 'A', 'B', 'C#m/Dbm', 'D#dim/Ebdim'), 
('F', 'F', 'Gm', 'Am', 'A#/Bb', 'C', 'Dm', 'Edim'), 
('F#/Gb', 'F#/Gb', 'G#m/Abm', 'A#m/Bbm', 'B', 'C#/Db', 'D#m/Ebm', 'Fdim'), 
('G', 'G', 'Am', 'Bm', 'C', 'D', 'Em', 'F#dim/Gbdim'), 
('G#/Ab', 'G#/Ab', 'A#m/Bbm', 'Cm', 'C#/Db', 'D#/Eb', 'Fm', 'Gdim'); 

select * from tono;



DROP TABLE modos;


CREATE TABLE modos (
  NUMERO varchar(10) NOT NULL,
  MODOS varchar(10)  NOT NULL, 
  INTERVALOS varchar(100)  NOT NULL, 
  GRADOS varchar(20)  NOT NULL
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO modos (NUMERO, MODOS, INTERVALOS, GRADOS) VALUES
('I','JONICO','TONO-TONO-SEMITONO-TONO-TONO-TONO-SEMITONO', '1-2-3-4-5-6-7'),
('II','DORICO','TONO-SEMITONO-TONO-TONO-TONO-SEMITONO- TONO', '1-2-b3-4-5-6-b7'),
('III','FRIGIO','SEMITONO-TONO-TONO-TONO-SEMITONO-TONO-TONO', '1-b2-b3-4-5-b6-b7'),
('IV','LIDIO','TONO-TONO-TONO-SEMITONO-TONO-TONO- SEMITONO', '1-2-3-#4-5-6-7'),
('V','MIXOLIDIO','TONO-TONO-SEMITONO-TONO-TONO- SEMITONO-TONO', '1-2-3-4-5-6-b7'),
('VI','EOLICO','TONO-SEMITONO-TONO-TONO- SEMITONO-TONO-TONO', '1-2-b3-4-5-b6-b7'),
('VII','LOCRIO','SEMITONO-TONO-TONO- SEMITONO-TONO-TONO-TONO', '1-b2-b3-4-b5-b6-b7');

select * from modos;


DROP TABLE escalas;


CREATE TABLE todo (
  Instrumento varchar(10) NOT NULL,
  Afinacion varchar(10)  NOT NULL, 
  Tonalidad varchar(100)  NOT NULL,
  I_MAYOR varchar(10) NOT NULL, 
  I varchar(100)  NOT NULL,
  II_menor varchar(10) NOT NULL,  
  II varchar(100)  NOT NULL,
  III_menor varchar(10) NOT NULL, 
  III varchar(100)  NOT NULL,
  IV_MAYOR varchar(10) NOT NULL, 
  IV varchar(100)  NOT NULL,
  V_MAYOR varchar(10) NOT NULL, 
  V varchar(100)  NOT NULL,
  VI_menor varchar(10) NOT NULL, 
  VI varchar(100)  NOT NULL,
  VII_disminuido varchar(20) NOT NULL, 
  VII varchar(100)  NOT NULL 
 )ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO todo (Instrumento, Afinacion, Tonalidad, I_MAYOR, I, II_menor, II, III_menor, III, IV_MAYOR, IV, V_MAYOR, V, VI_menor, VI, VII_disminuido, VII) VALUES
('Guitarra', 'EADGBE', 'A', 'A','A_TONE_I.png', 'Bm', 'A_TONE_II.png','C#m/Dbm', 'A_TONE_III.png', 'D', 'A_TONE_IV.png', 'E', 'A_TONE_V.png', 'F#m/Gbm','A_TONE_VI.png', 'G#dim/Abdim', 'A_TONE_VII.png'),
('Guitarra', 'EADGBE', 'A#/Bb', 'A#/Bb','A#-Bb_TONE_I.png', 'Cm', 'A#-Bb_TONE_II.png', 'Dm', 'A#-Bb_TONE_III.png', 'D#/Eb', 'A#-Bb_TONE_IV.png', 'F', 'A#-Bb_TONE_V.png', 'Gm','A#-Bb_TONE_VI.png', 'Adim', 'A#-Bb_TONE_VII.png'),
('Guitarra', 'EADGBE', 'B', 'B','B_TONE_I.png', 'C#m/Dbm', 'B_TONE_II.png', 'E', 'B_TONE_III.png', 'E', 'B_TONE_IV.png', 'F#/Gb', 'B_TONE_V.png', 'G#m/Abm','B_TONE_VI.png', 'A#dim/Bbdim', 'B_TONE_VII.png'),
('Guitarra', 'EADGBE', 'C', 'C','C_TONE_I.png', 'Dm', 'C_TONE_II.png', 'Em', 'C_TONE_III.png', 'F', 'C_TONE_IV.png', 'G', 'C_TONE_V.png', 'Am','C_TONE_VI.png', 'Bdim', 'C_TONE_VII.png'),
('Guitarra', 'EADGBE', 'C#/Db', 'C#/Db','C#-Db_TONE_I.png', 'D#m/Ebm', 'C#-Db_TONE_II.png', 'Fm', 'C#-Db_TONE_III.png', 'F#/Gb', 'C#-Db_TONE_IV.png', 'G#/Ab', 'C#-Db_TONE_V.png', 'A#m/Bbm','C#-Db_TONE_VI.png', 'Cdim', 'C#-Db_TONE_VII.png'),
('Guitarra', 'EADGBE', 'D', 'D','D_TONE_I.png', 'Em', 'D_TONE_II.png', 'F#m/Gbm', 'D_TONE_III.png', 'G', 'D_TONE_IV.png', 'A', 'D_TONE_V.png', 'Bm','D_TONE_VI.png', 'C#dim/Dbdim', 'D_TONE_VII.png'),
('Guitarra', 'EADGBE', 'D#/Eb', 'D#/Eb','D#-Eb_TONE_I.png', 'Fm', 'D#-Eb_TONE_II.png', 'Gm', 'D#-Eb_TONE_III.png', 'G#/Ab', 'D#-Eb_TONE_IV.png', 'A#/Bb', 'D#-Eb_TONE_V.png', 'Cm','D#-Eb_TONE_VI.png', 'Ddim', 'D#-Eb_TONE_VII.png'),
('Guitarra', 'EADGBE', 'E', 'E', 'E_TONE_I.png', 'F#m/Gbm', 'E_TONE_II.png', 'G#m/Abm', 'E_TONE_III.png', 'A', 'E_TONE_IV.png', 'B', 'E_TONE_V.png', 'C#m/Dbm','E_TONE_VI.png', 'D#dim/Ebdim', 'E_TONE_VII.png'),
('Guitarra', 'EADGBE', 'F','F','F_TONE_I.png', 'Gm', 'F_TONE_II.png', 'Am', 'F_TONE_III.png', 'A#/Bb', 'F_TONE_IV.png', 'C', 'F_TONE_V.png', 'Dm','F_TONE_VI.png', 'Edim', 'F_TONE_VII.png'),
('Guitarra', 'EADGBE', 'F#/Gb','F#/Gb','F#-Gb_TONE_I.png', 'G#m/Abm', 'F#-Gb_TONE_II.png', 'A#m/Bbm', 'F#-Gb_TONE_III.png', 'B', 'F#-Gb_TONE_IV.png', 'C#/Db', 'F#-Gb_TONE_V.png', 'D#m/Ebm','F#-Gb_TONE_VI.png', 'Fdim', 'F#-Gb_TONE_VII.png'),
('Guitarra', 'EADGBE', 'G','G','G_TONE_I.png', 'Am', 'G_TONE_II.png', 'Bm', 'G_TONE_III.png', 'C', 'G_TONE_IV.png', 'D', 'G_TONE_V.png', 'Em','G_TONE_VI.png', 'F#dim/Gbdim', 'G_TONE_VII.png'),
('Guitarra', 'EADGBE', 'G#/Ab','G#/Ab','G#-Ab_TONE_I.png', 'A#m/Bbm', 'G#-Ab_TONE_II.png', 'Cm', 'G#-Ab_TONE_III.png', 'C#/Db', 'G#-Ab_TONE_IV.png', 'D#/Eb', 'G#-Ab_TONE_V.png', 'Fm','G#-Ab_TONE_VI.png', 'Gdim', 'G#-Ab_TONE_VII.png');

select * from todo;


----   INSTRUMENTOS   ----

create database casa;
use COMF;

drop table instrumento;

create table instrumento  (
    id_inst int auto_increment,
    instrumento varchar(50),
	primary key(id_inst));
                        
INSERT into instrumento values 
(null,'Guitarra'),
(null,'Bajo');

select * from instrumento;

----   AFINACIONES   ----

drop table afinacion;

create table afinacion  (
    id_inst int(50),
    id_afin int auto_increment,
    afinacion varchar(50),
	primary key(id_afin),
    FOREIGN KEY (id_inst) REFERENCES instrumento(id_inst)
    );
                        
INSERT into afinacion values 
(1,null,'EADGBE'),
(1,null,'DGCFAD'),
(2,null,'EADG'),
(2,null,'DGCF');

select * from afinacion;

----   TONALIDADES   ----

drop table tonalidad;

create table tonalidad  (
    id_afin int(50),
    id_tona int auto_increment,
    tonalidad varchar(50),
	primary key(id_tona),
    FOREIGN KEY (id_afin) REFERENCES afinacion(id_afin)
    );
                        
INSERT into tonalidad values 
(1,null,'A'),
(1,null,'A#/Bb'),
(1,null,'B'),
(1,null,'C'),
(1,null,'C#/Db'),
(1,null,'D'),
(1,null,'D#/Eb'),
(1,null,'E'),
(1,null,'F'),
(1,null,'F#/Gb'),
(1,null,'G'),
(1,null,'G#/Ab');

INSERT into tonalidad values 
(2,null,'2A'),
(2,null,'2A#/Bb'),
(2,null,'2B'),
(2,null,'2C'),
(2,null,'2C#/Db'),
(2,null,'2D'),
(2,null,'2D#/Eb'),
(2,null,'2E'),
(2,null,'2F'),
(2,null,'2F#/Gb'),
(2,null,'2G'),
(2,null,'2G#/Ab');

select * from tonalidad;

----   ACORDES   ----

drop table acorde;

create table acorde  (
    id_tona int,
    id_acor int auto_increment,
    acorde varchar(50),
    escala longblob,
	primary key(id_acor),
    FOREIGN KEY (id_tona) REFERENCES tonalidad(id_tona)
    );
                        

INSERT into acorde values 
(1,null,'A','../scales/A_TONE_I.png'), 
(1,null,'Bm', '../scales/A_TONE_II.png'),
(1,null,'C#m/Dbm', '../scales/A_TONE_III.png'), 
(1,null,'D', '../scales/A_TONE_IV.png'), 
(1,null,'E', '../scales/A_TONE_V.png'), 
(1,null,'F#m/Gbm','../scales/A_TONE_VI.png'), 
(1,null,'G#dim/Abdim', '../scales/A_TONE_VII.png'),
(2,null,'A#/Bb','../scales/A#-Bb_TONE_I.png'), 
(2,null,'Cm', '../scales/A#-Bb_TONE_II.png'), 
(2,null,'Dm', '../scales/A#-Bb_TONE_III.png'), 
(2,null,'D#/Eb', '../scales/A#-Bb_TONE_IV.png'), 
(2,null,'F', '../scales/A#-Bb_TONE_V.png'), 
(2,null,'Gm','../scales/A#-Bb_TONE_VI.png'), 
(2,null,'Adim', '../scales/A#-Bb_TONE_VII.png'),
(3,null,'B','../scales/B_TONE_I.png'), 
(3,null,'C#m/Dbm', '../scales/B_TONE_II.png'), 
(3,null,'E', '../scales/B_TONE_III.png'), 
(3,null,'F', '../scales/B_TONE_IV.png'), 
(3,null,'F#/Gb', '../scales/B_TONE_V.png'), 
(3,null,'G#m/Abm','../scales/B_TONE_VI.png'), 
(3,null,'A#dim/Bbdim', '../scales/B_TONE_VII.png'),
(4,null,'C','../scales/C_TONE_I.png'), 
(4,null,'Dm', '../scales/C_TONE_II.png'), 
(4,null,'Em', '../scales/C_TONE_III.png'), 
(4,null,'F', '../scales/C_TONE_IV.png'), 
(4,null,'G', '../scales/C_TONE_V.png'), 
(4,null,'Am','../scales/C_TONE_VI.png'), 
(4,null,'Bdim', '../scales/C_TONE_VII.png'),
(5,null,'C#/Db','../scales/C#-Db_TONE_I.png'), 
(5,null,'D#m/Ebm', '../scales/C#-Db_TONE_II.png'), 
(5,null,'Fm', '../scales/C#-Db_TONE_III.png'), 
(5,null,'F#/Gb', '../scales/C#-Db_TONE_IV.png'), 
(5,null,'G#/Ab', '../scales/C#-Db_TONE_V.png'), 
(5,null,'A#m/Bbm','../scales/C#-Db_TONE_VI.png'), 
(5,null,'Cdim', '../scales/C#-Db_TONE_VII.png'),
(6,null,'D','../scales/D_TONE_I.png'), 
(6,null,'Em', '../scales/D_TONE_II.png'), 
(6,null,'F#m/Gbm', '../scales/D_TONE_III.png'), 
(6,null,'G', '../scales/D_TONE_IV.png'), 
(6,null,'A', '../scales/D_TONE_V.png'), 
(6,null,'Bm','../scales/D_TONE_VI.png'), 
(6,null,'C#dim/Dbdim', '../scales/D_TONE_VII.png'),
(7,null,'D#/Eb','../scales/D#-Eb_TONE_I.png'), 
(7,null,'Fm', '../scales/D#-Eb_TONE_II.png'), 
(7,null,'Gm', '../scales/D#-Eb_TONE_III.png'), 
(7,null,'G#/Ab', '../scales/D#-Eb_TONE_IV.png'), 
(7,null,'A#/Bb', '../scales/D#-Eb_TONE_V.png'), 
(7,null,'Cm','../scales/D#-Eb_TONE_VI.png'), 
(7,null,'Ddim', '../scales/D#-Eb_TONE_VII.png'),
(8,null,'E', '../scales/E_TONE_I.png'), 
(8,null,'F#m/Gbm', '../scales/E_TONE_II.png'), 
(8,null,'G#m/Abm', '../scales/E_TONE_III.png'), 
(8,null,'A', '../scales/E_TONE_IV.png'), 
(8,null,'B', '../scales/E_TONE_V.png'), 
(8,null,'C#m/Dbm','../scales/E_TONE_VI.png'), 
(8,null,'D#dim/Ebdim', '../scales/E_TONE_VII.png'),
(9,null,'F','../scales/F_TONE_I.png'), 
(9,null,'Gm', '../scales/F_TONE_II.png'), 
(9,null,'Am', '../scales/F_TONE_III.png'), 
(9,null,'A#/Bb', '../scales/F_TONE_IV.png'), 
(9,null,'C', '../scales/F_TONE_V.png'), 
(9,null,'Dm','../scales/F_TONE_VI.png'), 
(9,null,'Edim', '../scales/F_TONE_VII.png'),
(10,null,'F#/Gb','../scales/F#-Gb_TONE_I.png'), 
(10,null,'G#m/Abm', '../scales/F#-Gb_TONE_II.png'), 
(10,null,'A#m/Bbm', '../scales/F#-Gb_TONE_III.png'), 
(10,null,'B', '../scales/F#-Gb_TONE_IV.png'), 
(10,null,'C#/Db', '../scales/F#-Gb_TONE_V.png'), 
(10,null,'D#m/Ebm','../scales/F#-Gb_TONE_VI.png'), 
(10,null,'Fdim', '../scales/F#-Gb_TONE_VII.png'),
(11,null,'G','../scales/G_TONE_I.png'), 
(11,null,'Am', '../scales/G_TONE_II.png'), 
(11,null,'Bm', '../scales/G_TONE_III.png'), 
(11,null,'C', '../scales/G_TONE_IV.png'), 
(11,null,'D', '../scales/G_TONE_V.png'), 
(11,null,'Em','../scales/G_TONE_VI.png'), 
(11,null,'F#dim/Gbdim', '../scales/G_TONE_VII.png'),
(12,null,'G#/Ab','../scales/G#-Ab_TONE_I.png'), 
(12,null,'A#m/Bbm', '../scales/G#-Ab_TONE_II.png'), 
(12,null,'Cm', '../scales/G#-Ab_TONE_III.png'), 
(12,null,'C#/Db', '../scales/G#-Ab_TONE_IV.png'), 
(12,null,'D#/Eb', 'G#-Ab_TONE_V.png'), 
(12,null,'Fm','../scales/G#-Ab_TONE_VI.png'), 
(12,null,'Gdim', '../scales/G#-Ab_TONE_VII.png');



select * from acorde;

ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `instrumento`
  ADD PRIMARY KEY (`id_inst`);


ALTER TABLE `afinacion`
  ADD PRIMARY KEY (`id_afin`);


ALTER TABLE `tonalidad`
  ADD PRIMARY KEY (`id_tona`);
  
ALTER TABLE `acorde`
  ADD PRIMARY KEY (`id_acor`);

ALTER TABLE `instrumento`
  MODIFY `id_inst` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;



DROP TABLE song;

create table song (
  id_song int auto_increment,
  song_name varchar(255) not null,
  id_user bigint(20) UNSIGNED,
  id_inst int not null, 
  id_afin int not null, 
  id_tona int not null, 
  id_acor1 int not null, 
  id_acor2 int null, 
  id_acor3 int null, 
  id_acor4 int null, 
  primary key(id_song),
  foreign key (id_user) REFERENCES users(id),
  foreign key (id_inst) REFERENCES instrumento(id_inst),
  foreign key (id_afin) REFERENCES afinacion(id_afin),
  foreign key (id_tona) REFERENCES tonalidad(id_tona),
  foreign key (id_acor1) REFERENCES acorde(id_acor),
  foreign key (id_acor2) REFERENCES acorde(id_acor),
  foreign key (id_acor3) REFERENCES acorde(id_acor),
  foreign key (id_acor4) REFERENCES acorde(id_acor)
  );


drop table song;
drop table acorde;
drop table tonalidad;
drop table afinacion;
drop table instrumento;

  


