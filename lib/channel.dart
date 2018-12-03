import 'my_server.dart';

/// This type initializes an application.
///
/// Override methods in this class to set up routes and initialize services like
/// database connections. See http://aqueduct.io/docs/http/channel/.
class MyServerChannel extends ApplicationChannel {
  /// Initialize services in this method.
  ///
  /// Implement this method to initialize services, read values from [options]
  /// and any other initialization required before constructing [entryPoint].
  ///
  /// This method is invoked prior to [entryPoint] being accessed.
  @override
  Future prepare() async {
    logger.onRecord.listen((rec) => print("$rec ${rec.error ?? ""} ${rec.stackTrace ?? ""}"));
  }

  /// Construct the request channel.
  ///
  /// Return an instance of some [Controller] that will be the initial receiver
  /// of all [Request]s.
  ///
  /// This method is invoked after [prepare].
  @override
  Controller get entryPoint {
    final router = Router();

    // Prefer to use `link` instead of `linkFunction`.
    // See: https://aqueduct.io/docs/http/request_controller/
    router
      .route("/users/[:id]").link(()=>MyController());
    router
        .route("/random").link(()=>MySecondController());

    return router;
  }
}


class MySecondController extends ResourceController{
//      List<String> things = Users.getAll();
//      String randomThing = Users.read();
      var results;


      @Operation.get()
      Future<Response> getThings() async {
        results = await Users.getAll();
        var random = Random();
        return Response.ok(results[random.nextInt(results.length)]);
  }
}

class MyController extends ResourceController {

//  final Users _user;
//  MyController(this._user);
  var results;
  var selectStudent;

//  String randomThing = Users.read();
//  var results = Users.main();

  @Operation.get()
  Future<Response> getThings() async {
//    return Response.ok(things);
    results = await Users.getAll();
    return Response.ok(results);
  }

  @Operation.get('id')
  Future<Response> getThing(@Bind.path('id') int id) async {
    selectStudent = await Users.selectStu(id);
    if (id < 0 || id >= 12) {
      print("test");
      return Response.notFound();
    }
    print(selectStudent);
    return Response.ok(selectStudent);
  }
}