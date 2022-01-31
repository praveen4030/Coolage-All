import 'package:coolage/application/auth/authentication_bloc.dart';
import 'package:core/core.dart';

import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AddAddressDialog extends StatefulWidget {
  final String? selectedZone;
  //if not null tyhen edit
  final DeliveryAddressModel? deliveryAddressModel;
  const AddAddressDialog({
    Key? key,
    @required this.selectedZone,
    this.deliveryAddressModel,
  }) : super(key: key);

  @override
  State<AddAddressDialog> createState() => _AddAddressDialogState();
}

class _AddAddressDialogState extends State<AddAddressDialog> {
  bool isEdit = false;
  final roomNoTec = TextEditingController();
  final addressLineTEC = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    if (widget.deliveryAddressModel != null) {
      addressLineTEC.text = widget.deliveryAddressModel!.addressLine!;
      roomNoTec.text = widget.deliveryAddressModel!.roomNo!;
      isEdit = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthenticationBloc, AuthenticationState>(
      listener: (context, state) {
        // TODO: implement listener
        state.updateProfileFailureOrSuccess!.fold(() {}, (either) {
          either.fold(
            (failure) {
              FlushbarHelper.createError(message: failure.error).show(context);
            },
            (_) {
              Fluttertoast.showToast(msg: 'Address saved successfully');
              AutoRouter.of(context).pop(true);
            },
          );
        });
      },
      builder: (context, state) {
        return Container(
          padding: MediaQuery.of(context).viewInsets,
          color: Kolors.greyWhite,
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  color: Colors.white,
                  width: MediaQuery.of(context).size.width,
                  child: const CustomText(
                    text: "Address",
                  ),
                ),
                const SizedBox(height: 15),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      LabelTextFieldWidget(
                        fontSize: 10,
                        topMargin: 6,
                        height: 45,
                        text: "Room No / House No",
                        textFormField: TextFormField(
                          controller: roomNoTec,
                          validator: (val) {
                            return val?.isNotEmpty ?? false
                                ? null
                                : 'Please add room no/house no';
                          },
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            suffixStyle: TextStyle(
                              color: Kolors.greyBlue,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      LabelTextFieldWidget(
                        fontSize: 10,
                        topMargin: 6,
                        height: 45,
                        text: "Adresss line 1",
                        textFormField: TextFormField(
                          controller: addressLineTEC,
                          validator: (val) {
                            return val?.isNotEmpty ?? false
                                ? null
                                : 'Please add address line';
                          },
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            suffixStyle: TextStyle(
                              color: Kolors.greyBlue,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      LabelTextFieldWidget(
                        fontSize: 10,
                        topMargin: 6,
                        height: 45,
                        text: "Selected Zone",
                        textFormField: Row(
                          children: [
                            Text(
                              widget.selectedZone!,
                              style: const TextStyle(
                                fontSize: 14,
                                color: Kolors.greyBlack,
                                fontFamily: Fonts.CONTENT_FONT,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const Spacer(),
                            const Icon(Icons.keyboard_arrow_down)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ButtonWid(
                      height: 75,
                      color: Kolors.greyBlue,
                      isLoading: state.isUpdatingProfileLoading!,
                      onTap: () {
                        if (formKey.currentState!.validate()) {
                          context
                              .read<AuthenticationBloc>()
                              .add(AuthenticationEvent.modifyAddress(
                                isDelete: false,
                                isEdit: isEdit,
                                zone: widget.selectedZone,
                                addressModel: DeliveryAddressModel(
                                    key: isEdit
                                        ? widget.deliveryAddressModel!.key
                                        : null,
                                    addressLine: addressLineTEC.text,
                                    roomNo: roomNoTec.text),
                              ));
                        }
                      },
                      text: "Save Address",
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
