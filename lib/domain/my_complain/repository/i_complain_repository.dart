import 'package:dartz/dartz.dart';
import 'package:image_picker/image_picker.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/domain/my_complain/entities/complain.dart';

abstract class IComplainRepository {
  Future<Either<ApiFailure, List<Complain>>> getComplainsList();
  Future<Either<ApiFailure, Unit>> addComplain({
    required String name,
    required String email,
    required String orderId,
    required String complainContent,
    required XFile? file,
  });
}
