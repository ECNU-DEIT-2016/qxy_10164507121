import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';

import 'student.dart';

@Component(
  selector: 'student-detail',
  templateUrl: 'student_detail_component.html',
  directives: [coreDirectives, formDirectives],
)
class StudentDetailComponent {
  @Input()
  Student student;
}
