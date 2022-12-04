# Import data file csv
kunjungan_dokter = read.csv("D:/Data Science - DQLab/Model Regresi Linear dengan R/kunjungan_dokter_gigi_kota_x_dqlab.tsv", header = TRUE, sep = "\t")
penjualan_permen = read.csv("D:/Data Science - DQLab/Model Regresi Linear dengan R/tingkat_penjualan_kota_x_dqlab.tsv", header = TRUE, sep = "\t")

# Membaca dataset
print(kunjungan_dokter)
print(penjualan_permen)

# Menggabungkan data yang diperlukan
data_gabungan = merge(kunjungan_dokter, penjualan_permen, by.x=c("Bulan","Tahun"), by.y=c("Bulan","Tahun"), sort=FALSE)
data_gabungan

# Eksplorasi data statistik dasar
summary(data_gabungan$tingkat.kunjungan.ke.dokter.gigi)
summary(data_gabungan$penjualan.permen)
summary(data_gabungan$penjualan.sereal)
summary(data_gabungan$penjualan.buah.pisang)

# Explorasi data kunjungan dokter dengan penjualan permen
plot(data_gabungan$tingkat.kunjungan.ke.dokter.gigi, data_gabungan$penjualan.permen,
     pch = 19,
     xlab = "Penjualan Permen",
     ylab = "Kunjungan Dokter",
     main = "Kunjungan dokter dengan penjualan permen",     
     col = "blue")

# Explorasi data kunjungan dokter dengan penjualan sereal
plot(data_gabungan$tingkat.kunjungan.ke.dokter.gigi, data_gabungan$penjualan.sereal,
     pch = 19,
     xlab = "Penjualan Sereal",
     ylab = "Kunjungan Dokter",
     main = "Kunjungan dokter dengan penjualan sereal",     
     col = "blue")

#Melakukan explorasi data kunjungan dokter dengan penjualan buah pisang
plot(data_gabungan$tingkat.kunjungan.ke.dokter.gigi, data_gabungan$penjualan.buah.pisang,
     pch = 19,
     xlab = "Penjualan Buah Pisang",
     ylab = "Kunjungan Dokter",
     main = "Kunjungan dokter dengan penjualan buah pisang",
     col = "blue")
