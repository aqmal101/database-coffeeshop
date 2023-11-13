create database coffeshop;
show databases;
drop database coffeshop;
use coffeshop;
show tables;

create table menu (
id_menu int auto_increment primary key, 
nama_menu varchar(50), 
harga_satuan int(10), 
stok int(10)
);
describe menu;

create table pesanan (
id_pesanan int auto_increment primary key, 
id_menu int(10), 
no_struk int(10),
qty int(10), 
id_kasir int(10), 
foreign key (id_menu) references menu(id_menu),
foreign key (no_struk) references transaksi(no_struk)
);
describe pesanan;
drop table pesanan;

-- Transaksi ( no_struk, id_kasir , metode, total_harga, id_ pelanggan)
-- Pesanan ( id_ pesanan, id_ menu, gty, subtotal, no struk)
ALTER TABLE transaksi
DROP FOREIGN KEY pesanan_ibfk_2;

DROP TABLE transaksi;



create table pesanan (
id_pesanan int auto_increment primary key,
id_menu int(10),
no_struk int(10),
qty int(10),
subtotal varchar(10),
foreign key (id_menu) references menu(id_menu),
foreign key (no_struk) references transaksi(no_struk)
);
drop table pesanan;

create table pelanggan (
id_pelanggan int auto_increment primary key, 
nama_pelanggan varchar(50), 
no_telp varchar(12), 
email varchar(50)
);
describe pelanggan;

create table kasir (
id_kasir int auto_increment primary key, 
nama_kasir varchar(50),  
no_telp varchar(12), 
email varchar(50), 
sift varchar(10)
);
describe kasir;

create table transaksi (
no_struk int auto_increment primary key, 
id_pelanggan int(10), 
id_kasir int(10),
id_meja int(10),
tgl_transaksi timestamp, 
diskon int(10), 
pajak int(10), 
total_harga int(10), 
uang_kembalian int(10),
foreign key (id_pelanggan) references pelanggan(id_pelanggan),
foreign key (id_meja) references meja(id_meja),
foreign key (id_kasir) references kasir(id_kasir)
);
describe transaksi;
drop table transaksi;

create table meja (
id_meja int auto_increment primary key, 
id_pesanan int(10), 
no_meja varchar(10)
);
describe meja;
drop table meja;
alter table meja auto_increment = 1001;

insert into meja (id_pesanan, no_meja)
values ('1', 'M01'), ('2', 'M02'), ('3', 'M03'),
	   ('4', 'M04'), ('5', 'M05');
select* from meja;

insert into menu
values (1, 'Americano coffe', 20000, '10000');


select* from menu;

insert into pesanan (id_pesanan, id_menu, id_pelanggan, id_kasir, jumlah_pesanan, subtotal)
values (1, 1, 1, 1, 3, 60000),
(2, 2, 2, 1, 3, 63000),
(3, 3, 3, 3, 4, 96000),
(4, 4, 4, 2, 2, 40000),
(5, 5, 5, 3, 1, 18000);
select* from pesanan;

insert into pelanggan (id_pelanggan, nama_pelanggan, no_telp, email)
values (1, 'John Wick', '082134985872', 'johnw@gmail.com'),
(2, 'Tyler Durden', '081314858729', 'tylerd@gmail.com'),
(3, 'Ken Miles', '085785879044', 'miles@gmail.com'),
(4, 'Peter Parker', '082138414587', 'peterp@gmail.com'),
(5, 'Jon Snow', '081318991872', 'jonsnow@gmail.com');
select* from pelanggan;

insert into kasir (id_kasir, nama_kasir, no_telp, email, sift)
values (1, 'Aqmal', '08876529836', 'aqmal@gmail.com', 'Pagi'),
(2, 'Bima', '08571067789', 'bima@gmail.com', 'Siang'),
(3, 'Berliana', '08988891278', 'berliana@gmail.com', 'Malam'),
(4, 'Rahma', '089889556033', 'rahma@gmail.com', 'Pagi'),
(5, 'Miftah', '08777891278', 'miftah@gmail.com', 'Malam');
select* from kasir;

insert into transaksi (id_transaksi, id_pesanan, tggl_transaksi, diskon, pajak, total_harga, uang_kembalian)
values (1, 1, '2023-9-19', 0.3, 0.1, 48000, 2000),
(2, 2, '2023-9-21', 0.4, 0.1, 41580, 8420),
(3, 3, '2023-9-22', 0.3, 0.1, 81600, 18400),
(4, 4, '2023-9-22', 0.2, 0.1, 36000, 14000),
(5, 5, '2023-9-24', 0.1, 0.1, 17100, 2900);
select* from transaksi;

