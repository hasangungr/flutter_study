import 'package:flutter_study/controller_study.dart/counter.dart';
import 'package:flutter_study/controller_study.dart/views/anothet_get_to_view.dart';
import 'package:get/get.dart';

class Routes {
  static String home = "/";
  static String anotherGetToView = "/anotherGetToView";
//  static String anotherGetNamedView = "/anotherGetNamedView";

  static String getHomeRoute() => home;
  static String getAnotherGetToView() => anotherGetToView;
 // static String getAnotherGetNamedView () => anotherGetNamedView ;

  static List<GetPage> routes = [
    GetPage(page: () =>  CounterView(), name: home ),//bindings?
    //binding veya bindingse verdiğin controllerlar sayfa açıldığında otomatik oluşur başka sayfaya gittiğinde eğer o sayfada kullanılmıyorsa otomatik silinir
    GetPage(page: () => const GetToView(), name: anotherGetToView),
   // GetPage(page: () => const GetNamedView(), name: anotherGetNamedView),
  ];
}
//SAYFA GEÇİŞLERİNE BAK