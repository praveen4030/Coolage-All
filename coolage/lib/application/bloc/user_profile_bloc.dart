import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'user_profile_event.dart';
part 'user_profile_state.dart';
part 'user_profile_bloc.freezed.dart';

@injectable
class UserProfileBloc extends Bloc<UserProfileEvent, UserProfileState> {
  UserProfileBloc() : super(_Initial());

  @override
  Stream<UserProfileState> mapEventToState(UserProfileEvent event) async* {
    yield* event.map(
      started: (e) async* {},
    );
  }
}
