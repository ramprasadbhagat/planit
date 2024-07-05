import 'package:dartz/dartz.dart';
import 'package:planit/config.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/domain/core/error/failure_handler.dart';
import 'package:planit/domain/track_order/entity/track_order.dart';
import 'package:planit/domain/track_order/repository/i_track_order_repository.dart';
import 'package:planit/infrastructure/track_order/datasource/track_order_local.dart';
import 'package:planit/infrastructure/track_order/datasource/track_order_remote.dart';
class TrackOrderRepository extends ITrackOrderRepository {
  final Config config;
  final TrackOrderLocalDataSource localDataSource;
  final TrackOrderRemoteDataSource remoteDataSource;

  TrackOrderRepository({
    required this.config,
    required this.localDataSource,
    required this.remoteDataSource,
  });

  @override
  Future<Either<ApiFailure, TrackOrder>> getTrackOrder() async {
    if (config.appFlavor == Flavor.mock) {
      try {
        final data = await localDataSource.getTrackOrderDetails();

        return Right(data);
      } catch (e) {
        return Left(FailureHandler.handleFailure(e));
      }
    }
    try {
      final trackOrder = await remoteDataSource.getTrackOrder();

      return Right(trackOrder);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }
}
