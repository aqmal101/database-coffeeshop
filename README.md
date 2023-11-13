# README Database Kafe Sederhana

Ini adalah database sederhana untuk sebuah kafe. Database ini didesain untuk menyimpan informasi mengenai pelanggan, menu, pesanan, dan transaksi yang terjadi di kafe tersebut.

## Struktur Database

Database ini terdiri dari beberapa tabel utama:

1. **Tabel Pelanggan**: Tabel ini menyimpan informasi mengenai pelanggan yang datang ke kafe. Ini mencakup nama, nomor telepon, dan alamat email mereka.

2. **Tabel Menu**: Tabel ini berisi daftar menu yang tersedia di kafe, beserta harga dan deskripsi masing-masing item menu.

3. **Tabel Pesanan**: Tabel ini mencatat pesanan pelanggan. Setiap entri dalam tabel ini terhubung dengan tabel pelanggan dan tabel menu, mencatat siapa yang memesan apa.

4. **Tabel Transaksi**: Tabel ini berisi catatan tentang transaksi yang terjadi di kafe. Ini mencakup informasi tentang waktu transaksi, total pembayaran, dan metode pembayaran yang digunakan.

## Cara Menggunakan Database

Anda dapat menggunakan database ini dengan aplikasi database seperti MySQL, PostgreSQL, atau MongoDB. Di bawah ini adalah beberapa langkah dasar untuk memulai:

1. Buat Database: Mulailah dengan membuat database di sistem database Anda. Anda dapat menggunakan perintah SQL untuk membuat tabel yang sesuai dengan struktur yang disebutkan di atas.

2. Impor Data: Anda dapat memasukkan data pelanggan, menu, pesanan, dan transaksi ke dalam database sesuai dengan kebutuhan kafe Anda.

3. Menjalankan Query: Gunakan query SQL untuk mengakses dan memanipulasi data dalam database sesuai dengan kebutuhan kafe Anda. Anda dapat melakukan hal seperti menambahkan pesanan baru, menghitung total pendapatan, dan melihat data pelanggan.

## Contoh Query

Berikut adalah beberapa contoh query SQL yang dapat Anda gunakan:

- Menambahkan pelanggan baru ke database:

  ```sql
  INSERT INTO pelanggan (nama, nomor_telepon, email) VALUES ('John Doe', '08123456789', 'john.doe@example.com');
