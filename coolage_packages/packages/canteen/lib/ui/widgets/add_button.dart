part of canteen;

class AddButton extends StatelessWidget {
  final Function? onAdd;
  final int? quantity;
  const AddButton({
    Key? key,
    @required this.onAdd,
    @required this.quantity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return quantity == 0
        ? GestureDetector(
            onTap: () {
              onAdd!(1, true);
            },
            child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Kolors.secondaryColor2,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const CustomText(
                  text: "Add + ",
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Colors.white,
                )),
          )
        : QuantityWidget(
            qty: quantity!,
            onDecrement: () {
              onAdd!(quantity! - 1, false);
            },
            onIncrement: () {
              onAdd!(quantity! + 1, true);
            },
          );
  }
}
