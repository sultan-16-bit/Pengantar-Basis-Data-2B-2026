-- MODUL 6--

-- soal 1--
SELECT m.nim, m.nama, n.nilai_angka
FROM mahasiswa AS m
JOIN nilai AS n ON m.nim = n.nim
WHERE n.nilai_angka > (
    SELECT AVG(nilai_angka)
    FROM nilai
);

-- soal 2--
SELECT mk.kode_mk, mk.nama_mk
FROM mata_kuliah mk
JOIN krs k ON mk.kode_mk = k.kode_mk
JOIN mahasiswa m ON k.nim = m.nim
WHERE m.nama = 'Budi Santoso';

-- soal 3--
SELECT nim, nama
FROM mahasiswa m
WHERE EXISTS (
    SELECT *
    FROM nilai n
    WHERE m.nim = n.nim
);

-- soal 4--
SELECT kode_mk, AVG(nilai_angka) AS rata_rata
FROM (
    SELECT kode_mk, nilai_angka
    FROM nilai
    WHERE kode_mk IN ('MK01', 'MK02')
) AS data_nilai
GROUP BY kode_mk;

-- soal 5--
CREATE VIEW  v_transkrip_lengkap AS
SELECT 
    m.nim,
    m.nama AS nama_mahasiswa,
    mk.nama_mk,
    n.nilai_huruf
FROM mahasiswa m
JOIN nilai n ON m.nim = n.nim
JOIN mata_kuliah mk ON n.kode_mk = mk.kode_mk;

SELECT *
FROM v_transkrip_lengkap
WHERE nilai_huruf = 'A';

