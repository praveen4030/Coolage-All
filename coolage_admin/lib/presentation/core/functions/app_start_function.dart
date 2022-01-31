import 'package:college/application/college/college_bloc.dart';
import 'package:core/application/coolage_details/coolage_details_bloc.dart';
import 'package:feed/application/feed/feed_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user/user.dart';

mixin AppStartFunction {
  static void startingBlocEvents(BuildContext context) {
    context.read<CoolageDetailsBloc>().add(const CoolageDetailsEvent.started());

    context.read<CollegeBloc>().add(CollegeEvent.getCollegeDetails(
          userCollege: Getters.getCurrentUserCollege(context),
        ));
    context.read<FeedBloc>().add(FeedEvent.getApprovedPosts(
        userCollege: Getters.getCurrentUserCollege(context)));
  }
}
