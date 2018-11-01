class Student {
  static int _nextId = 1;
  final int id;
  String name;
  int score;

  Student(this.name, [this.score = 60]) : id = _nextId++;

  void update(int res, Student stu) {
    if (res == 0) {
      stu.score = stu.score - 5;
    }
    else if(res == 1){
      stu.score = stu.score + 2;
    }
    else
      stu.score = stu.score + 5;
  }

}