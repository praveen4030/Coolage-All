part of blogs;

class EmptyBlogsWidget extends StatelessWidget {
  const EmptyBlogsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          const SizedBox(
            height: 120,
          ),
          Container(
            padding: EdgeInsets.only(left: 20),
            child: Image.asset(
              'assets/illustrations/no_blogs.png',
              width: 364,
              height: 332,
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          CustomText(
            text: "OOPS!",
            fontSize: 30,
            fontWeight: FontWeight.w600,
            color: Kolors.greyBlue.withOpacity(0.5),
          ),
          const SizedBox(
            height: 10,
          ),
          CustomText(
            text: "No blogs found \nfor this match",
            color: Kolors.greyBlue.withOpacity(0.5),
            fontSize: 18,
          ),
        ],
      ),
    );
  }
}
