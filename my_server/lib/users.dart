import 'dart:async';
import 'dart:math';

class Users {
    static List<String> things = ['戚晓颖', '蔡心蕊', '李典康','周嘉翔', '龙晶毅', '唐莉雯','吴松二', '张静雅','陈瑶', '郑可欣','朱子恒', '赵世宇'];
  static String randomThing;
    static String read(){
      var random = Random();
        randomThing =things[random.nextInt(12)];
      return randomThing;
    }

    static List<String> getAll(){
      return things;
    }

}