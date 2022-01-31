part of college;

class CollegeGroupsPage extends StatefulWidget {
  const CollegeGroupsPage({Key? key}) : super(key: key);

  @override
  State<CollegeGroupsPage> createState() => _CollegeGroupsPageState();
}

class _CollegeGroupsPageState extends State<CollegeGroupsPage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CollegeBloc, CollegeState>(
      builder: (context, state) {
        final groups = state.collegeModel!.groups ?? [];
        return Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 16),
              color: Colors.white,
              child: ListView(
                children: [
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: groups.length,
                    itemBuilder: (context, index) {
                      return GroupTile(
                        text: groups[index],
                      );
                    },
                  ),
                  const SizedBox(
                    height: 120,
                  ),
                ],
              ),
            ),
            if (CollegeCoreFunctionality.isAdmin)
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(
                          builder: (context) => const AddDepartmentGroupPage(
                                isDepartment: false,
                              )))
                      .then((_) {
                    setState(() {});
                  });
                },
                child: Container(
                  height: 60,
                  width: 60,
                  margin: const EdgeInsets.only(bottom: 56),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Kolors.greyBlue,
                  ),
                  child: const Center(
                    child: CustomText(
                      text: "+",
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      fontSize: 28,
                    ),
                  ),
                ),
              ),
          ],
        );
      },
    );
  }
}
