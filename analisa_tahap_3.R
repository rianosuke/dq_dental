# Menghapus data yang memiliki nilai NA
data_regresi = data.frame(
  month = data_delayed_effect$month,
  tahun = data_delayed_effect$year,
  kunjungan_dokter = data_delayed_effect$kunjungan_dokter, 
  penjualan_permen = data_delayed_effect$penjualan_permen_4)

#Mengeliminasi data NA
data_regresi = na.omit(data_regresi)
data_regresi