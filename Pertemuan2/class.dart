class Animal{
    String name;
    int age;
    double weight;

    Animal({
        required this.name,
        required this.age,
        required this.weight
    });

    void eating(){
        print('$name is eating');
        weight += 0.2;
    }
}

class Cat extends Animal {
    String funColor;
    String race;

    Cat({
        required String name,
        required int age,
        required double weight,
        required this.funColor,
        required this.race,
    }) : super(name: name, age: age, weight: weight);

    void meow(){
        print("Meow!");
    }
}

void main(){
    Cat cat = Cat(name: 'Garfield', age: 3,weight:  3.5, funColor: 'Orange', race: 'Exotic Short Hair');

    print(cat.weight);
    cat.eating();
    print(cat.weight);

    cat.meow();
}