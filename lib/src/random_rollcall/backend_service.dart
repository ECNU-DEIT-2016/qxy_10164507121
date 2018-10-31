import 'dart:async';

import 'student.dart';

class BackendService {
  static final _mockStudents = [
    Student('77'),
    Student('菜鸡'),
    Student('康康'),
    Student('翔酱'),
    Student('女神'),
    Student('张杰'),
    Student('朱一龙'),
    Student('白宇'),
    Student('林俊杰'),
    Student('松二'),
    Student('自然醒'),
    Student('梁乐'),
    Student('真源'),
    Student('kiki'),
    Student('阴酱'),
    Student('静雅'),
    Student('雪怡'),
    Student('小鸡')
  ];

  Future<List> getAll(type) async => type == Student
      ? _mockStudents
      : throw Exception('Cannot get object of this type');

}
