part of blogs;

class BlogsFilterDialog extends StatefulWidget {
  final List<String>? selectedTags;
  final bool? isMyCitySelected;
  final bool? isMyCollegeSelected;
  final Function? onApply;
  const BlogsFilterDialog({
    Key? key,
    @required this.isMyCitySelected,
    @required this.isMyCollegeSelected,
    @required this.selectedTags,
    @required this.onApply,
  }) : super(key: key);

  @override
  State<BlogsFilterDialog> createState() => _BlogsFilterDialogState();
}

class _BlogsFilterDialogState extends State<BlogsFilterDialog> {
  List<String> selectedTags = [];
  bool isMyCitySelected = false;
  bool isMyCollegeSelected = false;
  @override
  void initState() {
    super.initState();
    selectedTags = widget.selectedTags!;
    isMyCollegeSelected = widget.isMyCollegeSelected!;
    isMyCitySelected = widget.isMyCitySelected!;
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CoolageDetailsBloc, CoolageDetailsState>(
      builder: (context, state) {
        final blogCategoriesList =
            state.coolageDetailsModel!.blogCategoriesList!;
        return Container(
          padding: MediaQuery.of(context).viewInsets,
          color: Kolors.greyWhite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                color: Colors.white,
                width: MediaQuery.of(context).size.width,
                child: const CustomText(
                  text: "Filters",
                ),
              ),
              const SizedBox(height: 15),
              Container(
                height: 300,
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 20,
                ),
                child: ListView(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    collegeCityTags(),
                    const SizedBox(height: 24),
                    const Divider(
                      height: 1,
                      color: Kolors.greyBlue,
                    ),
                    const SizedBox(height: 24),
                    Wrap(
                      spacing: 20,
                      runSpacing: 16,
                      children: <Widget>[
                        ...generateTags(
                          blogCategoriesList,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ButtonWid(
                    height: 75,
                    color: Kolors.greyBlue,
                    onTap: () {
                      widget.onApply!(
                          selectedTags, isMyCitySelected, isMyCollegeSelected);
                      Navigator.of(context).pop();
                    },
                    text: "Apply",
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  Widget collegeCityTags() {
    return Wrap(
      spacing: 20.0,
      runSpacing: 400,
      children: <Widget>[
        Tag(
          tag: 'My City',
          isSelected: isMyCitySelected,
          onTap: () {
            setState(() {
              isMyCitySelected = !isMyCitySelected;
            });
          },
        ),
        Tag(
          tag: 'My Campus',
          isSelected: isMyCollegeSelected,
          onTap: () {
            setState(() {
              isMyCollegeSelected = !isMyCollegeSelected;
            });
          },
        ),
      ],
    );
  }

  List<Widget> generateTags(List<String> list) {
    return list
        .map(
          (tag) => Tag(
            tag: tag,
            isSelected: selectedTags.contains(tag),
            onTap: () {
              List<String> list = [];
              if (selectedTags.contains(tag)) {
                list = List.from(selectedTags)..remove(tag);
              } else {
                list = List.from(selectedTags)..add(tag);
              }
              setState(() {
                selectedTags = list;
              });
            },
          ),
        )
        .toList();
  }
}
