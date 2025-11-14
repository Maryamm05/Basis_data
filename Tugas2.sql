/*
=========================================================
   FILE: where_between.sql
   DESKRIPSI:
   Contoh lengkap penggunaan WHERE dan BETWEEN
   untuk database db_toko_makanan
=========================================================
*/

USE db_toko_makanan;

-- ======================================================
--                BAGIAN PENGGUNAAN WHERE
-- ======================================================

-- 1. Mencari pelanggan berdasarkan kota tertentu
SELECT 
    id_pelanggan,
    nama,
    kota
FROM 
    pelanggan
WHERE 
    kota = 'Bandung';

-- 2. Mencari produk dengan harga di atas 15000
SELECT 
    id_produk,
    nama_produk,
    harga
FROM 
    produk
WHERE 
    harga > 15000;

-- 3. Mencari penjualan dengan jumlah tertentu
SELECT 
    id_penjualan,
    id_pelanggan,
    id_produk,
    jumlah
FROM 
    penjualan
WHERE 
    jumlah = 2;

-- 4. Mencari pelanggan yang namanya mengandung huruf 'a'
SELECT
    id_pelanggan,
    nama,
    kota
FROM
    pelanggan
WHERE
    nama LIKE '%a%';


-- ======================================================
--               BAGIAN PENGGUNAAN BETWEEN
-- ======================================================

-- 5. Mencari produk dalam rentang harga 10000 - 20000
SELECT 
    id_produk,
    nama_produk,
    harga
FROM 
    produk
WHERE 
    harga BETWEEN 10000 AND 20000;

-- 6. Mencari pelanggan berdasarkan rentang ID
SELECT 
    id_pelanggan,
    nama,
    kota
FROM 
    pelanggan
WHERE 
    id_pelanggan BETWEEN 5 AND 10;

-- 7. Mencari penjualan dengan jumlah pembelian 1–3
SELECT
    id_penjualan,
    id_pelanggan,
    id_produk,
    jumlah
FROM
    penjualan
WHERE
    jumlah BETWEEN 1 AND 3;

-- 8. BETWEEN + ORDER BY
SELECT
    nama_produk,
    harga
FROM
    produk
WHERE
    harga BETWEEN 12000 AND 25000
ORDER BY
    harga ASC;
