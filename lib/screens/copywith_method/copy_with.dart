void main() {
  Person person1 = Person(name: 'John', age: 30);
  Person person2 = person1.copyWith(name: 'Jane');
  print(person1);
  print(person2);
}

class Person {
  final String name;
  final int age;

  Person({required this.name, required this.age});

  Person copyWith({String? name, int? age}) {
    return Person(
      name: name ?? this.name,
      age: age ?? this.age,
    );
  }
}
