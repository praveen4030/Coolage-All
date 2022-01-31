part of college;

class DepartmentsPage extends StatefulWidget {
  const DepartmentsPage({Key? key}) : super(key: key);

  @override
  State<DepartmentsPage> createState() => _DepartmentsPageState();
}

class _DepartmentsPageState extends State<DepartmentsPage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CollegeBloc, CollegeState>(
      builder: (context, state) {
        final departmentsList = state.collegeModel!.departments ?? [];
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
                    itemCount: departmentsList.length,
                    itemBuilder: (context, index) {
                      return GroupTile(
                        text: departmentsList[index],
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
                                isDepartment: true,
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
