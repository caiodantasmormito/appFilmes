import 'package:academia_do_flutter/models/genres_model.dart';

abstract class GenresRepository {
  Future<List<GenresModel>> getGenres();

}