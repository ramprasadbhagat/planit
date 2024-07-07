import 'package:dio/dio.dart';
import 'package:planit/domain/core/error/exception.dart';
import 'package:planit/domain/track_order/entity/track_order_details.dart';
import 'package:planit/infrastructure/core/http/http.dart';
import 'package:planit/infrastructure/track_order/dtos/track_order_details_dto.dart';
import 'package:planit/utils/storage_service.dart';

class TrackOrderRemoteDataSource {
  final HttpService httpService;
  final StorageService storageService;

  TrackOrderRemoteDataSource({
    required this.httpService,
    required this.storageService,
  });

  Future<TrackOrderDetails> getTrackOrderDetails({
    required String orderId,
  }) async {
    final res = await httpService.request(
      method: 'GET',
      url: 'orderTracking/$orderId',
    );
    _exceptionChecker(res: res);
    return TrackOrderDetailsDto.fromJson(res.data).toDomain;
    // return TrackOrderDto.fromJson(res.data).toDomain;
  }

  void _exceptionChecker({required Response<dynamic> res}) {
    if (res.statusCode != 200) {
      throw ServerException(
        code: res.statusCode ?? 0,
        message: res.statusMessage ?? '',
      );
    }
  }
}
