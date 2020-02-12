import 'package:flutter/services.dart' show rootBundle;
import 'package:temmis_app_2/thread/model/route.dart';

class RouteData {
  String baseUrl;

  //recibe la direccion del caso
  RouteData(this.baseUrl);

  //recupera la informacion de la ruta
  Future<Route> getHilo() async {
    Route _route;
    _route = routeFromJson(await rootBundle.loadString(baseUrl));
    return _route;
  }
}
