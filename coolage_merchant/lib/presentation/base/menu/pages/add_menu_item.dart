import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:coolage_merchant/application/canteen/menu/canteen_menu_bloc.dart';
import 'package:coolage_merchant/domain/base/canteen/category_price_model.dart';
import 'package:coolage_merchant/domain/base/canteen/item_model.dart';
import 'package:coolage_merchant/domain/core/helpers/getter.dart';
import 'package:coolage_merchant/infrastructure/base/canteen/canteen_menu_repo.dart';
import 'package:coolage_merchant/presentation/base/menu/pages/text_form_field.dart';
import 'package:coolage_merchant/presentation/base/menu/widgets/category_price_widget.dart';
import 'package:coolage_merchant/presentation/base/menu/widgets/single_price_widget.dart';
import 'package:coolage_merchant/presentation/core/theme/colors.dart';
import 'package:coolage_merchant/presentation/core/theme/fonts.dart';
import 'package:coolage_merchant/presentation/core/theme/styles.dart';
import 'package:coolage_merchant/presentation/core/widgets/add_circle.dart';
import 'package:coolage_merchant/presentation/core/widgets/add_image.dart';
import 'package:coolage_merchant/presentation/core/widgets/border_button.dart';
import 'package:coolage_merchant/presentation/core/widgets/button.dart';
import 'package:coolage_merchant/presentation/core/widgets/confirm_alert_dialog.dart';
import 'package:coolage_merchant/presentation/core/widgets/custom_layout.dart';
import 'package:coolage_merchant/presentation/core/widgets/custom_text.dart';
import 'package:coolage_merchant/presentation/core/widgets/drop_down_button.dart';
import 'package:coolage_merchant/presentation/core/widgets/image_picker_dialog.dart';
import 'package:coolage_merchant/presentation/core/widgets/text_field_top_text.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddMenuItemPage extends StatefulWidget {
  final ItemModel? itemModel;
  final int? index;
  const AddMenuItemPage({
    Key? key,
    this.itemModel,
    this.index,
  }) : super(key: key);

  @override
  _AddMenuItemPageState createState() => _AddMenuItemPageState();
}

class _AddMenuItemPageState extends State<AddMenuItemPage> {
  final priceTEC = TextEditingController();
  final titleTEC = TextEditingController();
  final categoryTEC = TextEditingController();
  final descTEC = TextEditingController();
  final List<TextEditingController> categoryPricesList = [];
  final List<TextEditingController> categoryNamesList = [];
  bool? isCategoryPrice = false;

