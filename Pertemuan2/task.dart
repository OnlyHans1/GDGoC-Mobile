class Barang {
  String nama;
  int harga;

  Barang(this.nama, this.harga);

  void tampilkanInfo() {
    print('$nama - Rp$harga');
  }
}

void main() {
  List<Barang> daftarBarang = [
    Barang('Susu', 15000),
    Barang('Roti', 12000),
    Barang('Telur', 25000),
  ];

  print('Daftar Barang:');
  int totalHarga = 0;
  for (var barang in daftarBarang) {
    totalHarga += barang.harga;
  }

  print('Total Harga: Rp$totalHarga');
}
