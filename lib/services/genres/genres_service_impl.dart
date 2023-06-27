
import 'package:academia_do_flutter/models/genres_model.dart';
import 'package:academia_do_flutter/services/genres/genres_service.dart';

import '../../repositories/genres/genres_repository.dart';

class GenresServiceImpl implements GenresService {
  final GenresRepository _genresRepository;

  GenresServiceImpl({required GenresRepository genresRepository}) : _genresRepository = genresRepository;

  @override
  Future<List<GenresModel>> getGenres() => _genresRepository.getGenres();
   
  }
