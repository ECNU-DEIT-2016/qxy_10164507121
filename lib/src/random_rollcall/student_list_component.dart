import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';
import 'dart:html';
import 'student.dart';
import 'student_detail_component.dart';
import 'student_service.dart';
import 'package:angular_components/material_select/material_dropdown_select.dart';

@Component(
  selector: 'student-list',
  styleUrls: ['student_list_component.css'],
  templateUrl: 'student_list_component.html',
  directives: [coreDirectives, formDirectives, StudentDetailComponent,MaterialDropdownSelectComponent],
  providers: [ClassProvider(StudentService)],
)
class StudentListComponent implements OnInit {
  List<Student> students;
  int selectClass = 0;
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
    selectClass = 0;
    randomStudent =_studentService.read();
  }

  void classList(){
    //random.nextInt(3).toString();
    //window.alert(random.nextInt(3).toString());
    randomStudent = null;
    selectClass = 1;
  }

  void add(String name){
    name = name.trim();
    if (name.isEmpty) return null;
    students.add(Student(name));
    window.alert("添加成功");
  }
}
