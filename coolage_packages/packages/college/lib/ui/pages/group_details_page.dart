part of college;

class GroupDetailsPage extends StatefulWidget {
  final String groupName;
  const GroupDetailsPage({
    Key? key,
    required this.groupName,
  }) : super(key: key);

  @override
  State<GroupDetailsPage> createState() => _GroupDetailsPageState();
}

class _GroupDetailsPageState extends State<GroupDetailsPage> {
  @override
  void initState() {
    super.initState();
    context.read<CollegeGroupsBloc>().add(CollegeGroupsEvent.getGroupDetails(
          groupName: widget.groupName,
          college: Getters.getCurrentUserCollege(context),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CollegeGroupsBloc, CollegeGroupsState>(
      listener: (context, state) {},
      builder: (context, state) {
        final model = state.groupModel;
        return SafeArea(
          child: Scaffold(
            backgroundColor: Kolors.greyWhite,
            body: state.isGroupLoading
                ? const Center(child: LogoLoading())
                : model == null
                    ? const Center(
                        child: CustomText(
                        text: "Group not found!",
                        fontWeight: FontWeight.w400,
                        color: Kolors.greyBlue,
                      ))
                    : SingleChildScrollView(
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(
                                        bottom:
                                            model.logoImage?.isNotEmpty ?? false
                                                ? 60
                                                : 0),
                                    child: Stack(
                                      alignment: Alignment.topLeft,
                                      children: [
                                        ClipRRect(
                                          borderRadius: const BorderRadius.only(
                                            bottomLeft: Radius.circular(20),
                                            bottomRight: Radius.circular(20),
                                          ),
                                          child: CachedNetworkImage(
                                            imageUrl: model.image!,
                                            height: 226,
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Container(
                                          height: 72,
                                          width:
                                              MediaQuery.of(context).size.width,
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                              colors: [
                                                Kolors.greyBlack,
                                                Kolors.greyBlack.withOpacity(0),
                                              ],
                                              begin: Alignment.topCenter,
                                              end: Alignment.bottomCenter,
                                            ),
                                          ),
                                          child: Row(
                                            children: [
                                              GestureDetector(
                                                onTap: () {
                                                  Navigator.of(context).pop();
                                                },
                                                child: Container(
                                                  padding: EdgeInsets.all(24),
                                                  child: const IconImagesWid(
                                                    iconName: 'back_arrow.png',
                                                    color: Colors.white,
                                                    height: 24,
                                                    width: 24,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  if (model.logoImage?.isNotEmpty ?? false)
                                    Container(
                                      decoration: const BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle,
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 12,
                                            color: Kolors.greyBlue,
                                          )
                                        ],
                                      ),
                                      child: CircleAvatar(
                                        radius: 60,
                                        backgroundImage:
                                            CachedNetworkImageProvider(
                                          model.logoImage!,
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              Center(
                                child: CustomText(
                                  text: model.name ?? "",
                                  fontSize: 24,
                                  fontFamily: Fonts.HEADING_FONT,
                                  fontWeight: FontWeight.w400,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              if (CollegeCoreFunctionality.isAdmin)
                                Center(
                                    child: editProfileButton(context, model)),
                              const SizedBox(
                                height: 16,
                              ),
                              aboutWidget(model.about ?? ''),
                              const SizedBox(
                                height: 16,
                              ),
                              ViewMembersWidget(
                                isDepartment: model.isDepartment!,
                                groupName: widget.groupName,
                                departmentDegreesList:
                                    model.departmentDegreesList!,
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              contactDetailsWidget(model.contactInfoMap),
                              const SizedBox(
                                height: 36,
                              ),
                            ],
                          ),
                        ),
                      ),
          ),
        );
      },
    );
  }

  Widget contactDetailsWidget(
      Map<String, ContactInfoGroupModel>? contactInfoMap) {
    final List<Widget> list = [];
    contactInfoMap?.forEach((key, value) {
      if (value.type == Constants.website) {
        list.add(contactTile('website.png', value));
      } else if (value.type == Constants.email) {
        list.add(contactTile('email_message.png', value));
      } else if (value.type == Constants.phoneNo) {
        list.add(contactTile('phone.png', value));
      }
    });
    return Container(
      padding: const EdgeInsets.all(20),
      color: Colors.white,
      child: Column(
        children: [...list],
      ),
    );
  }

  Widget contactTile(String iconName, ContactInfoGroupModel model) {
    return GestureDetector(
      onTap: () {
        Clipboard.setData(ClipboardData(text: model.value));
        Fluttertoast.showToast(msg: "Copied to Clipboard");
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: Row(
          children: [
            IconImagesWid(
              iconName: iconName,
              color: Kolors.primaryColor1,
              width: 24,
              height: 24,
            ),
            const SizedBox(width: 16),
            CustomText(
              text: "${model.title} : ",
              fontSize: 13,
              fontWeight: FontWeight.w400,
            ),
            const SizedBox(width: 8),
            Expanded(
              child: CustomText(
                text: model.value,
                fontSize: 13,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget aboutWidget(String about) {
    return Container(
      padding: const EdgeInsets.all(20),
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: const [
              CustomText(
                text: "About",
              ),
              Expanded(
                child: Divider(
                  thickness: 1,
                  color: Kolors.greyBlue,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: CustomText(
              text: about,
              color: Kolors.greyBlue,
              fontSize: 13,
              fontFamily: Fonts.CONTENT_FONT,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }

  Widget editProfileButton(BuildContext context, GroupModel model) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => AddDepartmentGroupPage(
                  groupModel: model,
                  isDepartment: model.isDepartment!,
                )));
      },
      child: Container(
        height: 40,
        width: 140,
        margin: const EdgeInsets.only(
          top: 12,
          bottom: 12,
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 12,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: Kolors.primaryColor1,
          ),
        ),
        child: Row(
          children: const [
            SizedBox(width: 12),
            IconImagesWid(
              iconName: 'edit.png',
              height: 24,
              width: 24,
              color: Kolors.primaryColor1,
            ),
            SizedBox(width: 12),
            CustomText(
              text: "Edit Profile",
              color: Kolors.primaryColor1,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            )
          ],
        ),
      ),
    );
  }
}
