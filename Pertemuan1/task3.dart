void main(){
    cekNilai(nama: "Rhaihan", nilai: 65);
    cekNilai(nama: "Aditya", nilai: 85);

    int total = hitungTotal(harga: 100000, diskon: true);
    print("\nTotal bayar: Rp$total");
}

void cekNilai({required String nama, required int nilai}){
    print("\nSiswa: $nama");
    for (int i = 1; i <= 3; i++){
        if (nilai >= 80 && i == 3) {
            print("Lulus");
        } else if (nilai >= 60 || i < 3){
            print("Lulus Bersyarat");
        } else {
            print("Gagal");
        }
    }
}

int hitungTotal({required int harga,required bool diskon}){
    int potongan = 0;

    if (harga >= 50000){
        if (diskon && harga >= 100000){
            potongan = 20;
        } else if (diskon || harga >= 150000){
            potongan = 10;
        }
    }

    return harga - (harga * potongan ~/ 100);
}

