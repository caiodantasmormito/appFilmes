
import 'package:academia_do_flutter/modules/splash/splash_bindings.dart';
import 'package:academia_do_flutter/modules/splash/splash_page.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../../application/modules/module.dart';

class SplashModule extends Module {

  @override
  List<GetPage> routers = [

    GetPage(name: '/', 
    page: () => const SplashPage(),
    binding: SplashBindings(),
    )
  ];
  
}