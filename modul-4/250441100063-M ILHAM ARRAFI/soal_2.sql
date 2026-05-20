SELECT m.nama_mahasiswa, k.id_mata_kuliah
FROM mahasiswa AS m
LEFT JOIN krs AS k ON m.id_mahasiswa = k.id_mahasiswa;