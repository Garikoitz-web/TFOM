1 SELECCIONAR INSTRUMENTO 

SELECT instrumentos FROM instrumentos where id_inst=1;


2. SELECCIONAR AFINACION SEGUN INSTRUMENTO ELEGIDO (guitarra)

            SELECT afinaciones FROM afinaciones, instrumentos WHERE afinaciones.id_inst=2
            +-------------+
            | afinaciones |
            +-------------+
            | EADG        |
            | DGCF        |
            | EADG        |
            | DGCF        |
            +-------------+

            SELECT * FROM instrumentos WHERE id_inst=(select id_inst from afinaciones where afinaciones='DGCFAD');
            +---------+--------------+
            | id_inst | instrumentos |
            +---------+--------------+
            |       1 | Guitarra     |
            +---------+--------------+


SELECT afinaciones FROM afinaciones WHERE id_inst=(select id_inst from instrumentos where id_inst=1);
+-------------+
| afinaciones |
+-------------+
| EADGBE      |
| DGCFAD      |
+-------------+




3. SELECCIONAR TONALIDAD SEGUN AFINACION ELEGIDA (EADGBE)


SELECT tonalidad FROM tonalidades WHERE id_afin=(select id_afin from afinaciones where id_afin=1);
+-----------+
| tonalidad |
+-----------+
| A         |
| A#/Bb     |
| B         |
| C         |
| C#/Db     |
| D         |
| D#/Eb     |
| E         |
| F         |
| F#/Gb     |
| G         |
| G#/Ab     |
+-----------+





4. SELECCIONAR ACORDES SEGUN TONALIDAD ELEGIDA (A#/Bb)


SELECT acordes FROM acordes WHERE id_tona=(select id_tona from tonalidades where id_tona=2);


