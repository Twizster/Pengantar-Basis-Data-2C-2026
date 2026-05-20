SELECT m.nama_mahasiswa, m.angkatan, mk.nama_mk, d.nama_dosen
FROM mahasiswa AS m
JOIN krs AS k ON m.id_mahasiswa = k.id_mahasiswa
JOIN mata_kuliah AS mk ON k.id_mata_kuliah = mk.id_mata_kuliah
JOIN dosen AS d ON mk.id_dosen = d.id_dosen
WHERE m.angkatan BETWEEN 2023 AND 2025
AND d.nama_dosen IN ('Dr. Budi', 'Prof. Siti')
ORDER BY m.angkatan DESC;