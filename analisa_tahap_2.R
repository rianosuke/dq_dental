library(dplyr)

# Delay effect
# Melihat efek delay karena penjualan permen pada satu waktu biasanya tidak langsung berdampak di waktu yang sama
data_delayed_effect = data.frame(
  month = data_gabungan$Bulan,
  year = data_gabungan$Tahun,
  kunjungan_dokter = data_gabungan$tingkat.kunjungan.ke.dokter.gigi,
  penjualan_permen = data_gabungan$penjualan.permen,
  penjualan_permen_1 = lag(data_gabungan$penjualan.permen),
  penjualan_permen_2 = lag(data_gabungan$penjualan.permen,2),
  penjualan_permen_3 = lag(data_gabungan$penjualan.permen,3),
  penjualan_permen_4 = lag(data_gabungan$penjualan.permen,4),
  penjualan_permen_5 = lag(data_gabungan$penjualan.permen,5),
  penjualan_permen_6 = lag(data_gabungan$penjualan.permen,6)
)
data_delayed_effect

# Scatterplot
plot(data_delayed_effect$kunjungan_dokter, data_delayed_effect$penjualan_permen,
     pch = 19,
     xlab = "Penjualan Permen",
     ylab = "Kunjungan dokter",
     main = "Kunjungan dokter dengan penjualan permen", 
     col = "blue")

plot(data_delayed_effect$kunjungan_dokter, data_delayed_effect$penjualan_permen_1,
     pch = 19,
     xlab = "Penjualan Permen",
     ylab = "Kunjungan dokter",
     main = "Kunjungan dokter dengan penjualan permen (delay 1 bulan)", 
     col = "blue")

plot(data_delayed_effect$kunjungan_dokter, data_delayed_effect$penjualan_permen_2,
     pch = 19,
     xlab = "Penjualan Permen",
     ylab = "Kunjungan dokter",
     main = "Kunjungan dokter dengan penjualan permen (delay 2 bulan)", 
     col = "blue")

plot(data_delayed_effect$kunjungan_dokter, data_delayed_effect$penjualan_permen_3,
     pch = 19,
     xlab = "Penjualan Permen",
     ylab = "Kunjungan dokter",
     main = "Kunjungan dokter dengan penjualan permen (delay 3 bulan)", 
     col = "blue")

plot(data_delayed_effect$kunjungan_dokter, data_delayed_effect$penjualan_permen_4,
     pch = 19,
     xlab = "Penjualan Permen",
     ylab = "Kunjungan dokter",
     main = "Kunjungan dokter dengan penjualan permen (delay 4 bulan)", 
     col = "blue")

plot(data_delayed_effect$kunjungan_dokter, data_delayed_effect$penjualan_permen_5,
     pch = 19,
     xlab = "Penjualan Permen",
     ylab = "Kunjungan dokter",
     main = "Kunjungan dokter dengan penjualan permen (delay 5 bulan)", 
     col = "blue")

plot(data_delayed_effect$kunjungan_dokter, data_delayed_effect$penjualan_permen_6,
     pch = 19,
     xlab = "Penjualan Permen",
     ylab = "Kunjungan dokter",
     main = "Kunjungan dokter dengan penjualan permen (delay 6 bulan)", 
     col = "blue")
