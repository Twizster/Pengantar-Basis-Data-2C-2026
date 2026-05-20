SELECT m.nama_mahasiswa, mk.nama_mk, k.semester_ambil
FROM mahasiswa AS m
JOIN krs AS k ON m.id_mahasiswa = k.id_mahasiswa
JOIN mata_kuliah AS mk ON k.id_mata_kuliah = mk.id_mata_kuliah
WHERE k.semester_ambil BETWEEN 3 AND 5
ORDER BY k.semester_ambil ASC;