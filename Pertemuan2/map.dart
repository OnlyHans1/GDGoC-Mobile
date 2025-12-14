void main(){
    Map<String, dynamic> user = {
        'name': 'Budi',
        'age' : 20,
        'isActive' : true,
    };
    print(user['age']);

    user.update("age", (value) => value + 5);
    print(user['age']);

    user.putIfAbsent("address", () => 'Bandung');
    print(user);
}