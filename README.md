# counter_7

Nama: Dianisa Wulandari

Kelas: PBP F

NPM: 2106702150

## Tugas 7
- Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya.
Secara singkat, stateless widget merupakan widget yang static dan stateful widget merupakan widget yang dinamis. Stateful widget dapat berubah berdasarkan suatu event, sedangkan stateless widget tidak akan berubah.

- Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
    1. Text: Widget yang berisi teks
    2. Center: Widget yang menempatkan semua childnya di bagian tengah widget
    3. Column: Widget berupa kolom yang menempatkan childnya sebagai baris-baris
    4. Padding: Widget yang mengatur posisi childnya
    5. Row: Widget berupa baris yang menempatkan childnya sebagai kolom-kolom
    6. Visibility: Widget yang mengatur muncul-hilangnya child
    7. floating action button: Widget tombol

- Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
setState() berfungsi untuk memberi peringatan bahwa ada variabel yang berubah sehingga stateful widget yang bergantung pada variabel tersebut akan dibuild ulang.

- Jelaskan perbedaan antara const dengan final.
Value dari Const dan final tidak bisa diubah setelah di-assign. Perbedaannya adalah value dari const harus sudah di-assign saat compile time, sedangkan value dari final dapat ditambahkan saat runtime.

- Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
    1. Jalankan perintah "flutter create counter_7" di terminal.
    2. Ubah title pada MyHomePage menjadi "Program Counter". 
    3. Buat FloatingActionButton dengan icon remove dan FloatingActionButton dengan icon   add, lalu tempatkan pada row yang sama. Tempatkan row tersebut ke dalam widget Padding untuk mengatur posisi tombol agar tidak melebihi window.
    4. Buat method _getText() yang akan menyesuiakan teks dan warna berdasarkan ganjil atau genapnya counter. Lalu, buat method _incrementCounter() yang akan menambahkan counter dengan 1 dan method _decrementCounter() yang akan mengurangi counter dengan 1. Method _getText() dipanggil pada method _incrementCounter() dan _decrementCounter() agar text selalu diupdate setiap kali terjadi perubahan pada counter.
    5. Meletakkan tombol remove sebagai child dari Visibility agar bisa dapat dihilangkan atau dimunculkan berdasarkan counter.

## Tugas 8
- Jelaskan perbedaan Navigator.push dan Navigator.pushReplacement.
Navigator.push() menambahkan page baru ke navigation stack dan pindah ke page tersebut. Karena setiap page disimpan dalam stack, maka page sebelumnya dapat diakses dengan Navigator.pop(). Sedangkan, Navigator.pushReplacement() akan pindah ke page baru dan menghilangkan page lama.

- Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
    1. Text: Widget yang berisi teks
    2. Form: Widget yang menerima inout data dari user
    3. Column: Widget berupa kolom yang menempatkan childnya sebagai baris-baris
    4. Padding: Widget yang mengatur posisi childnya
    5. Row: Widget berupa baris yang menempatkan childnya sebagai kolom-kolom
    6. Card: Widget yang akan diisi teks
    7. Drawer: Widget untuk berpindah page
    8. TextButton: Widget tombol

- Sebutkan jenis-jenis event yang ada pada Flutter (contoh: onPressed).
    1. onPressed
    2. onSaved
    3. onChanged
    4. onTap

- Jelaskan bagaimana cara kerja Navigator dalam "mengganti" halaman dari aplikasi Flutter.
Apabila menggunakan Navigator.push(), maka page yang dituju akan ditambahkan ke top of stack. Untuk kembali ke page sebelumnya, dapat dilakukan Navigator.pop() untuk menghilangkan current page dari stack sehingga top of stack adalah page sebelumnnya. Apabila menggunakan Navigator.pushReplacement, maka current page langsung digantikan oleh page baru yang dibuild dengan MaterialPageRoute.

- Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
    1. Buat 3 file dart, masing-masing untuk halaman counter, tambah budget, dan daftar budget.
    2. Tambahkan drawer ke semua file tersebut. Isi drawer dengan ListTile yang apabila ditekan akan melakukan routing ke halaman tertentu.
    3. Pada halaman Tambah Budget, buat widget form yang akan menerima input user. Buat dua TextFormField untuk menerima input judul dan nominal serta DropdownButton untuk memilih jenis budget. Buat TextButton untuk menyimpan data ke sebuah list
    4. Pada halaman Data Budget, import list dari tambah budget. Lakukan looping dan buat sebuah card untuk menampung dan menampilkan setiap data pada list.

## Tugas 9 (TUGAS INDIVIDU TERAKHIR YEYYYY)
- Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?
Ya, kita dapat mengambil data JSON tanpa membuat model. Data JSON dapat langsung didecode dan disimpan dalam sebuah object Map<\String, dynamic>. Akibatnya, tipe data dari setiap attribut tidak diketahui dan rentan terjadi runtime error. Maka, sebaiknya dibuat model agar tipe data setiap attribut dapat diketahui dan error langsung terdeteksi saat compile.

- Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
    1. Text: Widget yang berisi teks
    2. InkWell: Widget yang membuat child widgetnya dapat diklik
    3. Column: Widget berupa kolom yang menempatkan childnya sebagai baris-baris
    4. Center: Widget yang menempatkan childnya dengan alignment center
    5. SizedBox: Membuat box dengan ukuran tertentu
    6. RichText: Membuat tulisan dengan font style yang berbeda-beda
    7. Drawer: Widget untuk berpindah page
    8. TextButton: Widget tombol

- Jelaskan mekanisme pengambilan data dari json hingga dapat ditampilkan pada Flutter.
Kirim http request dengan url yang akan mengembalikan http response. Response tersebut didecode dengan jsonDecode() dan disimpan dalam sebuah object Map<\String, dynamic>. Kemudian, setiap data pada map tersebut dikonversi menjadi sebuah object model dan disimpan dalan sebuah list. Data pada list tersebut ditampilkan dengan bantuan ListView.builder().

- Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
    1. Tambahkan ListTile pada drawer. pada event onTap, lakukan routing ke page My Watch List dengan bantuan MaterialPageRoute dan Navigator.pushReplacement
    2. Buat suatu file dart yang diisi dengan model WatchList.
    3. Membuat file baru yang diisi dengan page My Watch List. Lakukan fetch data dari heroku dan tampilkan jdul dari setiap film.
    4. Gunakan widget InkWell agar setiap judul dapat diklik dan menampilkan page detail 
    5. Buat file baru yang berisi page untuk menampilkan detail dari film
    6. Pada page detail, tambahkan tombol back agar dapat kembali ke page My Watch List

