import 'dart:async';

import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'dart:core';
import 'package:angular_components/material_datepicker/calendar.dart';
import 'package:angular_components/material_datepicker/material_calendar_picker.dart';
import 'package:angular_components/material_datepicker/module.dart';
import 'package:angular_components/model/date/date.dart';
import 'package:angular_components/utils/browser/window/module.dart';



@Component(
  selector: 'todo-calendar',
  styleUrls: ['todo_calendar_component.css'],
  templateUrl: 'todo_calendar_component.html',
  providers: [windowBindings, datepickerBindings],
  directives: [
    CalendarMonth,
    MaterialDateTimePickerComponent,
    MaterialCalendarPickerComponent,
  ],
)

class TodoCalendarComponent {
   Date toDate = new Date.today();
   static Date date(int days) => Date.today().add(days: days);
   //var toMonth = new CalendarMonth(2018, 10);
   var today = DateTime.now();   
   CalendarState dateModel =
      CalendarState.selected([CalendarSelection('range', date(0), date(0))]);
}
