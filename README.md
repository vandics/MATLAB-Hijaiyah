# MATLAB-Hijaiyah
Projek ini merupakan projek CNN untuk mengklasifikasikan tulisan huruf hijaiyah yang disertai dengan GUI
file network VGG16 = https://drive.google.com/file/d/1cktkDYXTtNDLO-jN9jMd7UhQDEykDTF2/view?usp=sharing
file dataset uji/training = https://drive.google.com/drive/folders/14BFm3DzfrTahUeFOqmhvDUjUDuh9Lfi9?usp=sharing
Fitur yang ada ialah
1. Klasifikasi = melakukan klasifikasi ke semua file uji menggunakan VGG16 dan Alexnet
2. Rekognisi = dengan memasukkan gambar yang digunakan untuk uji/tes, maka akan menghasilkan rekognisi termasuk huruf hijaiyah apa
## Cara penggunaan
1. run awal.fig untuk menampilkan halaman awal
2. klik classification untuk melakukan training menggunakan dataset kita kemudian pilih jenis CNN yang ingin digunakan yaitu VGG16 atau Alexnet
3. Jika training sudah selesai akan menghasilkan akurasi, presisi, dan recal
4. klik recognition untuk melakukan tes/uji menggunakan satu gambar huruf hijaiyah
5. Hasil yang keluar berupa gambar yang mirip, jenis huruf, dan akurasi dalam persen.
