part of college;

class AddCollegeImagesPage extends StatefulWidget {
  const AddCollegeImagesPage({
    Key? key,
  }) : super(key: key);

  @override
  State<AddCollegeImagesPage> createState() => _AddCollegeImagesPageState();
}

class _AddCollegeImagesPageState extends State<AddCollegeImagesPage> {
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
        final cardsList =
            cardsModelList(state.aboutCollegeModel!.imagesList ?? []);
        return SafeArea(
          child: Scaffold(
              backgroundColor: Kolors.greyWhite,
              appBar: const PreferredSize(
                preferredSize: Size.fromHeight(80),
                child: CoolageAppBar(
                  isCenter: true,
                  backgroundColor: Kolors.greyWhite,
                  actions: [],
                  text: "College Images",
                ),
              ),
              body: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: CardsList(
                      cardsList: cardsList,
                      marginRight: 5,
                      marginLeft: 5,
                      isEditingCards: false,
                      titleIfEditAccessForAdmin: "College Images",
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
                                // return Container(child: CustomText(text: 'dv'));
                                return GestureDetector(
                                  onLongPress: () async {
                                    await showDialog(
                                        context: context,
                                        builder: (context) {
                                          return ConfirmAlertDialog(
                                              text:
                                                  "Are you sure you have want to delete this image?",
                                              fn: () {
                                                context.read<CollegeBloc>().add(
                                                    CollegeEvent.deleteCollegeImage(
                                                        userCollege: Getters
                                                            .getCurrentUserCollege(
                                                                context),
                                                        image: cardsList[index]
                                                            .image!));
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
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.centerFloat,
              floatingActionButton: addImageWidget(state.isAddingCollegeImage)),
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
                    context
                        .read<CollegeBloc>()
                        .add(CollegeEvent.addCollegeImage(
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

  List<Cards> cardsModelList(List<String> cardsList) {
    final List<Cards> modelsList = [];
    for (String element in cardsList) {
      if (element.isNotEmpty) {
        Cards card = Cards.fromImageUrl(element);
        modelsList.add(card);
      }
    }
    return modelsList;
  }
}
