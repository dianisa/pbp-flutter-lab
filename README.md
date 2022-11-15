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