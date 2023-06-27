import 'package:academia_do_flutter/repositories/genres/genres_repository.dart';
import 'package:academia_do_flutter/repositories/genres/genres_repository_impl.dart';
import 'package:academia_do_flutter/services/genres/genres_service.dart';
import 'package:academia_do_flutter/services/genres/genres_service_impl.dart';
import 'package:academia_do_flutter/modules/movies/widgets/movies_controller.dart';
import 'package:get/get.dart';

class MoviesBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GenresRepository>(
      () => GenresRepositoryImpl(
        restClient: Get.find(),
      ),
    );
    Get.lazyPut<GenresService>(
        () => GenresServiceImpl(genresRepository: Get.find()));

    Get.lazyPut(() => MoviesController(genresService: Get.find(), moviesService: Get.find(), authService: Get.find()));
  }
}