  String? selectedCategory;
  List<String> categoriesList = [];
  final formKey = GlobalKey<FormState>();
  bool? isVeg = true;
  File? imageFile;
  @override
  void initState() {
    if (widget.itemModel != null) {
      priceTEC.text = widget.itemModel!.price.toString();
      titleTEC.text = widget.itemModel!.itemName!;
      selectedCategory = widget.itemModel!.category;
      isVeg = widget.itemModel!.isVeg ?? false;
      descTEC.text = widget.itemModel!.desc!;
      if (widget.itemModel!.categoryPrices!.isNotEmpty) {
        isCategoryPrice = true;
      }
      for (final model in widget.itemModel!.categoryPrices!) {
        categoryNamesList
            .add(TextEditingController(text: model.category.toString()));
        categoryPricesList
            .add(TextEditingController(text: model.price.toString()));
      }
    }
    categoriesList =
        List.from(Getters.getCurrentCanteen(context).categoriesList!);
    categoriesList.add("Add Category");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CanteenMenuBloc, CanteenMenuState>(
      listener: (context, state) {
        state.itemFailureOrSuccess!.fold(() {}, (either) {
          either.fold(
            (failure) {
              FlushbarHelper.createError(message: failure.error).show(context);
            },
            (_) {
              String msg = '';
              if (widget.itemModel != null) {
                msg = 'Item updated successfully';
              } else {
                msg = 'Item added successfully';
              }
              Fluttertoast.showToast(msg: msg);
              AutoRouter.of(context).pop();
            },
          );
        });
        state.itemDeleteFailureOrSuccess!.fold(() {}, (either) {
          either.fold(
            (failure) {
              FlushbarHelper.createError(message: failure.error).show(context);
            },
            (_) {
              Fluttertoast.showToast(msg: 'Item deleted successfully');
              AutoRouter.of(context).pop();
            },
          );
        });
        state.addCategoryFailureOrSuccess!.fold(() {}, (either) {
          either.fold(
            (failure) {
              FlushbarHelper.createError(message: failure.error).show(context);
            },
            (category) {
              setState(() {
                if (!categoriesList.contains(category)) {
                  categoriesList.insert(0, category);
                }
                selectedCategory = category;
              });
              final list = Getters.getCurrentCanteen(context).categoriesList!;
              if (!list.contains(category)) {
                list.add(category);
              }
              Fluttertoast.showToast(msg: 'Category Added successfully');
            },
          );
        });
      },
      builder: (context, state) {
        return CustomLayout(
          child: Scaffold(
            appBar: AppBar(
              title: CustomText(
                text: widget.itemModel != null ? "Update Item" : "Add Item",
              ),
            ),
            body: SingleChildScrollView(
              child: Form(
                key: formKey,
                child: Container(
                  padding: const EdgeInsets.all(20),
                  margin: const EdgeInsets.only(bottom: 80),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () async {
                          await showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return ImagePickerDialog(
                                  onImageSelected: (file) async {
                                    setState(() {
                                      imageFile = file as File;
                                    });
                                    Fluttertoast.showToast(
                                        msg: 'Image Selected');
                                    AutoRouter.of(context).pop();
                                  },
                                );
                              });
                        },
                        child: imageWidget(),
                      ),
                      title(),
                      price(),
                      categoryWidget(state.isAddCategoryLoading!),
                      vegNonVeg(),
                      descriptionWidget(),
                    ],
                  ),
                ),
              ),
            ),
            bottomSheet:
                bottom(state.isMenuItemLoading!, state.isDeleteItemLoading!),
          ),
        );
      },
    );
  }

  Widget vegNonVeg() {
    return Row(
      children: [
        Expanded(
          child: RadioListTile(
            value: isVeg!,
            groupValue: true,
            activeColor: isVeg! ? Color(0xff35BFB0) : Kolors.greyBlue,
            onChanged: (val) {
              setState(() {
                isVeg = true;
              });
            },
            title: const CustomText(
              text: 'Veg',
              fontSize: 14,
              fontFamily: Fonts.HEADING_FONT,
              color: Kolors.greyBlue,
            ),
          ),
        ),
        Expanded(
          child: RadioListTile(
            value: isVeg!,
            groupValue: false,
            activeColor: !isVeg! ? Color(0xffD72121) : Kolors.greyBlue,
            onChanged: (val) {
              setState(() {
                isVeg = false;
              });
            },
            title: const CustomText(
              text: 'Non-Veg',
              fontSize: 14,
              fontFamily: Fonts.HEADING_FONT,
              color: Kolors.greyBlue,
            ),
          ),
        ),
      ],
    );
  }

  Widget descriptionWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TextFieldTopText(
          text: "Description",
        ),
        const SizedBox(
          height: 12,
        ),
        TextFormFieldWidget(
          height: 160,
          alignment: Alignment.topCenter,
          controller: descTEC,
          hint: "",
          validator: (String? val) {
            return null;
          },
        ),
        const SizedBox(
          height: 12,
        ),
      ],
    );
  }

  Widget title() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 16,
        ),
        const TextFieldTopText(
          text: "Title",
        ),
        TextFormFieldWidget(
          controller: titleTEC,
          hint: "Name",
          validator: (String? val) {
            if (val?.isEmpty ?? true) {
              return 'Please enter the title';
            }
            return null;
          },
        ),
        const SizedBox(
          height: 12,
        ),
      ],
    );
  }

  Widget price() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TextFieldTopText(
          text: "Price",
        ),
        if (!isCategoryPrice!)
          SinglePriceWidget(
              onAdd: () {
                setState(() {
                  isCategoryPrice = true;
                  categoryNamesList.add(TextEditingController());
                  categoryPricesList.add(TextEditingController());
                });
              },
              priceTEC: priceTEC)
        else
          CategoryPriceWidget(
            pricesList: categoryPricesList,
            categoriesList: categoryNamesList,
            onRemove: (int index) {
              setState(() {
                categoryNamesList.removeAt(index);
                categoryPricesList.removeAt(index);
                if (categoryPricesList.isEmpty) {
                  isCategoryPrice = false;
                }
              });
            },
            onAdd: () {
              setState(() {
                categoryNamesList.add(TextEditingController());
                categoryPricesList.add(TextEditingController());
              });
            },
          ),
        const SizedBox(
          height: 12,
        ),
      ],
    );
  }

  Widget categoryWidget(bool isCategoryLoading) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TextFieldTopText(
          text: "Category",
        ),
        Container(
          height: 35,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: Kolors.greyWhite,
          ),
          child: DropDownButton(
            list: categoriesList,
            onChanged: (val) {
              setState(() {
                selectedCategory = val as String;
              });
            },
            value: selectedCategory,
            hint: "Select",
            width: 200,
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        if (selectedCategory == "Add Category")
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TextFieldTopText(
                text: "Add Category",
              ),
              Row(
                children: [
                  Expanded(
                    child: TextFormFieldWidget(
                      height: 40,
                      validator: (String? val) {
                        if (selectedCategory == "Add Category") {
                          if (val?.isEmpty ?? true) {
                            return 'Please enter the category name';
                          }
                        }
                        return null;
                      },
                      controller: categoryTEC,
                      hint: "Category",
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  BorderButton(
                    color: Colors.white,
                    isLoading: isCategoryLoading,
                    onTap: () {
                      if (categoryTEC.text.isNotEmpty) {
                        context.read<CanteenMenuBloc>().add(
                            CanteenMenuEvent.addMenuCategory(
                                Getters.getCurrentCanteenId(context),
                                categoryTEC.text));
                      } else {
                        Fluttertoast.showToast(
                            msg: "Please enter the category");
                      }
                    },
                    text: "Add",
                    width: 60,
                  ),
                ],
              ),
            ],
          ),
      ],
    );
  }

  Widget imageWidget() {
    if (imageFile != null) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: kIsWeb
            ? Image.network(
                imageFile!.path,
                height: 200,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              )
            : Image.file(
                imageFile!,
                height: 200,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
      );
    } else if (widget.itemModel != null &&
        (widget.itemModel!.image?.isNotEmpty ?? false)) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: CachedNetworkImage(
          imageUrl: widget.itemModel!.image!,
          height: 200,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
      );
    } else {
      return const AddImageWidget();
    }
  }

  Widget bottom(bool isLoading, bool isDeleteLoading) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 30,
      ),
      decoration: const BoxDecoration(
        color: Kolors.greyWhite,
      ),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: ButtonWid(
              isLoading: isDeleteLoading,
              onTap: () async {
                if (widget.itemModel == null) {
                  return AutoRouter.of(context).pop();
                }
                await showDialog(
                    context: context,
                    builder: (context) {
                      return ConfirmAlertDialog(
                          fn: () {
                            context.read<CanteenMenuBloc>().add(
                                  CanteenMenuEvent.deleteMenuItem(
                                    Getters.getCurrentCanteenId(context),
                                    widget.itemModel!,
                                    widget.index!,
                                  ),
                                );
                            AutoRouter.of(context).pop();
                          },
                          text: "Are you sure you want to delete this item?");
                    });
              },
              text: widget.itemModel != null ? "Delete" : "Cancel",
              color: Colors.red,
            ),
          ),
          const SizedBox(
            width: 40,
          ),
          Expanded(
            flex: 1,
            child: ButtonWid(
              isLoading: isLoading,
              onTap: () {
                if (formKey.currentState!.validate()) {
                  if ((selectedCategory?.isNotEmpty ?? false) &&
                      selectedCategory != "Add Category") {
                    if (widget.itemModel != null) {
                      ItemModel model = ItemModel(
                        image: widget.itemModel!.image,
                        itemName: titleTEC.text,
                        price: double.tryParse(priceTEC.text),
                        qty: 0,
                        itemId: widget.itemModel!.itemId,
                        category: selectedCategory,
                        isAvailable: widget.itemModel!.isAvailable,
                        isVeg: isVeg,
                        desc: descTEC.text,
                        categoryPrices: getCategoryPricesList(),
                      );
                      context.read<CanteenMenuBloc>().add(
                            CanteenMenuEvent.updateMenuItem(
                                Getters.getCurrentCanteenId(context),
                                model,
                                widget.index!,
                                file: imageFile),
                          );
                    } else {
                      ItemModel model = ItemModel(
                        image: '',
                        itemName: titleTEC.text,
                        price: double.tryParse(priceTEC.text),
                        qty: 0,
                        itemId: '$selectedCategory-${titleTEC.text}',
                        category: selectedCategory,
                        isAvailable: true,
                        isVeg: isVeg,
                        desc: descTEC.text,
                        categoryPrices: getCategoryPricesList(),
                      );
                      context.read<CanteenMenuBloc>().add(
                            CanteenMenuEvent.addMenuItem(
                                Getters.getCurrentCanteenId(context), model,
                                file: imageFile),
                          );
                    }
                  } else {
                    Fluttertoast.showToast(msg: "Please select the category");
                  }
                }
              },
              text: widget.itemModel != null ? "Update" : "Add",
              color: Kolors.greyBlue,
            ),
          ),
        ],
      ),
    );
  }

  List<CategoryPriceModel> getCategoryPricesList() {
    final List<CategoryPriceModel> list = [];
    for (int i = 0; i < categoryPricesList.length; i++) {
      final CategoryPriceModel model = CategoryPriceModel(
        category: categoryNamesList[i].text,
        price: double.tryParse(categoryPricesList[i].text),
      );
      list.add(model);
    }
    return list;
  }
}
