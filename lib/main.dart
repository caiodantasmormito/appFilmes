import 'package:academia_do_flutter/application/bindings/application_bindings.dart';
import 'package:academia_do_flutter/application/ui/filmes_app_ui_config.dart';
import 'package:academia_do_flutter/modules/home/home_module.dart';
import 'package:academia_do_flutter/modules/login/login_module.dart';
import 'package:academia_do_flutter/modules/splash/splash_module.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';

import 'modules/movies_detail/movie_detail_module.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  FirebaseRemoteConfig.instance.fetchAndActivate();
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: FilmesAppUiConfig.title,
      initialBinding: ApplicationBindings(),
      debugShowCheckedModeBanner: false,
      theme: FilmesAppUiConfig.theme,
      getPages: [
        ...SplashModule().routers,
        ...LoginModule().routers,
        ...HomeModule().routers,
        ...MovieDetailModule().routers
      ],
      
    );
  }
}


  

