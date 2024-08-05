part of 'complain_bloc.dart';

@freezed
class ComplainState with _$ComplainState {
  const ComplainState._();
  const factory ComplainState({
    required List<Complain> complains,
    required Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption,
    required bool isFetching,
    required XFile? image,
    required String? orderId,
  }) = _ComplainState;

  factory ComplainState.initial() => ComplainState(
        apiFailureOrSuccessOption: none(),
        isFetching: false,
        complains: [],
        image: null,
        orderId: null,
      );
}
