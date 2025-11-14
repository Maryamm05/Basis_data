-- Buat database baru
CREATE DATABASE db_toko_makanan;
USE db_toko_makanan;

-- Tabel pelanggan
CREATE TABLE pelanggan (
    id_pelanggan INT AUTO_INCREMENT PRIMARY KEY,
    nama VARCHAR(50),
    kota VARCHAR(50)
);

-- Tabel produk
CREATE TABLE produk (
    id_produk INT AUTO_INCREMENT PRIMARY KEY,
    nama_produk VARCHAR(50),
    harga INT
);

-- Tabel penjualan
CREATE TABLE penjualan (
    id_penjualan INT AUTO_INCREMENT PRIMARY KEY,
    id_pelanggan INT,
    id_produk INT,
    jumlah INT,
    FOREIGN KEY (id_pelanggan) REFERENCES pelanggan(id_pelanggan),
    FOREIGN KEY (id_produk) REFERENCES produk(id_produk)
);

-- Isi data pelanggan (15)
INSERT INTO pelanggan (nama, kota) VALUES
('Andi', 'Jakarta'),
('Budi', 'Bandung'),
('Citra', 'Surabaya'),
('Dewi', 'Yogyakarta'),
('Eka', 'Semarang'),
('Fajar', 'Medan'),
('Gita', 'Malang'),
('Hadi', 'Denpasar'),
('Indah', 'Makassar'),
('Joko', 'Bogor'),
('Kiki', 'Cirebon'),
('Lina', 'Palembang'),
('Maya', 'Pontianak'),
('Nina', 'Manado'),
('Oscar', 'Padang');

-- Isi data produk (15)
INSERT INTO produk (nama_produk, harga) VALUES
('Nasi Goreng', 15000),
('Mie Goreng', 14000),
('Ayam Geprek', 18000),
('Sate Ayam', 20000),
('Bakso', 16000),
('Soto Ayam', 15000),
('Nasi Uduk', 12000),
('Rendang', 25000),
('Gado-gado', 13000),
('Lontong Sayur', 14000),
('Nasi Padang', 20000),
('Pecel Lele', 17000),
('Tempe Mendoan', 8000),
('Ayam Bakar', 19000),
('Nasi Campur', 18000);

-- Isi data penjualan (15)
INSERT INTO penjualan (id_pelanggan, id_produk, jumlah) VALUES
(1, 1, 2),
(2, 3, 1),
(3, 5, 3),
(4, 2, 2),
(5, 4, 1),
(6, 6, 1),
(7, 7, 2),
(8, 9, 1),
(9, 10, 1),
(10, 8, 2),
(11, 11, 1),
(12, 12, 1),
(13, 13, 3),
(14, 14, 1),
(15, 15, 1);
