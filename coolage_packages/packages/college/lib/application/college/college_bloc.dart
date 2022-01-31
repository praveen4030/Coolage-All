import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:cards/cards.dart';
import 'package:college/college.dart';
import 'package:college/domain/group_model.dart';
import 'package:college/domain/i_college_repo.dart';
import 'package:core/core.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'college_event.dart';
part 'college_state.dart';
part 'college_bloc.freezed.dart';

@injectable
class CollegeBloc extends Bloc<CollegeEvent, CollegeState> {
  final ICollegeRepo iCollegeRepo;
  CollegeBloc(this.iCollegeRepo) : super(CollegeState.initial());

  @override
  Stream<CollegeState> mapEventToState(
    CollegeEvent event,
  ) async* {
    // TODO: implement mapEventToState
    yield* event.map(
      getAboutCollege: (e) async* {
        yield state.copyWith(
          isLoading: true,
          failureOrSuccessOption: none(),
        );
        if (e.userCollege != null) {
          final opt = await iCollegeRepo.getAboutCollege(e.userCollege!);
          yield opt.fold((failure) {
            return state.copyWith(
              failureOrSuccessOption: some(failure),
              isLoading: false,
            );
          }, (aboutCollege) {
            return state.copyWith(
              failureOrSuccessOption: none(),
              isLoading: false,
              aboutCollegeModel: aboutCollege,
            );
          });
        } else {
          yield state.copyWith(
            isLoading: false,
            failureOrSuccessOption: some(
              FirebaseFailure.customError('Something went wrong!'),
            ),
          );
        }
      },
      getCollegeDetails: (e) async* {
        yield state.copyWith(
          isCollegeLoading: true,
          collegeFailureOrSuccessOption: none(),
          actionResultOpt: none(),
        );
        if (e.userCollege != null) {
          final opt = await iCollegeRepo.getCollegeDetails(e.userCollege!);
          yield opt.fold((failure) {
            return state.copyWith(
              collegeFailureOrSuccessOption: some(failure),
              isCollegeLoading: false,
              actionResultOpt: none(),
            );
          }, (college) {
            return state.copyWith(
              collegeFailureOrSuccessOption: none(),
              isCollegeLoading: false,
              collegeModel: college,
              actionResultOpt: some(unit),
            );
          });
        } else {
          yield state.copyWith(
            isLoading: false,
            collegeFailureOrSuccessOption: some(
              FirebaseFailure.customError('Something went wrong!'),
            ),
          );
        }
      },
      modifyAboutCollege: (e) async* {
        yield state.copyWith(
          isSavingAbout: true,
          aboutResultOpt: none(),
        );
        final opt = await iCollegeRepo.modifyAboutCollege(
          e.userCollege!,
          about: e.about ?? '',
          logoUrl: e.logoUrl ?? '',
          file: e.file,
        );
        yield opt.fold((failure) {
          return state.copyWith(
            aboutResultOpt: some(left(failure)),
            isSavingAbout: false,
          );
        }, (url) {
          //if there was file then get url else empty string
          state.aboutCollegeModel!.about = e.about;
          if (e.file != null) {
            state.aboutCollegeModel!.collegeLogo = url;
          } else if (e.logoUrl?.isEmpty ?? true) {
            state.aboutCollegeModel!.collegeLogo = '';
          }
          return state.copyWith(
            aboutResultOpt: some(right(unit)),
            isSavingAbout: false,
          );
        });
      },
      addOfficialLink: (e) async* {
        yield state.copyWith(
          isSavingLink: true,
          linkResultOpt: none(),
          linkDeleteResultOpt: none(),
        );
        final opt = await iCollegeRepo
            .addOfficialLink(e.userCollege!, e.title!, e.link!, file: e.file);
        yield opt.fold((failure) {
          return state.copyWith(
            linkResultOpt: some(left(failure)),
            isSavingLink: false,
          );
        }, (model) {
          state.aboutCollegeModel!.officialLinksList!.add(model);
          return state.copyWith(
            linkResultOpt: some(right(unit)),
            isSavingLink: false,
          );
        });
      },
      editOfficialLink: (e) async* {
        yield state.copyWith(
          isSavingLink: true,
          linkResultOpt: none(),
          linkDeleteResultOpt: none(),
        );
        final opt = await iCollegeRepo
            .editOfficialLink(e.userCollege!, e.officialLinks!, file: e.file);
        yield opt.fold((failure) {
          return state.copyWith(
            linkResultOpt: some(left(failure)),
            isSavingLink: false,
          );
        }, (model) {
          state.aboutCollegeModel!.officialLinksList!
            ..removeAt(e.index!)
            ..insert(e.index!, model);

          return state.copyWith(
            linkResultOpt: some(right(unit)),
            isSavingLink: false,
          );
        });
      },
      deleteOfficialLink: (e) async* {
        yield state.copyWith(
          isDeletingLink: true,
          linkDeleteResultOpt: none(),
          linkResultOpt: none(),
        );
        final opt = await iCollegeRepo.deleteOfficialLink(
          e.userCollege!,
          e.officialLinks!,
        );
        yield opt.fold((failure) {
          return state.copyWith(
            linkDeleteResultOpt: some(left(failure)),
            isDeletingLink: false,
          );
        }, (model) {
          state.aboutCollegeModel!.officialLinksList!.removeAt(e.index!);
          return state.copyWith(
            linkDeleteResultOpt: some(right(unit)),
            isDeletingLink: false,
          );
        });
      },
      addCollegeCard: (e) async* {
        yield state.copyWith(
          isAddingCollegeBanner: true,
          optionResultOpt: none(),
        );
        final opt = await iCollegeRepo.addCollegeCard(e.userCollege, e.file);
        yield opt.fold(
          (failure) {
            return state.copyWith(
              isAddingCollegeBanner: false,
              optionResultOpt: some(left(failure)),
            );
          },
          (model) {
            (state.collegeModel!.homeCardsList ?? []).add(model);
            return state.copyWith(
              isAddingCollegeBanner: false,
              optionResultOpt: some(right("College banner added successfully")),
            );
          },
        );
      },
      deleteCollegeCard: (e) async* {
        yield state.copyWith(
          isDeletingCollegeBanner: true,
          optionResultOpt: none(),
        );
        final opt =
            await iCollegeRepo.deleteCollegeCard(e.userCollege, e.cards);
        yield opt.fold(
          (failure) {
            return state.copyWith(
              isDeletingCollegeBanner: false,
              optionResultOpt: some(left(failure)),
            );
          },
          (unit) {
            (state.collegeModel!.homeCardsList ?? []).remove(e.cards);
            return state.copyWith(
              isDeletingCollegeBanner: false,
              optionResultOpt:
                  some(right("College banner deleted successfully")),
            );
          },
        );
      },
      addCollegeImage: (e) async* {
        yield state.copyWith(
          isAddingCollegeImage: true,
          optionResultOpt: none(),
        );
        final opt = await iCollegeRepo.addCollegeImage(e.userCollege, e.file);
        yield opt.fold(
          (failure) {
            return state.copyWith(
              isAddingCollegeImage: false,
              optionResultOpt: some(left(failure)),
            );
          },
          (image) {
            (state.aboutCollegeModel!.imagesList ?? []).add(image);
            return state.copyWith(
              isAddingCollegeImage: false,
              optionResultOpt: some(right("College image added successfully")),
            );
          },
        );
      },
      deleteCollegeImage: (e) async* {
        yield state.copyWith(
          isDeletingCollegeImage: true,
          optionResultOpt: none(),
        );
        final opt =
            await iCollegeRepo.deleteCollegeImage(e.userCollege, e.image);
        yield opt.fold(
          (failure) {
            return state.copyWith(
              isDeletingCollegeImage: false,
              optionResultOpt: some(left(failure)),
            );
          },
          (_) {
            (state.aboutCollegeModel!.imagesList ?? []).remove(e.image);
            return state.copyWith(
              isDeletingCollegeImage: false,
              optionResultOpt:
                  some(right("College image deleted successfully")),
            );
          },
        );
      },
    );
  }
}
