void main(){
    print("Cek Nilai: ");
    for (int i = 1; i < 5; i++){
        int nilai = 50 + (i * 10);
        bool kehadiran = i % 2 == 0;

        print("\nSiswa ke-$i:");
        print("Nilai : $nilai, Kehadiran : $kehadiran");

        if (nilai >= 80 && kehadiran){
            print("Lulus Dengan Baik");
        } else if (nilai >= 60 && kehadiran){
            print("Lulus");
        } else if (nilai >= 80 || (nilai >= 70 && !kehadiran)){
            print("Lulus Bersyarat");
        } else {
            print("Tidak Lulus");
        }
    }
}