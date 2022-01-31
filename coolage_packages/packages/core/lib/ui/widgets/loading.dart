part of core;

class LogoLoading extends StatelessWidget {
  final double? height;
  const LogoLoading({
    Key? key,
    this.height = 120,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      child: Center(
        child: Lottie.asset('assets/animations/loading.json'),
      ),
    );
  }
}
