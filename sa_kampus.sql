-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 24 Jan 2025 pada 08.17
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sa_kampus`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `dosen`
--

CREATE TABLE `dosen` (
  `id_dosen` int(11) NOT NULL,
  `nidn` varchar(50) NOT NULL,
  `nama_dosen` varchar(50) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `jenis_kelamin` varchar(25) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telepon` varchar(15) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `dosen`
--

INSERT INTO `dosen` (`id_dosen`, `nidn`, `nama_dosen`, `alamat`, `jenis_kelamin`, `email`, `telepon`, `foto`) VALUES
(1, '190302329', 'Irma Rofni Wulandari S.pd.,M.Eng', 'Jogjakarta', 'Perempuan', 'rofni@amikom.ac.id', '08123456789', 'bu_irma.png'),
(7, '190302686', 'Marwan Noor Fauzy,M.Kom', 'Jogjakarta', 'Laki-laki', 'marwannoorfauzy@amikom.ac.id', '08111111111', 'pak_marwan.jpg'),
(8, '190302582', 'Stevi Ema Wijayanti, M.Kom', 'Jogjakarta', 'Perempuan', 'stevi.ema@amikom.ac.id', '082222222222', 'STEVI.jpeg'),
(9, '0517038501', 'Windha Mega Pradnya Dhuhita ,M.Kom', 'Jogjakarta', 'Perempuan', 'windha@amikom.ac.id', '083333333333', 'windha.jpg'),
(10, '190302415', 'Irwan Setiawanto, S.Kom, M.Eng', 'Jogjakarta', 'Laki-laki', 'nawris@amikom.ac.id', '08444444444', 'irwan_setiawanto.jpeg'),
(11, '23SI06', 'Sutarni, S.E., M.M.', 'Jogjakarta', 'Perempuan', 'sutarni@amikom.ac.id', '0855555555', 'sutarni.jpeg'),
(12, '0522026702', 'Rahma Widyawati, S.E., M.M.', 'Jogjakarta', 'Perempuan', 'rahma@amikom.ac.id', '08666666666', 'rahma.jpeg'),
(13, '190302345', 'Niken Larasati, S.Kom, M.Eng', 'Jogjakarta', 'Perempuan', 'larasati@amikom.ac.id', '08777777777', 'Niken.jpeg'),
(14, '190302154', 'Devi Wulandari S.Kom,.M.Kom', 'Jogjakarta', 'Perempuan', 'devi@amikom.ac.id', '0899999999', 'Devi_Wulandari.jpeg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `identitas`
--

CREATE TABLE `identitas` (
  `id` int(11) NOT NULL,
  `nama_website` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telepon` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `identitas`
--

INSERT INTO `identitas` (`id`, `nama_website`, `alamat`, `email`, `telepon`) VALUES
(1, 'UNIVERSITAS ATLET REBAHAN', 'Jalan in aja dulu gus', 'atletrebahan@gmail.com', '08123456789');

-- --------------------------------------------------------

--
-- Struktur dari tabel `informasi`
--

CREATE TABLE `informasi` (
  `id_informasi` int(11) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `judul_informasi` varchar(50) NOT NULL,
  `isi_informasi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `informasi`
--

INSERT INTO `informasi` (`id_informasi`, `icon`, `judul_informasi`, `isi_informasi`) VALUES
(1, 'fas fa-university', 'Penerimaan Mahasiswa Baru', 'Penerimaan mahasiswa gelombang khusus Universitas Atlet Rebahan dibuka mulai tanggal 1 Januari 2025 - 30 Januari 2025.'),
(2, 'fas fa-wallet', 'Pembayaran', 'Pembayaran uang kuliah mulai tanggal 1 Februari 2025 - 30 Februari 2025.'),
(3, 'fas fa-user-graduate', 'Jadwal Wisuda', 'Jadwal pelaksanaan wisuda gelombang pertama pada tanggal 2 maret 2025.'),
(4, 'fas fa-file-invoice', 'Bimbingan Skripsi', 'Jadwal bimbingan skripsi/tugas akhir mulai dilaksanakan pada tanggal 21 Juni 2025.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal_kuliah`
--

CREATE TABLE `jadwal_kuliah` (
  `id` int(11) NOT NULL,
  `kode_matkul` varchar(10) NOT NULL,
  `nama_dosen` varchar(100) NOT NULL,
  `hari` enum('Senin','Selasa','Rabu','Kamis','Jumat','Sabtu','Minggu') NOT NULL,
  `jam_mulai` time NOT NULL,
  `jam_selesai` time NOT NULL,
  `ruangan` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `jadwal_kuliah`
--

INSERT INTO `jadwal_kuliah` (`id`, `kode_matkul`, `nama_dosen`, `hari`, `jam_mulai`, `jam_selesai`, `ruangan`, `created_at`, `updated_at`) VALUES
(3, 'MF', 'Sutarni, S.E., M.M.', 'Senin', '08:50:00', '10:30:00', '4.3.6', '2025-01-17 13:07:10', '2025-01-17 13:49:07'),
(4, 'SMBDL', 'Marwan Noor Fauzy,M.Kom', 'Senin', '10:40:00', '00:20:00', 'L 7.4.2', '2025-01-17 13:10:00', '2025-01-17 13:49:17'),
(5, 'MM', 'Irwan Setiawanto, S.Kom, M.Eng', 'Senin', '15:30:00', '17:10:00', 'L 7.6.2', '2025-01-17 13:11:05', '2025-01-17 13:49:33'),
(6, 'PWL', 'Irma Rofni Wulandari S.pd.,M.Eng', 'Selasa', '19:00:00', '20:40:00', '5.3.6', '2025-01-17 13:11:46', '2025-01-17 13:11:46'),
(7, 'SD', 'Windha Mega Pradnya Dhuhita ,M.Kom', 'Selasa', '07:00:00', '08:30:00', '5.3.6', '2025-01-17 13:12:35', '2025-01-17 13:49:46'),
(8, 'MS', 'Rahma Widyawati, S.E., M.M.', 'Selasa', '10:40:00', '12:20:00', '4.2.5', '2025-01-17 13:13:26', '2025-01-17 13:49:53'),
(9, 'SS', 'Devi Wulandari S.Kom,.M.Kom', 'Selasa', '07:00:00', '08:40:00', '5.3.8', '2025-01-17 13:14:05', '2025-01-17 13:50:01'),
(10, 'SO', 'Niken Larasati, S.Kom, M.Eng', 'Rabu', '08:50:00', '10:30:00', 'L 2.4.3', '2025-01-17 13:19:07', '2025-01-17 13:50:12'),
(14, 'SD', 'Windha Mega Pradnya Dhuhita ,M.Kom', 'Rabu', '10:40:00', '12:20:00', 'L 2.4.1', '2025-01-17 13:23:25', '2025-01-17 13:23:25'),
(15, 'BP2', 'Stevi Ema Wijayanti, M.Kom', 'Kamis', '13:20:00', '15:00:00', '5.4.8', '2025-01-17 13:24:03', '2025-01-17 13:24:03'),
(16, 'PWL', 'Irma Rofni Wulandari S.pd.,M.Eng', 'Kamis', '15:30:00', '17:10:00', 'L 2.4.5', '2025-01-17 13:24:36', '2025-01-17 13:24:36'),
(17, 'BP2', 'Stevi Ema Wijayanti, M.Kom', 'Jumat', '08:50:00', '10:30:00', 'L 2.4.1', '2025-01-17 13:25:02', '2025-01-17 13:25:02');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurusan`
--

CREATE TABLE `jurusan` (
  `id_jurusan` int(11) NOT NULL,
  `kode_jurusan` varchar(3) NOT NULL,
  `nama_jurusan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `jurusan`
--

INSERT INTO `jurusan` (`id_jurusan`, `kode_jurusan`, `nama_jurusan`) VALUES
(1, 'FIK', 'Fakultas Ilmu Komputer'),
(2, 'FES', 'Fakultas Ekonomi & Sosial'),
(8, 'FST', 'Fakultas Sains & Teknologi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `krs`
--

CREATE TABLE `krs` (
  `id_krs` int(11) NOT NULL,
  `id_ta` int(10) NOT NULL,
  `nim` varchar(10) NOT NULL,
  `kode_matkul` varchar(10) NOT NULL,
  `nilai` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `krs`
--

INSERT INTO `krs` (`id_krs`, `id_ta`, `nim`, `kode_matkul`, `nilai`) VALUES
(1, 1, '3052', 'PWL', 'A'),
(2, 1, '3052', 'SMBDL', 'A'),
(3, 1, '3052', 'MM', 'A'),
(4, 1, '3052', 'BP2', 'A'),
(5, 1, '3052', 'SO', 'A'),
(6, 1, '3052', 'MF', 'A'),
(7, 1, '3052', 'MS', ''),
(8, 1, '3052', 'SD', ''),
(9, 1, '3052', 'SS', ''),
(10, 1, '3072', 'PWL', 'A'),
(11, 1, '3072', 'SMBDL', 'A');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(11) NOT NULL,
  `nim` varchar(10) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama_lengkap` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telepon` varchar(20) NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `nama_prodi` varchar(25) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `nim`, `password`, `nama_lengkap`, `alamat`, `email`, `telepon`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `nama_prodi`, `foto`) VALUES
(1, '3052', 'rakha', 'Rakha Imanni Satrio', 'Tangerang', 'rakhiman@students.amikom.ac.id', '085795680671', 'Tangerang', '2003-11-04', 'Laki-laki', 'Sistem Informasi', 'foto1.jpg'),
(2, '3072', 'mabrur', 'Muhammad Mabrur', 'Aceh', 'muhammadmabrur@students.amikom.ac.id', '0823510043022', 'Alue Bilie', '2004-12-18', 'Laki-laki', 'Sistem Informasi', 'foto2.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `matkul`
--

CREATE TABLE `matkul` (
  `kode_matkul` varchar(10) NOT NULL,
  `nama_matkul` varchar(50) NOT NULL,
  `sks` int(2) NOT NULL,
  `semester` int(2) NOT NULL,
  `nama_prodi` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `matkul`
--

INSERT INTO `matkul` (`kode_matkul`, `nama_matkul`, `sks`, `semester`, `nama_prodi`) VALUES
('BP2', 'Bahasa Pemrograman 2', 4, 3, 'Sistem Informasi'),
('MF', 'Manajemen Finansial', 2, 3, 'Sistem Informasi'),
('MM', 'Multimedia', 2, 3, 'Sistem Informasi'),
('MS', 'Manajemen Strategik', 2, 3, 'Sistem Informasi'),
('PWL', 'Pemrograman Web Lanjut', 4, 3, 'Sistem Informasi'),
('SD', 'Struktur Data', 4, 3, 'Sistem Informasi'),
('SMBDL', 'Sistem Manajemen Basis Data Lanjut', 2, 3, 'Sistem Informasi'),
('SO', 'Sistem Operasi', 2, 3, 'Sistem Informasi'),
('SS', 'Success Skill', 2, 3, 'Sistem Informasi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `presensi`
--

CREATE TABLE `presensi` (
  `id_presensi` int(11) NOT NULL,
  `id_mahasiswa` int(11) DEFAULT NULL,
  `tanggal_presensi` date DEFAULT NULL,
  `status_presensi` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `presensi`
--

INSERT INTO `presensi` (`id_presensi`, `id_mahasiswa`, `tanggal_presensi`, `status_presensi`) VALUES
(4, 1, '2022-01-01', 'Hadir'),
(5, 2, '2022-01-02', 'Tidak Hadir'),
(6, 1, '2025-01-10', 'Hadir'),
(7, 2, '2025-01-17', 'Hadir'),
(8, 2, '2025-01-24', 'Hadir');

-- --------------------------------------------------------

--
-- Struktur dari tabel `prodi`
--

CREATE TABLE `prodi` (
  `id_prodi` int(11) NOT NULL,
  `kode_prodi` varchar(25) NOT NULL,
  `nama_prodi` varchar(25) NOT NULL,
  `nama_jurusan` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `prodi`
--

INSERT INTO `prodi` (`id_prodi`, `kode_prodi`, `nama_prodi`, `nama_jurusan`) VALUES
(1, 'SI', 'Sistem Informasi', 'Fakultas Ilmu Komputer'),
(2, 'ILKOM', 'Ilmu Komunikasi', 'Fakultas Ekonomi & Sosial'),
(5, 'MI', 'Manajemen Informatika', 'Fakultas Ilmu Komputer'),
(6, 'IT', 'Informatika', 'Fakultas Ilmu Komputer'),
(7, 'TI', 'Teknologi Informasi', 'Fakultas Ilmu Komputer');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tahun_akademik`
--

CREATE TABLE `tahun_akademik` (
  `id_ta` int(11) NOT NULL,
  `tahun_akademik` varchar(50) NOT NULL,
  `semester` varchar(10) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tahun_akademik`
--

INSERT INTO `tahun_akademik` (`id_ta`, `tahun_akademik`, `semester`, `status`) VALUES
(1, '2025/2026', 'Ganjil', 'Aktif'),
(2, '2024/2025', 'Genap', 'Aktif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tentang_kampus`
--

CREATE TABLE `tentang_kampus` (
  `id` int(11) NOT NULL,
  `sejarah` varchar(1000) NOT NULL,
  `visi` varchar(255) NOT NULL,
  `misi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tentang_kampus`
--

INSERT INTO `tentang_kampus` (`id`, `sejarah`, `visi`, `misi`) VALUES
(1, 'Kampus Atlet Rebahan, sebuah institusi pendidikan fiktif yang unik dan inovatif, didirikan pada tahun 2024 oleh komunitas yang memiliki visi untuk mengubah pandangan tentang gaya hidup modern. Kampus ini berfokus pada pemberdayaan individu yang memiliki gaya hidup santai namun ingin tetap produktif dan berkontribusi secara positif dalam berbagai bidang.', 'Menjadi pusat pendidikan yang mengintegrasikan gaya hidup santai dengan pencapaian prestasi tinggi dalam berbagai bidang.', 'Membangun komunitas yang saling mendukung dalam pengembangan diri dan karier dengan santai.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transkrip_nilai`
--

CREATE TABLE `transkrip_nilai` (
  `id_transkrip` int(11) NOT NULL,
  `nim` varchar(10) NOT NULL,
  `kode_matkul` varchar(10) NOT NULL,
  `nilai` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `transkrip_nilai`
--

INSERT INTO `transkrip_nilai` (`id_transkrip`, `nim`, `kode_matkul`, `nilai`) VALUES
(1, '3052', 'PWL', 'A'),
(2, '3052', 'SMBDL', 'A'),
(3, '3052', 'MM', 'A'),
(4, '3052', 'BP2', ''),
(5, '3052', 'SO', ''),
(6, '3052', 'MF', ''),
(7, '3052', 'MS', ''),
(8, '3052', 'SD', ''),
(9, '3052', 'SS', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `level` enum('admin','user') NOT NULL,
  `blokir` enum('Y','N') NOT NULL,
  `id_sessions` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `email`, `level`, `blokir`, `id_sessions`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin@gmail.com', 'admin', 'N', '');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`id_dosen`),
  ADD UNIQUE KEY `uq_nama_dosen` (`nama_dosen`);

--
-- Indeks untuk tabel `identitas`
--
ALTER TABLE `identitas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `informasi`
--
ALTER TABLE `informasi`
  ADD PRIMARY KEY (`id_informasi`);

--
-- Indeks untuk tabel `jadwal_kuliah`
--
ALTER TABLE `jadwal_kuliah`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_jadwal_kuliah_matkul` (`kode_matkul`),
  ADD KEY `fk_jadwal_kuliah_dosen` (`nama_dosen`);

--
-- Indeks untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id_jurusan`),
  ADD UNIQUE KEY `uq_nama_jurusan` (`nama_jurusan`);

--
-- Indeks untuk tabel `krs`
--
ALTER TABLE `krs`
  ADD PRIMARY KEY (`id_krs`),
  ADD KEY `fk_krs_tahun_akademik` (`id_ta`),
  ADD KEY `fk_krs_mahasiswa` (`nim`),
  ADD KEY `fk_krs_matkul` (`kode_matkul`);

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_nim` (`nim`),
  ADD KEY `fk_mahasiswa_prodi` (`nama_prodi`);

--
-- Indeks untuk tabel `matkul`
--
ALTER TABLE `matkul`
  ADD PRIMARY KEY (`kode_matkul`),
  ADD UNIQUE KEY `uq_kode_matkul` (`kode_matkul`),
  ADD KEY `fk_matkul_prodi` (`nama_prodi`);

--
-- Indeks untuk tabel `presensi`
--
ALTER TABLE `presensi`
  ADD PRIMARY KEY (`id_presensi`),
  ADD KEY `fk_presensi_mahasiswa` (`id_mahasiswa`);

--
-- Indeks untuk tabel `prodi`
--
ALTER TABLE `prodi`
  ADD PRIMARY KEY (`id_prodi`),
  ADD UNIQUE KEY `uq_nama_prodi` (`nama_prodi`),
  ADD KEY `fk_prodi_jurusan` (`nama_jurusan`);

--
-- Indeks untuk tabel `tahun_akademik`
--
ALTER TABLE `tahun_akademik`
  ADD PRIMARY KEY (`id_ta`),
  ADD UNIQUE KEY `uq_id_ta` (`id_ta`);

--
-- Indeks untuk tabel `tentang_kampus`
--
ALTER TABLE `tentang_kampus`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transkrip_nilai`
--
ALTER TABLE `transkrip_nilai`
  ADD PRIMARY KEY (`id_transkrip`),
  ADD KEY `fk_transkrip_mahasiswa` (`nim`),
  ADD KEY `fk_transkrip_matkul` (`kode_matkul`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `dosen`
--
ALTER TABLE `dosen`
  MODIFY `id_dosen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `identitas`
--
ALTER TABLE `identitas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `informasi`
--
ALTER TABLE `informasi`
  MODIFY `id_informasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `jadwal_kuliah`
--
ALTER TABLE `jadwal_kuliah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `id_jurusan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `krs`
--
ALTER TABLE `krs`
  MODIFY `id_krs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `presensi`
--
ALTER TABLE `presensi`
  MODIFY `id_presensi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `prodi`
--
ALTER TABLE `prodi`
  MODIFY `id_prodi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tahun_akademik`
--
ALTER TABLE `tahun_akademik`
  MODIFY `id_ta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tentang_kampus`
--
ALTER TABLE `tentang_kampus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `transkrip_nilai`
--
ALTER TABLE `transkrip_nilai`
  MODIFY `id_transkrip` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `jadwal_kuliah`
--
ALTER TABLE `jadwal_kuliah`
  ADD CONSTRAINT `fk_jadwal_kuliah_dosen` FOREIGN KEY (`nama_dosen`) REFERENCES `dosen` (`nama_dosen`),
  ADD CONSTRAINT `fk_jadwal_kuliah_matkul` FOREIGN KEY (`kode_matkul`) REFERENCES `matkul` (`kode_matkul`);

--
-- Ketidakleluasaan untuk tabel `krs`
--
ALTER TABLE `krs`
  ADD CONSTRAINT `fk_krs_mahasiswa` FOREIGN KEY (`nim`) REFERENCES `mahasiswa` (`nim`),
  ADD CONSTRAINT `fk_krs_matkul` FOREIGN KEY (`kode_matkul`) REFERENCES `matkul` (`kode_matkul`),
  ADD CONSTRAINT `fk_krs_tahun_akademik` FOREIGN KEY (`id_ta`) REFERENCES `tahun_akademik` (`id_ta`);

--
-- Ketidakleluasaan untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD CONSTRAINT `fk_mahasiswa_prodi` FOREIGN KEY (`nama_prodi`) REFERENCES `prodi` (`nama_prodi`);

--
-- Ketidakleluasaan untuk tabel `matkul`
--
ALTER TABLE `matkul`
  ADD CONSTRAINT `fk_matkul_prodi` FOREIGN KEY (`nama_prodi`) REFERENCES `prodi` (`nama_prodi`);

--
-- Ketidakleluasaan untuk tabel `presensi`
--
ALTER TABLE `presensi`
  ADD CONSTRAINT `fk_presensi_mahasiswa` FOREIGN KEY (`id_mahasiswa`) REFERENCES `mahasiswa` (`id`),
  ADD CONSTRAINT `presensi_ibfk_1` FOREIGN KEY (`id_mahasiswa`) REFERENCES `mahasiswa` (`id`);

--
-- Ketidakleluasaan untuk tabel `prodi`
--
ALTER TABLE `prodi`
  ADD CONSTRAINT `fk_prodi_jurusan` FOREIGN KEY (`nama_jurusan`) REFERENCES `jurusan` (`nama_jurusan`);

--
-- Ketidakleluasaan untuk tabel `transkrip_nilai`
--
ALTER TABLE `transkrip_nilai`
  ADD CONSTRAINT `fk_transkrip_mahasiswa` FOREIGN KEY (`nim`) REFERENCES `mahasiswa` (`nim`),
  ADD CONSTRAINT `fk_transkrip_matkul` FOREIGN KEY (`kode_matkul`) REFERENCES `matkul` (`kode_matkul`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
