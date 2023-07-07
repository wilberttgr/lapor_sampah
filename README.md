# Alpikasi Lapor Sampah Online :
  Penjelasan :
  - Login : menggunakan username dan password yang terhubung ke firebase auth Email : ok@gmail.com, Password : 12345678
  - Sign Up : menggunakan firebase auth dengan mengisi menggunakan email dan password dan langsung directed ke home
  - Home : terdapat 2 menu yaitu Report Trash dan Logout jika klik (report trash) maka akan directed ke menu Lapor, jika 
           klik (Logout) maka         
           akan directed ke menu login
  - Lapor : - terdapat menu edit untuk menambahkan laporan yang akan dilaporkan oleh user dan terhubung ke database 
              firestore, 
            - menampilkan semua data dari firestore
  - Add Lapor : - terdapat form untuk melaporkan sampah online yang harus diisi yaitu ada nama anda, nomor ponsel, 
                  lokasi yang dilaporkan dan 
                  keterangan semuanya menggunakan tipe data string
                - jika berhasil sistem akan menampilkan dialog berhasil melaporkan, Laporan diterima, terimakasih atas 
                  laporan anda 
                - jika gagal sistem akan menampilkan Terjadi kesalahan, tidak berhasil melaporkan 
# Deskripsi :
- menggunakan GetX
- menggunakan controller
- menggunakn authentikasi firebase auth
- menggunakan database firestore
- Bisa di run all platform

# Note :
Untuk Windows Biasanya bisa kadang tidak pak, kalau web, android, mac bisa 