insert into transaksi_bayar (id_bayar, id_transaksi, uang_bayar)
values (1001, '1', '200000'),
(1002, '3', '60000'),
(1003, '2', '230000'),
(1004, '5', '100000'),
(1005, '4', '140000');
select* from transaksi_bayar;

insert into meja (id_meja, id_pesanan, no_meja)
values (001, '1', '01'),
(002, '2', '02'),
(003, '3', '03'),
(004, '4', '04'),
(005, '5', '05');
select* from meja;

-- query data relasi --
-- 1. SQL Syntax
-- ex : Menampilkan Nama Menu dari Tabel Menu:
select nama_menu FROM menu;
-- 2. SQL SELECT Statement
-- ex : Menampikan Nama Menu dan Harga Satuan:
select nama_menu, harga_satuan FROM menu;
-- 3. SQL SELECT DISTINCT Statement
-- ex : Menampikan Tanggal Transaksi Unik:
select distinct DATE(tggl_transaksi) as tanggal_transaksi FROM transaksi;
-- 4. SQL Where
-- ex : Menampikan Pesanan yang Jumlahnya Lebih dari 3:
select * from pesanan where jumlah_pesanan > 3;
-- 5. SQL ORDER BY
-- ex : Menampilkan dengan Mengurutkan Transaksi Bayar Berdasarkan Uang Bayar (Dari yang Terbesar):
select* from transaksi_bayar
ORDER BY uang_bayar DESC;
-- 6. SQL AND Operator
-- ex : Menampilkan Data Menu dengan Harga di Bawah 20.000 dan jumlah stok 700:
select * from menu where harga_satuan < 20000 AND stok = 700;
-- 7. SQL OR Operator
-- ex : Menampilkan Pelanggan yang Nama Pelanggannya 'John Wick' atau 'Tyler Durden':
select * from pelanggan where nama_pelanggan = 'John Wick' OR nama_pelanggan = 'Tyler Durden';
-- 8. SQL NOT Operator
-- ex : Menampilkan Kasir yang Bekerja di Shift Malam:
select * from kasir where sift != 'Pagi' AND sift != 'Siang';
-- 9. SQL Alter
-- ex : tambahkan kolom laba di table transaksi--
alter table transaksi ADD laba int(10);
describe transaksi;
-- 10. SQL LIMIT
-- ex : Menampilkan tabel menu dengan limit 3:
select* from  menu limit 3;
-- 11. SQL MIN() and MAX() Functions
-- ex: Menampilkan nimal MIN dari harga satuan dari tabel menu:
select MIN(harga_satuan) AS harga_terendah
from  menu;
-- ex: Menampilkan nimal MAX dari harga satuan dari tabel menu:
select MAX(harga_satuan) AS harga_tertinggi
from menu;
-- 12. SQL COUNT() Function
-- ex: Menampilkan dengan Menghitung jumlah meja dalam tabel meja:
select COUNT(*) as total_meja from meja;
-- 13. SQL SUM() Function
-- ex: Menampilkan dengan Menghitung total jumlah pesanan (jumlah_pesanan) dari tabel pesanan:
select SUM(jumlah_pesanan) AS total_jumlah_pesanan from pesanan;
-- 14. SQL AVG() Function
-- ex : Menampilkan dengan Menghitung rata2 harga menu dari tabel menu:
select AVG(harga_satuan) AS rata_rata_harga_menu
from menu;
-- 15. SQL LIKE Operator
-- ex : Mencari semua pelanggan yang nama pelanggannya dimulai dengan huruf "J"
select* from pelanggan
where nama_pelanggan LIKE 'J%';
-- 16. SQL Wildcard Characters
-- ex: Menampilkan semua menu yang mengandung kata "coffe" di nama_menu
select* from  menu where nama_menu LIKE '%coffe%';
-- 17. SQL IN Operator
-- ex: Mennampilkan dengan mencari transaksi berdasarkan ID yaitu 1 dan 3:
select* from  transaksi where id_transaksi IN (1, 3);
-- 18. SQL BETWEEN Operator
-- ex: mwnampilkan data dengan mencari data total_harga 40000 AND 80000 di tabel transaksi:
select* from transaksi
where total_harga BETWEEN 40000 AND 80000;
-- 19. SQL Aliases
-- ex: Menggunakan aliases pada hasil perhitungan
select jumlah_pesanan * subtotal AS 'Total Harga'
from pesanan;
-- 20. SQL Joins
-- ex: Menampilkan daftar pesanan dengan nama pelanggan, menu, dan nama kasir yang melayani:
select pesanan.id_pesanan, pelanggan.nama_pelanggan, menu.nama_menu, kasir.nama_kasir
from pesanan
JOIN pelanggan ON pesanan.id_pelanggan = pelanggan.id_pelanggan
JOIN menu ON pesanan.id_menu = menu.id_menu
JOIN kasir ON pesanan.id_kasir = kasir.id_kasir;