CREATE TABLE `Buku`(
    `id_buku` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `judul` VARCHAR(255) NOT NULL,
    `pengarang` VARCHAR(255) NOT NULL,
    `penerbit` TEXT NOT NULL,
    `tahun_terbit` BOOLEAN NOT NULL
);
CREATE TABLE `Anggota`(
    `id_anggota` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `nama` BIGINT NOT NULL,
    `alamat` BIGINT NOT NULL,
    `no telpon` BIGINT NOT NULL
);
CREATE TABLE `petugas`(
    `id_petugas` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `nama_petugas` BIGINT NOT NULL,
    `username` VARCHAR(255) NOT NULL,
    `password` VARCHAR(255) NOT NULL
);
CREATE TABLE `peminjaman`(
    `id_peminjaman` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `id_buku` VARCHAR(255) NULL,
    `id_anggota` VARCHAR(255) NOT NULL,
    `id_petugas` VARCHAR(255) NOT NULL,
    `tanggal_pinjam` VARCHAR(255) NOT NULL,
    `tanggal_kembali` TEXT NOT NULL
);
CREATE TABLE `pengembalian`(
    `id_pengembalian` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `id_peminjam` BIGINT NOT NULL,
    `tanggal_pengembalian` VARCHAR(255) NOT NULL,
    `denda` VARCHAR(255) NOT NULL
);
ALTER TABLE
    `Buku` ADD CONSTRAINT `buku_judul_foreign` FOREIGN KEY(`judul`) REFERENCES `Buku`(`judul`);
ALTER TABLE
    `Buku` ADD CONSTRAINT `buku_pengarang_foreign` FOREIGN KEY(`pengarang`) REFERENCES `Anggota`(`nama`);
ALTER TABLE
    `petugas` ADD CONSTRAINT `petugas_username_foreign` FOREIGN KEY(`username`) REFERENCES `peminjaman`(`id_petugas`);
ALTER TABLE
    `peminjaman` ADD CONSTRAINT `peminjaman_tanggal_kembali_foreign` FOREIGN KEY(`tanggal_kembali`) REFERENCES `pengembalian`(`tanggal_pengembalian`);
ALTER TABLE
    `Anggota` ADD CONSTRAINT `anggota_nama_foreign` FOREIGN KEY(`nama`) REFERENCES `petugas`(`nama_petugas`);