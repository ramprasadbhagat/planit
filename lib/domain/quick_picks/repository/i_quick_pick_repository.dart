import 'package:dartz/dartz.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/domain/quick_picks/entities/quick_picks.dart';

abstract class IQuickPicksRepository {
  Future<Either<ApiFailure, List<QuickPicks>>> getQuickPicks();
}
