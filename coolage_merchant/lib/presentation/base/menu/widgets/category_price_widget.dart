import 'package:coolage_merchant/domain/base/canteen/category_price_model.dart';
import 'package:coolage_merchant/presentation/base/menu/pages/text_form_field.dart';
import 'package:coolage_merchant/presentation/core/widgets/add_circle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CategoryPriceWidget extends StatelessWidget {
  final Function? onAdd;
  final List<TextEditingController>? pricesList;
  final List<TextEditingController>? categoriesList;
  final Function? onRemove;
  const CategoryPriceWidget({
    Key? key,
    @required this.categoriesList,
    @required this.onAdd,
    @required this.pricesList,
    @required this.onRemove,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListView.builder(
            itemCount: pricesList!.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormFieldWidget(
                        height: 40,
                        controller: pricesList![index],
                        hint: "Rs",
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly
                        ], //
                        textInputType: TextInputType.number,
                        validator: (String? val) {
                          if (val?.isEmpty ?? true) {
                            return 'Please enter the price';
                          }
                          return null;
                        },
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: TextFormFieldWidget(
                        height: 40,
                        controller: categoriesList![index],
                        hint: "Category",
                        validator: (String? val) {
                          if (val?.isEmpty ?? true) {
                            return 'Please enter the category';
                          }
                          return null;
                        },
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        onRemove!(index);
                      },
                      child: const Icon(
                        Icons.cancel_outlined,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
          const SizedBox(height: 20),
          AddCircleWidget(
            onTap: () {
              onAdd!();
            },
          ),
        ],
      ),
    );
  }
}
