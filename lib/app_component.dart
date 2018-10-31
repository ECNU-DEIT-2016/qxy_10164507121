import 'package:angular/angular.dart';

import 'src/todo_list/todo_list_component.dart';
import 'src/todo_calendar/todo_calendar_component.dart';

import 'src/random_rollcall/backend_service.dart';
import 'src/random_rollcall/student_list_component.dart';
import 'src/random_rollcall/student_service.dart';
import 'src/random_rollcall/logger_service.dart';


// AngularDart info: https://webdev.dartlang.org/angular
// Components info: https://webdev.dartlang.org/components
// <sales-tax></sales-tax>


@Component(
  selector: 'my-app',
  template: '''
    <student-list></student-list>
  ''',
  directives: [
    StudentListComponent
  ],
  providers: [
    ClassProvider(BackendService),
    ClassProvider(StudentService),
    ClassProvider(Logger),
  ],
)
class AppComponent {
  // Nothing here yet. All logic is in TodoListComponent.
}
