import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';
import 'student_service.dart';
import 'student.dart';

@Component(
  selector: 'student-detail',
  styleUrls: ['student_detail_component.css'],
  templateUrl: 'student_detail_component.html',
  directives: [coreDirectives, formDirectives],
)
class StudentDetailComponent {
  @Input()
  Student student;
  StudentService _studentService;
  callResult(int res , Student stu){
    //if(res == 0){
      student.update(res,stu);
      //window.console.log(stu);
    //}

  }
}
