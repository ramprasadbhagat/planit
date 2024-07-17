import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:planit/domain/core/error/exception.dart';
import 'package:planit/domain/my_complain/entities/complain.dart';
import 'package:planit/infrastructure/core/http/http.dart';
import 'package:planit/infrastructure/my_complain/dtos/complain_dto.dart';
import 'package:planit/utils/storage_service.dart';

class ComplainRemoteDataSource {
  final HttpService httpService;
  final StorageService storageService;

  ComplainRemoteDataSource({
    required this.httpService,
    required this.storageService,
  });

  Future<List<Complain>> getComplainList() async {
    final userId = storageService.getUserId();
    final res = await httpService.request(
      method: 'GET',
      url: 'userComplain/$userId',
    );
    _exceptionChecker(res: res);
    final data = res.data['items'];
    return List.from(data)
        .map((e) => ComplainDto.fromJson(e).toDomain)
        .toList();
  }

  Future<Unit> addComplain({
    required String name,
    required String email,
    required String orderId,
    required String complainContent,
    required String? imagePath,
  }) async {
    final userId = storageService.getUserId();
    final data = imagePath == null
        ? FormData.fromMap({
            'user_id': userId,
            'order_id': orderId,
            'name': name,
            'email': email,
            'complainContent': complainContent,
          })
        : FormData.fromMap({
            'user_id': userId,
            'order_id': orderId,
            'name': name,
            'email': email,
            'complainContent': complainContent,
            'complainImages': [
              await MultipartFile.fromFile(
                imagePath,
                filename: '',
              ),
            ],
          });
    final res = await httpService.request(
      method: 'POST',
      url: 'userComplain',
      data: data,
    );
    _exceptionChecker(res: res);
    return unit;
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
