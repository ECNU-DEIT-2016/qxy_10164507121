import 'dart:async';
import 'backend_service.dart';
import 'student.dart';
import 'logger_service.dart';
import 'dart:math';

class StudentService {
  final BackendService _backendService;
  final Logger _logger;
  List<Student> students;
  Student student;

  StudentService(this._logger, this._backendService);

  Future<List<Student>> getAll() async {
    students = await _backendService.getAll(Student);
    _logger.log('Fetched ${students.length} students.');
    return students;
  }

  Student read() {
    var random = Random();
    student = students[random.nextInt(students.length-1)+1];
    return student;
  }


}
