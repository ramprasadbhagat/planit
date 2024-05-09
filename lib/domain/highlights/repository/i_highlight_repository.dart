import 'package:dartz/dartz.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/domain/highlights/entities/highlight.dart';

abstract class IHighlightRepository {
  Future<Either<ApiFailure, List<Highlight>>> getHighlights();
}
