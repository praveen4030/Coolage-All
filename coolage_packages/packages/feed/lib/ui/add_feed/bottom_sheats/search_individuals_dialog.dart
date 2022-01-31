import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:core/core.dart';
import 'package:feed/ui/add_feed/widgets/user_tile.dart';
import 'package:flutter/material.dart';
import 'package:user/user.dart';

class SearchIndividualsBottomSheat extends StatefulWidget {
  final List<String> selectedGroupsList;
  const SearchIndividualsBottomSheat({
    Key? key,
    required this.selectedGroupsList,
  }) : super(key: key);

  @override
  State<SearchIndividualsBottomSheat> createState() =>
      _SearchIndividualsBottomSheatState();
}

class _SearchIndividualsBottomSheatState
    extends State<SearchIndividualsBottomSheat> {
  final searchTEC = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      // height: 300,
      color: Kolors.greyWhite,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 12,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CustomText(
                  text: "Search Individuals",
                  color: Kolors.greyBlack,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  fontFamily: Fonts.HEADING_FONT,
                ),
                const SizedBox(
                  height: 8,
                ),
                SizedBox(
                  height: 45,
                  child: SearchFieldWidget(
                    searchTEC: searchTEC,
                    onChanged: () {
                      setState(() {});
                    },
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
              ],
            ),
          ),
          searchUsersList(searchTEC.text),
        ],
      ),
    );
  }

  Widget searchUsersList(String query) {
    return StreamBuilder(
      stream: FirebaseFirestore.instance.usersCollection
          .orderBy('nameInLowerCase', descending: false)
          .limit(20)
          .startAt([query.toLowerCase()]).endAt(
              [query.toLowerCase() + '\uf8ff']).snapshots(),
      builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (!snapshot.hasData) {
          return const SizedBox(
            height: 200,
            child: Center(child: CircularProgressIndicator()),
          );
        }
        List<DocumentSnapshot> items = snapshot.data?.docs ?? [];
        if (items.isEmpty) {
          return const SizedBox(
            height: 200,
            child: Center(
              child: CustomText(
                text: "No user found!",
              ),
            ),
          );
        }
        return items.isNotEmpty
            ? Container(
                height: 300,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                ),
                child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    DocumentSnapshot doc = items[index];
                    CoolUser userModel =
                        CoolUser.fromMap(doc.data()! as Map<String, dynamic>);
                    String individual =
                        "${Constants.INDIVIDUAL_GROUP}_${userModel.uid!}";
                    return IndividualAddedTile(
                      borderRadius: 0,
                      isSelected:
                          widget.selectedGroupsList.contains(individual),
                      backgroundColor: Kolors.greyWhite,
                      coolUser: userModel,
                      onTapSelect: () {
                        if (!widget.selectedGroupsList.contains(individual)) {
                          setState(() {
                            widget.selectedGroupsList.add(individual);
                          });
                        } else {
                          setState(() {
                            widget.selectedGroupsList.remove(individual);
                          });
                        }
                      },
                    );
                  },
                ),
              )
            : const Center(
                child: Text('No User found!'),
              );
      },
    );
  }
}
