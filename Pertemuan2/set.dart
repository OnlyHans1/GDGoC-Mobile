void main(){
    Set<String> kategori = {'Elektronik', 'Makanan', 'Minuman'};
    Set<String> kategori1 = {'Makanan', 'Minuman', 'Elektronik', 'Fashion'};

    Set<String> kategoriGabungan = kategori.union(kategori1);
    print(kategoriGabungan);

    Set<String> kategoriIntersect = kategori.intersection(kategori1);
    print(kategoriIntersect);

    print(kategori.difference(kategori1));
    print(kategori1.difference(kategori));
}