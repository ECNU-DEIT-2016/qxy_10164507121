import 'package:first_app21/my_server.dart';
import 'dart:async';
import 'package:sqljocky5/sqljocky.dart';

//Future<void> readData(MySqlConnection conn) async {
//  Results result = await (await conn
//      .execute('SELECT *'
//      'FROM people'))
//      .deStream();
//  print(result);
//  print(result.map((r) => r.byName('name')));
//}

Future main() async {

//  var s = ConnectionSettings(
//    user: "newuser",
//    password: "Qxy071561.***",
//    host: "localhost",
//    port: 3306,
//    db: "example",
//  );
//
//  // create a connection
//  print("Opening connection ...");
//  var conn = await MySqlConnection.connect(s);
//  print("Opened connection!");
//
//  await readData(conn);

//  await conn.close();


  final app = Application<MyServerChannel>()
      ..options.configurationFilePath = "config.yaml"
      ..options.port = 8002;

  final count = Platform.numberOfProcessors ~/ 2;
  await app.start(numberOfInstances: count > 0 ? count : 1);

  print("Application started on port: ${app.options.port}.");
  print("Use Ctrl-C (SIGINT) to stop running the application.");
}