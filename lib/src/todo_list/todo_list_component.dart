import 'dart:async';

import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';

import 'todo_list_service.dart';


import 'package:quiver/time.dart';
import 'package:angular_components/material_datepicker/date_range_input.dart';
import 'package:angular_components/material_datepicker/material_datepicker.dart';
import 'package:angular_components/material_datepicker/module.dart';
import 'package:angular_components/material_datepicker/range.dart';
import 'package:angular_components/model/date/date.dart';
import 'package:angular_components/utils/browser/window/module.dart';

@Component(
  selector: 'todo-list',
  styleUrls: ['todo_list_component.css'],
  templateUrl: 'todo_list_component.html',
  directives: [
    MaterialCheckboxComponent,
    MaterialFabComponent,
    MaterialIconComponent,
    materialInputDirectives,
    NgFor,
    NgIf,
    MaterialDatepickerComponent, 
    DateRangeInputComponent
  ],
  providers: [const ClassProvider(TodoListService),windowBindings, datepickerBindings],
)

class TodoListComponent implements OnInit{
  final TodoListService todoListService;

  List<String> items = [];
  String newTodo = '';

  Date date = Date.today();
  Date optionalDate;

  TodoListComponent(this.todoListService);

  @override
  Future<Null> ngOnInit() async {
    items = await todoListService.getTodoList();
  }

  void add() {
    items.add(newTodo);

    newTodo = '';
  }

  String remove(int index) => items.removeAt(index);

  DateRange limitToRange = DateRange(Date.today(), Date.today().add(years: 5));
  List<SingleDayRange> predefinedDates;

  MaterialDatepickerDemoComponent() {
    var clock = Clock();
    predefinedDates = <SingleDayRange>[
      today(clock),
      yesterday(clock),
    ];
  }

}
