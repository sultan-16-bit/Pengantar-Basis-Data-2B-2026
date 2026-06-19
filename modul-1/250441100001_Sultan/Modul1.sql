-- MODUL1--
CREATE TABLE koleksi_langka (
id_buku BIGINT PRIMARY KEY,
judul VARCHAR (250),
tahun_terbit YEAR,
estimasi_harga FLOAT
)

CREATE TABLE pelanggan_setia(
nomor_identitas INT
);
ALTER TABLE pelanggan_setia
MODIFY nomor_identitas VARCHAR(20)

CREATE TABLE transaksi_harian(
barang VARCHAR (200),
harga BIGINT
)

CREATE TABLE umpan_balik (
    nama VARCHAR (200),
    isi_komentar TEXT
)
