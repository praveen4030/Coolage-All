import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user/application/profile/user_details/user_details_bloc.dart';
import 'package:user/ui/profile/widgets/eye_widget.dart';
import 'package:user/ui/profile/general_details/edit_general_details.dart';
import 'package:user/ui/profile/widgets/user_profile_tile_header.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:user/user.dart';

class GeneralDetailsTile extends StatelessWidget {
  final GeneralDetailsModel generalDetailsModel;
  const GeneralDetailsTile({
    Key? key,
    required this.generalDetailsModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserDetailsBloc, UserDetailsState>(
      builder: (context, state) {
        return UserProfileTileHeader(
          iconName: 'profile/user',
          text: 'General Details',
          onEditTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const EditGenetalDetailsPage()));
          },
          child: Container(
            padding: const EdgeInsets.only(
              left: 48,
              right: 44,
              top: 24,
              bottom: 32,
            ),
            color: Colors.white,
            child: Column(
              children: [
                tile(
                  isCurrentUser: state.isCurrentUser,
                  title: "D.O.B.",
                  text: getDobDate(dob: generalDetailsModel.dob?.timestamp),
                  isVisible: generalDetailsModel.dob?.isVisible ?? false,
                ),
                tile(
                  isCurrentUser: state.isCurrentUser,
                  title: "Sex",
                  text: generalDetailsModel.sex?.data ?? '',
                  isVisible: generalDetailsModel.sex?.isVisible ?? false,
                ),
                tile(
                  isCurrentUser: state.isCurrentUser,
                  title: "Pronoun",
                  text: generalDetailsModel.pronoun?.data ?? '',
                  isVisible: generalDetailsModel.pronoun?.isVisible ?? false,
                ),
                tile(
                  isCurrentUser: state.isCurrentUser,
                  title: "Impairment",
                  text: generalDetailsModel.impairment?.data ?? '',
                  isVisible: generalDetailsModel.impairment?.isVisible ?? false,
                ),
                tile(
                  isCurrentUser: state.isCurrentUser,
                  title: "Enrollment",
                  text: generalDetailsModel.enrollmentNo?.data ?? '',
                  isVisible:
                      generalDetailsModel.enrollmentNo?.isVisible ?? false,
                ),
                tile(
                  isCurrentUser: state.isCurrentUser,
                  title: "Address",
                  text: getAddress(
                      addressModel: generalDetailsModel.addressModel),
                  isVisible:
                      generalDetailsModel.addressModel?.isVisible ?? false,
                ),
                tile(
                  isCurrentUser: state.isCurrentUser,
                  title: "E-mail",
                  text: generalDetailsModel.emailId?.data ?? '',
                  isVisible: generalDetailsModel.emailId?.isVisible ?? false,
                ),
                tile(
                  isCurrentUser: state.isCurrentUser,
                  title: "Nationality",
                  text: generalDetailsModel.nationality?.data ?? '',
                  isVisible:
                      generalDetailsModel.nationality?.isVisible ?? false,
                ),
                tile(
                  isCurrentUser: state.isCurrentUser,
                  title: "Category",
                  text: generalDetailsModel.category?.data ?? '',
                  isVisible: generalDetailsModel.category?.isVisible ?? false,
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  String getDobDate({Timestamp? dob}) {
    if (dob == null) return '';
    return DateFormat('d MMM y').format(dob.toDate());
  }

  String getAddress({AddressModel? addressModel}) {
    if (addressModel == null) return '';
    if ((addressModel.addressLine1?.isEmpty ?? true) &&
        (addressModel.addressLine2?.isEmpty ?? true)) {
      return '';
    }
    return '${addressModel.addressLine1} , ${addressModel.addressLine2}';
  }

  Widget tile({
    required String title,
    required bool isCurrentUser,
    String? text,
    bool? isVisible,
  }) {
    if (text?.isEmpty ?? true) return Container();
    if (!isCurrentUser && !(isVisible ?? false)) {
      return Container();
    }
    return Container(
      height: 32,
      margin: const EdgeInsets.symmetric(
        vertical: 3,
      ),
      child: Row(
        children: [
          CustomText(
            text: '$title :  ',
            fontSize: 13,
            fontWeight: FontWeight.w400,
            color: Kolors.greyBlue,
          ),
          Expanded(
            child: CustomText(
              text: text,
              fontSize: 13,
              fontWeight: FontWeight.w400,
            ),
          ),
          if (!(isVisible ?? true))
            EyeWidget(
              isVisible: isVisible ?? true,
            ),
        ],
      ),
    );
  }
}
