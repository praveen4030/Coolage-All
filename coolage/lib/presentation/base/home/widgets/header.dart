import 'package:cards/cards.dart';
import 'package:college/application/college/college_bloc.dart';
import 'package:coolage/presentation/core/widgets/base_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user/user.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 8,
      ),
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(
            'assets/images/home_background.png',
          ),
        ),
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: BaseAppBar(
              text: Getters.getCurrentUserCollege(context),
              baseAppBarAction: BaseAppBarAction.home,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
            ),
            child: homeCardsList(),
          ),
        ],
      ),
    );
  }

  Widget homeCardsList() {
    return BlocBuilder<CollegeBloc, CollegeState>(
      builder: (context, state) {
        final collegeModel = state.collegeModel!;
        if (collegeModel.homeCardsList!.isEmpty) {
          return EmptyCardWidget(
            onTap: () {},
          );
        }
        return CardsList(
          cardsList: collegeModel.homeCardsList ?? [],
          marginRight: 5,
          marginLeft: 5,
        );
      },
    );
  }
}
