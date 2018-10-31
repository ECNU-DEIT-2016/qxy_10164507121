class Student {
  static int _nextId = 1;
  final int id;
  String name;
  int score;

  Student(this.name, [this.score = 100]) : id = _nextId++;

}
