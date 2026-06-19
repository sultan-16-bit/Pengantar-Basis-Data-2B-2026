-- MODUL2--
-- soal1--
CREATE DATABASE klinik_sehat_bersama;

CREATE TABLE dokter(
id_dokter INT PRIMARY KEY,
nama_dokter VARCHAR (200),
spesialisasi VARCHAR (150)
)

CREATE TABLE pasien (
id_pasien INT PRIMARY KEY,
nama_pasien VARCHAR (200),
tanggal_lahir DATE,
no_telp INT (12)
)

CREATE TABLE rekam_medis (
id_rekam INT PRIMARY KEY,
id_pasien INT,
id_dokter INT,
tanggal_periksa DATE,
diagnosis VARCHAR (100),

FOREIGN KEY (id_pasien) REFERENCES pasien(id_pasien) ON DELETE RESTRICT,
FOREIGN KEY (id_dokter) REFERENCES dokter(id_dokter) ON DELETE RESTRICT
)

DESCRIBE dokter;
DESCRIBE pasien;
DESCRIBE rekam_medis;

SHOW TABLES;

-- soal2--
INSERT INTO dokter
(id_dokter, nama_dokter, spesialisasi)
VALUES 
(1, 'dr. kafka', 'dokter anak'),
(2, 'dr. gerhant', 'dokter tht'),
(3, 'dr. dherren', 'dokter mata')

INSERT INTO pasien
(id_pasien, nama_pasien, tanggal_lahir, no_telp)
VALUES
(1, 'ririn', '2026-03-21', 0811223344),
(2, 'monica', '2026-04-22', 08334455),
(3, 'shifa', '2026-05-23', 08667788)

INSERT INTO rekam_medis
(id_rekam, id_dokter, id_pasien, tanggal_periksa, diagnosis)
VALUES
(1, 1, 3, '2026-01-09', 'anak kurang gizi'),
(2, 2, 1, '2026-01-21', 'membersihkan telinga'),
(3, 3, 2, '2026-01-17', 'cek mata');

INSERT INTO rekam_medis
(id_rekam, id_dokter, id_pasien, tanggal_periksa, diagnosis)
VALUES
(4, 4, 1, '2025-11-10', 'haii')

SELECT * FROM dokter; 
SELECT * FROM pasien; 
SELECT * FROM rekam_


-- soal3--
UPDATE pasien
SET no_telp = 0812345678
WHERE id_pasien = 3

UPDATE dokter
SET spesialisasi = 'dokter kandungan'
WHERE id_dokter = 3

DELETE FROM rekam_medis
WHERE id_rekam = 2

SELECT * FROM pasien; 
SELECT * FROM dokter; 
SELECT * FROM rekam_medis;


-- soal4--
CREATE TABLE rekam_medis (
id_rekam INT PRIMARY KEY,
id_dokter INT,
id_pasien INT,
tanggal_periksa DATE,
diagnosis TEXT,

FOREIGN KEY (id_dokter)  REFERENCES dokter(id_dokter) ON DELETE CASCADE,
FOREIGN KEY (id_pasien) REFERENCES pasien(id_pasien) ON DELETE RESTRICT
);

DELETE FROM dokter
WHERE id_dokter = 1;

SELECT * FROM rekam_medis;

-- soal 5
TRUNCATE TABLE rekam_medis;

TRUNCATE TABLE pasien;
