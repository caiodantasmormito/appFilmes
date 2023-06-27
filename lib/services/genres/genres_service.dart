
import 'package:academia_do_flutter/models/genres_model.dart';

abstract class GenresService {
  Future<List<GenresModel>> getGenres();
}