import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';

import 'student.dart';
import 'student_detail_component.dart';
import 'student_service.dart';
import 'dart:math';
import 'dart:html';


@Component(
  selector: 'student-list',
  styleUrls: ['student_list_component.css'],
  templateUrl: 'student_list_component.html',
  directives: [coreDirectives, formDirectives, StudentDetailComponent],
  providers: [ClassProvider(StudentService)],
)
class StudentListComponent implements OnInit {
  List<Student> students;
  //Student selectedStudent;
  Student randomStudent;
  final StudentService _studentService;


  StudentListComponent(this._studentService);

  void ngOnInit() async {
    students = await _studentService.getAll();
  }

//  void selectStudent(Student student) {
//    selectedStudent = student;
//  }

  void randomCall(){
    //random.nextInt(3).toString();
    //window.alert(random.nextInt(3).toString());
    randomStudent =_studentService.read();
  }
}
