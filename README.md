# Database Coffeeshop

Repositori ini berisi script SQL untuk membuat dan mengelola database kafe sederhana. Database ini terdiri dari beberapa tabel utama yang mencatat informasi mengenai `menu`, `pesanan`, `pelanggan`, `kasir`, `transaksi`, dan `meja`.

## Struktur Database

Database ini terdiri dari beberapa tabel utama:
1. **Tabel** `menu`
   - Tabel ini digunakan untuk menyimpan daftar menu yang tersedia di kafe. Setiap item menu memiliki ID unik, nama menu, harga satuan, dan jumlah stok yang tersedia.

2. **Tabel** `pesanan`
   - Tabel ini mencatat pesanan yang dibuat oleh pelanggan. Setiap pesanan terhubung dengan item menu dari tabel "Menu" melalui ID menu. Tabel ini juga mencatat jumlah pesanan, ID kasir yang menerima pesanan, dan nomor struk yang terkait dengan pesanan.

3. **Tabel** `pelanggan`
   - Tabel ini digunakan untuk menyimpan informasi mengenai pelanggan kafe. Data pelanggan meliputi ID unik, nama pelanggan, nomor telepon, dan alamat email.

4. **Tabel** `kasir`
   - Tabel ini berisi data mengenai kasir yang melayani pelanggan. Ini mencakup ID kasir, nama kasir, nomor telepon, email, dan shift kerja kasir.

5. **Tabel** `transaksi`
   - Tabel ini mencatat semua transaksi yang terjadi di kafe. Setiap transaksi memiliki nomor struk unik, ID pelanggan yang membuat transaksi, ID kasir yang melayani transaksi, ID meja, tanggal transaksi, diskon yang diberikan, pajak yang dikenakan, total harga, dan uang kembalian.

6. **Tabel** `meja`
   - Tabel ini digunakan untuk mengelola informasi tentang meja di kafe. Meja memiliki ID unik, ID pesanan yang saat ini terhubung (jika meja sudah dipesan), dan nomor meja.

### Langkah-langkah mengimpor sistem informasi coffeeshop
### Langkah 1: Persiapkan `Database`
Pastikan Xampp sudah terinstall di sistem kamu dan kamu memiliki akses untuk membuat dan mengelola database jika belum, anda bisa download dan install sesuai sistem operasi anda : https://bit.ly/3SJISAN

### Langkah 2: Gunakan Perintah `mysql` atau `mysqlimport`

#### Melalui Command Line:
1. **Buka terminal atau command prompt.**
2. **Login ke Xampp:**
   ```bash
   mysql -u username -p
   ```
   Gantilah `username` dengan username MariaDB kamu. Setelah itu, sistem akan meminta kamu memasukkan password.

3. **Buat Database (jika belum ada):**
   ```sql
   CREATE DATABASE nama_database;
   ```
   Gantilah `nama_database` dengan nama database yang ingin kamu buat.

4. **Gunakan Database:**
   ```sql
   USE nama_database;
   ```
   Gantilah `nama_database` dengan nama database yang sudah kamu buat.

5. **Impor Skrip SQL:**
   ```bash
   source /path/to/your/sql/file.sql;
   ```
   Pastikan untuk menggantikan `/path/to/your/sql/file.sql` dengan path yang benar ke file SQL kamu.

### Cara Import `database` Melalui phpMyAdmin :
1) Buka phpMyAdmin di browser.
2) Buat Database Baru:
   - Klik "Database" di menu atas.
   - Masukkan nama database baru dan klik "Create".
3) Pilih Database yang Baru Dibuat:
   - Klik nama database yang baru dibuat di panel kiri.
   - Pilih Tab "SQL".
4) Impor Skrip SQL:
   - Klik "Choose File" dan pilih file SQL kamu.
   - Klik "Go" atau "Import" untuk memulai proses impor.

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
