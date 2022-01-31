part of core;

class NotFoundPage extends StatelessWidget {
  final String? text;
  final String? path;

  const NotFoundPage({
    Key? key,
    @required this.text,
    @required this.path,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      alignment: Alignment.center,
      child: Column(
        children: [
          Image.asset(
            path!,
            height: 300,
          ),
          const SizedBox(height: 20),
          Text(
            text!,
            maxLines: 2,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Kolors.greyBlack,
              fontSize: 15,
            ),
          )
        ],
      ),
    );
  }
}
