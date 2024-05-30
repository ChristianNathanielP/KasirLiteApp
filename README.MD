# Aplikasi Kasir Sederhana
Program kasir ini dirancang untuk mempermudah proses transaksi penjualan di toko dengan menyediakan dua jenis akun: admin dan kasir. Akun admin digunakan untuk mengelola data barang, sedangkan akun kasir digunakan untuk melakukan transaksi penjualan.


## Instalasi:
1. Unduh dan pasang JDK
2. Clone repositori dari GitHub ini
3. Buka proyek di IDE pilihan Anda
4. Import file penjualan.sql ke database lokal (localhost). Pastikan database server sudah berjalan dan Anda memiliki hak akses yang diperlukan.
5. Pada file strukPDF.java, sesuaikan file path untuk menyimpan bukti transaksi sesuai dengan lokasi yang diinginkan di sistem Anda.
6. Jalankan `login_page.java` dari IDE.


## Cara Menjalankan Program

### 1. Login

Untuk memulai, jalankan file `login_page.java`. Terdapat dua jenis akun yang dapat digunakan untuk login:

- **Akun Admin:**
  - Username: `admin1`
  - Password: `admin123`
  
- **Akun Cashier:**
  - Username: `cashier1`
  - Password: `cashier123`

### 2. Halaman Setelah Login

Berdasarkan jenis akun yang digunakan, pengguna akan diarahkan ke halaman yang berbeda:

#### Akun Admin

Setelah login sebagai admin, pengguna akan diarahkan ke `admin.java`. Di sini, admin dapat mengelola keseluruhan data barang untuk transaksi, termasuk:

- **Menambah Barang:** Admin dapat menambahkan barang baru dengan mengisi form yang tersedia.
- **Mengedit Barang:** Admin dapat mengubah detail barang yang sudah ada.
- **Menghapus Barang:** Admin dapat menghapus barang dari daftar.

#### Akun Cashier

Setelah login sebagai kasir, pengguna akan diarahkan ke `Penjualan.java`. Halaman ini digunakan untuk melakukan transaksi penjualan dengan fitur-fitur berikut:

- **Memasukkan Data Customer:** Mengambil ID dan nama customer.
- **Mencari dan Menambah Barang:** Mencari barang yang dipilih customer berdasarkan ketersediaan di data admin dan menambahkannya ke transaksi.
- **Menghapus Barang dari Transaksi:** Jika diperlukan, kasir dapat menghapus barang dari detail transaksi.
- **Memasukkan Pembayaran:** User memasukkan jumlah pembayaran. Jika jumlahnya kurang, akan muncul notifikasi bahwa uang tidak cukup.
- **Menampilkan Kembalian:** Setelah pembayaran, sistem akan menampilkan kembalian.
- **Mencetak Struk:** Tombol "Cetak" berfungsi untuk menyimpan transaksi dan mencetak struk, yang otomatis disimpan di file path yang telah ditentukan.

### 3. Logout

Di `admin.java` dan `Penjualan.java`, terdapat ikon logout yang berfungsi untuk mengembalikan halaman ke halaman login.

           
