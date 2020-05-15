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
    escala varchar(50),
	primary key(id_acor),
    FOREIGN KEY (id_tona) REFERENCES tonalidad(id_tona)
    );
                        
INSERT into acorde values 
(1,null,'A','A_TONE_I.png'), 
(1,null,'Bm', 'A_TONE_II.png'),
(1,null,'C#m/Dbm', 'A_TONE_III.png'), 
(1,null,'D', 'A_TONE_IV.png'), 
(1,null,'E', 'A_TONE_V.png'), 
(1,null,'F#m/Gbm','A_TONE_VI.png'), 
(1,null,'G#dim/Abdim', 'A_TONE_VII.png'),
(2,null,'A#/Bb','A#-Bb_TONE_I.png'), 
(2,null,'Cm', 'A#-Bb_TONE_II.png'), 
(2,null,'Dm', 'A#-Bb_TONE_III.png'), 
(2,null,'D#/Eb', 'A#-Bb_TONE_IV.png'), 
(2,null,'F', 'A#-Bb_TONE_V.png'), 
(2,null,'Gm','A#-Bb_TONE_VI.png'), 
(2,null,'Adim', 'A#-Bb_TONE_VII.png'),
(3,null,'B','B_TONE_I.png'), 
(3,null,'C#m/Dbm', 'B_TONE_II.png'), 
(3,null,'E', 'B_TONE_III.png'), 
(3,null,'F', 'B_TONE_IV.png'), 
(3,null,'F#/Gb', 'B_TONE_V.png'), 
(3,null,'G#m/Abm','B_TONE_VI.png'), 
(3,null,'A#dim/Bbdim', 'B_TONE_VII.png'),
(4,null,'C','C_TONE_I.png'), 
(4,null,'Dm', 'C_TONE_II.png'), 
(4,null,'Em', 'C_TONE_III.png'), 
(4,null,'F', 'C_TONE_IV.png'), 
(4,null,'G', 'C_TONE_V.png'), 
(4,null,'Am','C_TONE_VI.png'), 
(4,null,'Bdim', 'C_TONE_VII.png'),
(5,null,'C#/Db','C#-Db_TONE_I.png'), 
(5,null,'D#m/Ebm', 'C#-Db_TONE_II.png'), 
(5,null,'Fm', 'C#-Db_TONE_III.png'), 
(5,null,'F#/Gb', 'C#-Db_TONE_IV.png'), 
(5,null,'G#/Ab', 'C#-Db_TONE_V.png'), 
(5,null,'A#m/Bbm','C#-Db_TONE_VI.png'), 
(5,null,'Cdim', 'C#-Db_TONE_VII.png'),
(6,null,'D','D_TONE_I.png'), 
(6,null,'Em', 'D_TONE_II.png'), 
(6,null,'F#m/Gbm', 'D_TONE_III.png'), 
(6,null,'G', 'D_TONE_IV.png'), 
(6,null,'A', 'D_TONE_V.png'), 
(6,null,'Bm','D_TONE_VI.png'), 
(6,null,'C#dim/Dbdim', 'D_TONE_VII.png'),
(7,null,'D#/Eb','D#-Eb_TONE_I.png'), 
(7,null,'Fm', 'D#-Eb_TONE_II.png'), 
(7,null,'Gm', 'D#-Eb_TONE_III.png'), 
(7,null,'G#/Ab', 'D#-Eb_TONE_IV.png'), 
(7,null,'A#/Bb', 'D#-Eb_TONE_V.png'), 
(7,null,'Cm','D#-Eb_TONE_VI.png'), 
(7,null,'Ddim', 'D#-Eb_TONE_VII.png'),
(8,null,'E', 'E_TONE_I.png'), 
(8,null,'F#m/Gbm', 'E_TONE_II.png'), 
(8,null,'G#m/Abm', 'E_TONE_III.png'), 
(8,null,'A', 'E_TONE_IV.png'), 
(8,null,'B', 'E_TONE_V.png'), 
(8,null,'C#m/Dbm','E_TONE_VI.png'), 
(8,null,'D#dim/Ebdim', 'E_TONE_VII.png'),
(9,null,'F','F_TONE_I.png'), 
(9,null,'Gm', 'F_TONE_II.png'), 
(9,null,'Am', 'F_TONE_III.png'), 
(9,null,'A#/Bb', 'F_TONE_IV.png'), 
(9,null,'C', 'F_TONE_V.png'), 
(9,null,'Dm','F_TONE_VI.png'), 
(9,null,'Edim', 'F_TONE_VII.png'),
(10,null,'F#/Gb','F#-Gb_TONE_I.png'), 
(10,null,'G#m/Abm', 'F#-Gb_TONE_II.png'), 
(10,null,'A#m/Bbm', 'F#-Gb_TONE_III.png'), 
(10,null,'B', 'F#-Gb_TONE_IV.png'), 
(10,null,'C#/Db', 'F#-Gb_TONE_V.png'), 
(10,null,'D#m/Ebm','F#-Gb_TONE_VI.png'), 
(10,null,'Fdim', 'F#-Gb_TONE_VII.png'),
(11,null,'G','G_TONE_I.png'), 
(11,null,'Am', 'G_TONE_II.png'), 
(11,null,'Bm', 'G_TONE_III.png'), 
(11,null,'C', 'G_TONE_IV.png'), 
(11,null,'D', 'G_TONE_V.png'), 
(11,null,'Em','G_TONE_VI.png'), 
(11,null,'F#dim/Gbdim', 'G_TONE_VII.png'),
(12,null,'G#/Ab','G#-Ab_TONE_I.png'), 
(12,null,'A#m/Bbm', 'G#-Ab_TONE_II.png'), 
(12,null,'Cm', 'G#-Ab_TONE_III.png'), 
(12,null,'C#/Db', 'G#-Ab_TONE_IV.png'), 
(12,null,'D#/Eb', 'G#-Ab_TONE_V.png'), 
(12,null,'Fm','G#-Ab_TONE_VI.png'), 
(12,null,'Gdim', 'G#-Ab_TONE_VII.png');



select * from acorde;




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