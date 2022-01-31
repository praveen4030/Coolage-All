import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:core/core.dart';
import 'package:feed/domain/feed_functions.dart';
import 'package:feed/ui/add_feed/bottom_sheats/search_individuals_dialog.dart';
import 'package:feed/ui/add_feed/widgets/user_tile.dart';
import 'package:flutter/material.dart';
import 'package:user/user.dart';

class AddIndividualWidget extends StatefulWidget {
  final List<String> selectedGroupsList;
  const AddIndividualWidget({
    Key? key,
    required this.selectedGroupsList,
  }) : super(key: key);

  @override
  State<AddIndividualWidget> createState() => _AddIndividualWidgetState();
}

class _AddIndividualWidgetState extends State<AddIndividualWidget> {
  @override
  Widget build(BuildContext context) {
    final selectedIndividualsList =
        FeedFunctions.getSelectedIndividuals(widget.selectedGroupsList);
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Kolors.greyWhite,
      ),
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Kolors.white,
        ),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (!FeedFunctions.checkIfAnyProgramGroupSelected(
                  widget.selectedGroupsList, Constants.INDIVIDUAL_GROUP))
                Container(
                  padding: const EdgeInsets.only(
                    top: 24,
                    bottom: 6,
                  ),
                  child: const CustomText(
                    text: "No individual selected !",
                    color: Kolors.greyBlue,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    fontFamily: Fonts.HEADING_FONT,
                  ),
                )
              else
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: selectedIndividualsList.length,
                  itemBuilder: (context, index) {
                    return userDocWidget(selectedIndividualsList[index]);
                  },
                ),
              const SizedBox(
                height: 18,
              ),
              addButton(context),
              const SizedBox(
                height: 24,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget userDocWidget(String docId) {
    return StreamBuilder(
        stream:
            FirebaseFirestore.instance.usersCollection.doc(docId).snapshots(),
        builder: (context, AsyncSnapshot<DocumentSnapshot> snapshot) {
          if (!snapshot.hasData) {
            return const SizedBox(
              height: 200,
              child: CircularProgressIndicator(),
            );
          }
          final doc = snapshot.data!.data() as Map<String, dynamic>;
          final userModel = CoolUser.fromMap(doc);
          return IndividualAddedTile(
            onCancel: () {
              setState(() {
                widget.selectedGroupsList
                    .remove("${Constants.INDIVIDUAL_GROUP}_$docId");
              });
            },
            coolUser: CoolUser(
              name: userModel.name,
              imageUrl: userModel.imageUrl,
            ),
          );
        });
  }

  Widget addButton(BuildContext context) {
    return CircleAddButton(
      onTap: () async {
        await showModalBottomSheet(
            isScrollControlled: true,
            elevation: 2,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            context: context,
            builder: (context) {
              return SearchIndividualsBottomSheat(
                selectedGroupsList: widget.selectedGroupsList,
              );
            }).then((_) {
          setState(() {});
        });
      },
    );
  }

  Widget emptyList(BuildContext context) {
    return Column(
      children: [
        CustomText(
          text: "No individual added!",
          color: Kolors.greyBlue.withOpacity(0.5),
          fontFamily: Fonts.HEADING_FONT,
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
        const SizedBox(
          height: 24,
        ),
        addButton(context),
        const SizedBox(
          height: 32,
        ),
      ],
    );
  }
}
