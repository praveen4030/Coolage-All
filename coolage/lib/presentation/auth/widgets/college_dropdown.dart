import 'package:core/application/coolage_details/coolage_details_bloc.dart';
import 'package:core/core.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CollegeDropDownWidget extends StatelessWidget {
  final Function? onChanged;
  final OnboardedCollege? onboardedCollege;
  const CollegeDropDownWidget({
    Key? key,
    @required this.onChanged,
    @required this.onboardedCollege,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CoolageDetailsBloc, CoolageDetailsState>(
      builder: (context, state) {
        return GestureDetector(
          onTap: () {
            if (state.coolageDetailsModel!.onboardedCollegesList!.isEmpty) {
              context
                  .read<CoolageDetailsBloc>()
                  .add(const CoolageDetailsEvent.started());
            }
          },
          child: Container(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(6),
                    child: PopupMenuButton(
                      onSelected: (val) {
                        onChanged!(val);
                      },
                      offset: const Offset(0, 30),
                      itemBuilder: (context) => getItemsList(
                          state.coolageDetailsModel!.onboardedCollegesList!,
                          context),
                      child: Row(
                        children: [
                          Text(
                            onboardedCollege != null
                                ? onboardedCollege!.college!
                                : 'Select College',
                            style: const TextStyle(
                              fontSize: 20,
                              color: Kolors.greyBlack,
                              fontFamily: Fonts.CONTENT_FONT,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const Spacer(),
                          const Icon(Icons.keyboard_arrow_down)
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  List<PopupMenuEntry<OnboardedCollege>> getItemsList(
      List<OnboardedCollege> list, BuildContext context) {
    return list.map((value) {
      return PopupMenuItem<OnboardedCollege>(
        value: value,
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Row(
            children: [
              Expanded(
                child: Text(
                  value.college ?? '',
                  style: const TextStyle(
                    fontSize: 20,
                    color: Kolors.greyBlack,
                    fontFamily: Fonts.CONTENT_FONT,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }).toList();
  }
}
