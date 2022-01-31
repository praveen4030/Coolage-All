part of college;

class AddCollegeBannersPage extends StatefulWidget {
  const AddCollegeBannersPage({
    Key? key,
  }) : super(key: key);

  @override
  State<AddCollegeBannersPage> createState() => _AddCollegeBannersPageState();
}

class _AddCollegeBannersPageState extends State<AddCollegeBannersPage> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CollegeBloc, CollegeState>(
      listener: (context, state) {
        state.optionResultOpt.fold(
          () {},
          (either) {
            either.fold((failure) {
              FlushbarHelper.createError(message: failure.error).show(context);
            }, (msg) {
              setState(() {});
              Fluttertoast.showToast(msg: msg);
            });
          },
        );
      },
      builder: (context, state) {
        final cardsList = state.collegeModel!.homeCardsList ?? [];
        return SafeArea(
          child: Scaffold(
            backgroundColor: Kolors.greyWhite,
            appBar: const PreferredSize(
              preferredSize: Size.fromHeight(80),
              child: CoolageAppBar(
                isCenter: true,
                backgroundColor: Kolors.greyWhite,
                actions: [],
                text: "College Banners",
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
                      titleIfEditAccessForAdmin: "Add College Banners",
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
                              itemCount: cardsList.length,
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 30,
                                mainAxisSpacing: 24,
                                childAspectRatio: 1.3,
                              ),
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  onLongPress: () async {
                                    await showDialog(
                                        context: context,
                                        builder: (context) {
                                          return ConfirmAlertDialog(
                                              text:
                                                  "Are you sure you have want to delete this card?",
                                              fn: () {
                                                context.read<CollegeBloc>().add(
                                                    CollegeEvent.deleteCollegeCard(
                                                        userCollege: Getters
                                                            .getCurrentUserCollege(
                                                                context),
                                                        cards:
                                                            cardsList[index]));
                                              });
                                        });
                                  },
                                  child: EditCardTile(card: cardsList[index]),
                                );
                              }),
                        ],
                      )),
                ],
              ),
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerFloat,
            floatingActionButton: addImageWidget(state.isAddingCollegeBanner),
          ),
        );
      },
    );
  }

  Widget addImageWidget(bool isAdding) {
    return FloatingActionButton(
      onPressed: () async {
        await showDialog(
            context: context,
            builder: (BuildContext context) {
              return ImagePickerDialog(
                onImageSelected: (selected) async {
                  if (selected != null) {
                    context.read<CollegeBloc>().add(CollegeEvent.addCollegeCard(
                          userCollege: Getters.getCurrentUserCollege(context),
                          file: selected,
                        ));
                  }
                  Navigator.of(context).pop();
                },
              );
            });
      },
      backgroundColor: Kolors.secondaryColor1,
      child: isAdding
          ? const CircularProgressIndicator(color: Colors.white)
          : const Icon(Icons.add),
    );
  }
}
