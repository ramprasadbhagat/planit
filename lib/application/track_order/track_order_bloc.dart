
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/domain/track_order/entity/track_order_details.dart';

part 'track_order_event.dart';
part 'track_order_state.dart';
part 'track_order_bloc.freezed.dart';

class TrackOrderBloc extends Bloc<TrackOrderEvent, TrackOrderState> {
  TrackOrderBloc() : super(_Initial()) {
    on<TrackOrderEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
