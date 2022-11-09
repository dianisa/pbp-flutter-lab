#counter_7

Nama: Dianisa Wulandari

Kelas: PBP F

NPM: 2106702150

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