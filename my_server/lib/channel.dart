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
      List<String> things = Users.getAll();
      String randomThing = Users.read();

      @Operation.get()
      Future<Response> getThings() async {
      //    return Response.ok(things);

        return Response.ok(randomThing);
  }
}

class MyController extends ResourceController {
//   final List<String> things = ['thing5', 'thing6'];
  //List<String> things = Users.getAll();
//  final List<String> things = ['戚晓颖', '蔡心蕊', '李典康','周嘉翔', '龙晶毅', '唐莉雯','吴松二', '张静雅','陈瑶', '郑可欣','朱子恒', '赵世宇'];
//  final List<String> randomThings;

  List<String> things = Users.getAll();
  String randomThing = Users.read();

  @Operation.get()
  Future<Response> getThings() async {
//    return Response.ok(things);

    return Response.ok(things);
  }

  @Operation.get('id')
  Future<Response> getThing(@Bind.path('id') int id) async {
    if (id < 0 || id >= things.length) {
      return Response.notFound();
    }
    return Response.ok(things[id]);
  }
}