SELECT m.nama_mahasiswa, mk.nama_mk, mk.sks
FROM mahasiswa AS m
JOIN krs AS k ON m.id_mahasiswa = k.id_mahasiswa
JOIN mata_kuliah AS mk ON k.id_mata_kuliah = mk.id_mata_kuliah
WHERE m.program_studi = 'Sistem Informasi'
AND mk.sks > 2
ORDER BY mk.sks DESC, m.nama_mahasiswa ASC;