import 'package:coolage_merchant/presentation/base/menu/pages/text_form_field.dart';
import 'package:coolage_merchant/presentation/core/widgets/add_circle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SinglePriceWidget extends StatelessWidget {
  final Function? onAdd;
  final TextEditingController? priceTEC;
  const SinglePriceWidget({
    Key? key,
    @required this.onAdd,
    @required this.priceTEC,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextFormFieldWidget(
          width: 150,
          height: 40,
          controller: priceTEC,
          hint: "Rs",
          inputFormatters: <TextInputFormatter>[
            FilteringTextInputFormatter.digitsOnly
          ], //
          textInputType: TextInputType.number,
          validator: (String? val) {
            if (val?.isEmpty ?? true) {
              return 'Enter price';
            }
            return null;
          },
        ),
        const SizedBox(
          width: 20,
        ),
        AddCircleWidget(
          onTap: () {
            onAdd!();
          },
        ),
      ],
    );
  }
}
