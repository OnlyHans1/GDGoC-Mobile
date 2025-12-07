void main() {
    //Command Operator Aritmatika
    int jumlah = 20 + 10;
    int kurang = 20 - 10;
    int kali = 20 * 10;
    double bagi = 20 / 10;
    int bagi2 = 11 ~/ 3;
    int modulo = 10 % 3; 

    //Command Operator Perbandigan
    bool kurangDari = 5 < 3;
    bool sama = "telkom" == "telyu";
    bool tidakSama = "telkom" != "telyu";

    //Command Operator Logika
    bool and = true && false;
    bool or = true || false;
    bool not = !true;

    //Percabangan
    bool isRaining = true;
    print("Berangkat kampus ahhh, ");
    if (isRaining){
        print("yahh, ambil payung deh");
    }
    print("Lestgowwww");

    int nilai = 80;
    if (nilai > 90){
        print("Nilai A");
    } else if (nilai > 80){
        print("Nilai B");
    } else {
        print("Nilai C");
    }

    //Ternary Operator
    int grade = 75;
    String status = (grade > 80) ? "Lulus" : "Tidak Lulus";
    print(status);

    //Switch Case
    int hari = 3;
    switch(hari){
        case 1:
          print("Hari Senin");
          break;
        case 2:
          print("Hari Selasa");
          break;
        case 3: 
          print("Hari Rabu");
          break;
        default: 
          print("Hari Tidak Valid");
    }

    //Perulangan
    for (int i = 1; i < 10; i++){
        print("Nama ke-$i");
    }

    int energi = 8;
    while (energi > 0){
        print("Sisa Energi : $energi");
        energi--;
    }

    do {
        print("Sisa Energi : $energi");
        energi--;
    } while (energi > 10);

    //Break & Continue
    for (int i = 1;i < 10; i++){
        if (i == 5){
            print("Stop sebut nama!");
            break;
        }
        print("Nama ke-$i");
    }

    for (int i = 1;i < 10; i++){
        if (i == 5){
            print("Lewati sebut nama!");
            continue;
        }
        print("Nama ke-$i");
    }

    //Method
    sapa("Telkom");

    //Function With Return
    int persegiPanjang = rumusPersegiPanjang(12, 2);

    //Optional Parameter
    kotak();

    //Required Parameter
    kotak2();

}

//Function 
void sapa (String nama){
    print("Selamat Datang, $nama");
}

void sapa2 (String nama) => print("Hallo lagi $nama");

//Function With Return
int rumusPersegiPanjang(int panjang, int lebar){
    return panjang * lebar;
}

//Optional Parameter
void kotak ((String? warna, double ukuran = 20.0)){
    print("Warna ${warna ?? "merah"}");
    print("Ukuran $ukuran");
}

//Required Parameter
void kotak2 ((String? warna, double ukuran = 20.0, required int angka)){
    print("Warna ${warna ?? "merah"}");
    print("Ukuran $ukuran");
}

