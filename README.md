# Database Coffeeshop

Repositori ini berisi script SQL untuk membuat dan mengelola database kafe sederhana. Database ini terdiri dari beberapa tabel utama yang mencatat informasi mengenai menu, pesanan, pelanggan, kasir, transaksi, dan meja.

## Struktur Database

Database ini terdiri dari beberapa tabel utama:
1. **Tabel Menu**
Tabel ini digunakan untuk menyimpan daftar menu yang tersedia di kafe. Setiap item menu memiliki ID unik, nama menu, harga satuan, dan jumlah stok yang tersedia.

2. **Tabel Pesanan**
Tabel ini mencatat pesanan yang dibuat oleh pelanggan. Setiap pesanan terhubung dengan item menu dari tabel "Menu" melalui ID menu. Tabel ini juga mencatat jumlah pesanan, ID kasir yang menerima pesanan, dan nomor struk yang terkait dengan pesanan.

3. **Tabel Pelanggan**
Tabel ini digunakan untuk menyimpan informasi mengenai pelanggan kafe. Data pelanggan meliputi ID unik, nama pelanggan, nomor telepon, dan alamat email.

4. **Tabel Kasir**
Tabel ini berisi data mengenai kasir yang melayani pelanggan. Ini mencakup ID kasir, nama kasir, nomor telepon, email, dan shift kerja kasir.

5. **Tabel Transaksi**
Tabel ini mencatat semua transaksi yang terjadi di kafe. Setiap transaksi memiliki nomor struk unik, ID pelanggan yang membuat transaksi, ID kasir yang melayani transaksi, ID meja, tanggal transaksi, diskon yang diberikan, pajak yang dikenakan, total harga, dan uang kembalian.

6. **Tabel Meja**
Tabel ini digunakan untuk mengelola informasi tentang meja di kafe. Meja memiliki ID unik, ID pesanan yang saat ini terhubung (jika meja sudah dipesan), dan nomor meja.

### Instruksi Penggunaan
Script SQL dalam repositori ini dapat dijalankan menggunakan sistem manajemen basis data seperti MySQL, PostgreSQL, atau sejenisnya. Pastikan untuk menjalankan skrip secara berurutan, mulai dari pembuatan database hingga tabel-tabel yang diperlukan.

### Catatan Penting
- Pastikan untuk menyesuaikan perintah SQL dengan kebutuhan Anda sebelum dijalankan.
- Dokumentasi tambahan seperti langkah-langkah instalasi dan penggunaan lebih lanjut bisa ditambahkan untuk mempermudah penggunaan database.

### Lisensi
Repositori ini disediakan di bawah lisensi [MIT](LICENSE). Anda bebas menggunakan, memodifikasi, dan mendistribusikan database ini sesuai dengan kebutuhan Anda.

### Kontribusi
Jika Anda tertarik untuk berkontribusi, silakan fork repositori ini dan ajukan pull request dengan perubahan yang diusulkan.

Berikut adalah beberapa contoh query SQL yang dapat Anda gunakan:

- Menambahkan pelanggan baru ke database:

  ```sql
  INSERT INTO pelanggan (nama_pelanggan, no_telp, email)
              VALUES ('Walter White', '0899783455541', 'heisenberg8989@gmail.com'),
                    ('Gustavo Fring', '0854242441121', 'chickenman123@gmail.com'),
                    ('Mike Ehrmantraut', '0855356117798', 'pipop765@gmail.com');
