import 'dart:async';

import 'student.dart';

class BackendService {
  static final _mockStudents = [
    Student('戚晓颖'),
    Student('蔡心蕊'),
    Student('李典康'),
    Student('周嘉翔'),
    Student('龙晶毅'),
    Student('唐莉雯'),
    Student('吴松二'),
    Student('张静雅'),
    Student('陈瑶'),
    Student('郑可欣'),
    Student('朱子恒'),
    Student('赵世宇'),
  ];

  Future<List> getAll(type) async => type == Student
      ? _mockStudents
      : throw Exception('Cannot get object of this type');

}
