import 'package:cards/cards.dart';
import 'package:cards/widgets/edit_card_tile.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';

class AddEditCardsPage extends StatelessWidget {
  final String title;
  final List<Cards>? cardsList;

  const AddEditCardsPage({
    Key? key,
    this.title = "Edit Banners",
    @required this.cardsList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Kolors.greyWhite,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(80),
          child: CoolageAppBar(
            isCenter: true,
            backgroundColor: Kolors.greyWhite,
            actions: const [],
            text: title,
          ),
        ),
        body: Container(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: CardsList(
                  cardsList: cardsList,
                  marginRight: 5,
                  marginLeft: 5,
                  isEditingCards: false,
                  titleIfEditAccessForAdmin: "College Banners",
                ),
              ),
              Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      GridView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: cardsList!.length,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 30,
                            mainAxisSpacing: 24,
                            childAspectRatio: 1.3,
                          ),
                          itemBuilder: (context, index) {
                            // return Container(child: CustomText(text: 'dv'));
                            return EditCardTile(card: cardsList![index]);
                          }),
                    ],
                  )),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Kolors.secondaryColor1,
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
