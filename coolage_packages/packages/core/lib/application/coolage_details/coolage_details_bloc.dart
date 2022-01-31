import 'package:bloc/bloc.dart';
import 'package:core/domain/features/i_coolage_details_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:core/core.dart';

part 'coolage_details_event.dart';
part 'coolage_details_state.dart';
part 'coolage_details_bloc.freezed.dart';

@injectable
class CoolageDetailsBloc
    extends Bloc<CoolageDetailsEvent, CoolageDetailsState> {
  final ICoolageDetailsRepo iCoolageDetailsRepo;
  CoolageDetailsBloc(this.iCoolageDetailsRepo)
      : super(CoolageDetailsState.initial());
  @override
  Stream<CoolageDetailsState> mapEventToState(
    CoolageDetailsEvent event,
  ) async* {
    yield* event.map(
      started: (e) async* {
        yield state.copyWith(
          isLoading: true,
          actionResultOpt: none(),
        );
        final opt = await iCoolageDetailsRepo.getCoolageDetails();
        yield opt.fold((l) {
          return state.copyWith(
            isLoading: false,
            actionResultOpt: none(),
          );
        }, (r) {
          final coolageModel = CoolageDetailsModel.fromMap(r.toMap());
          return state.copyWith(
            coolageDetailsModel: coolageModel,
            isLoading: false,
            actionResultOpt: some(unit),
          );
        });
      },
    );
  }
}
