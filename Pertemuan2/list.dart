void main(){
    List<String> fruits = ['Apel', 'Jeruk', 'Apel'];
    print(fruits);

    fruits.add('Mangga');
    print(fruits);

    fruits.insert(1, "Jambu");
    print(fruits);

    fruits.remove('Apel');
    print(fruits);

    // fruits.clear();
    // print(fruits);

    print(fruits.contains("Mangga"));

    fruits.sort();
    print(fruits);

    // fruits.map((item) {
    //     print('Ini buah $item');
    // }).toList();

    List<String> names = ['Budi', 'Andi'];
    List<String> others = [...fruits, ...names];
    print(others);

    

}