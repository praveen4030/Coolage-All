import 'package:coolage/application/auth/authentication_bloc.dart';
import 'package:coolage/presentation/base/store/dialogs/add_address_dialog.dart';
import 'package:core/core.dart';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DeliveryAddressWidget extends StatefulWidget {
  final String? zoneSelected;
  final int? deliveryAddressSelectedIndex;
  final Function? onAdressChange;
  const DeliveryAddressWidget({
    Key? key,
    @required this.deliveryAddressSelectedIndex,
    @required this.onAdressChange,
    @required this.zoneSelected,
  }) : super(key: key);

  @override
  State<DeliveryAddressWidget> createState() => _DeliveryAddressWidgetState();
}

class _DeliveryAddressWidgetState extends State<DeliveryAddressWidget> {
  final ScrollController _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthenticationBloc, AuthenticationState>(
      builder: (context, state) {
        final addresses =
            state.coolUser!.deliveryAddressesMap![widget.zoneSelected];
        final addressesList =
            addresses?.values.toList().reversed.toList() ?? [];
        return Container(
          child: addressesList.isNotEmpty
              ? Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    ListView(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: ListView.builder(
                            controller: _scrollController,
                            itemCount: addressesList.length,
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) {
                              return addressTile(
                                  addressesList[index], context, index);
                            },
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      child: addAddressButton(context, 0),
                    ),
                  ],
                )
              : addFirstAddress(context),
        );
      },
    );
  }

  Widget addFirstAddress(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: ButtonWid(
        color: Kolors.greyBlue,
        width: 140,
        onTap: () async {
          final check = await showModalBottomSheet(
              isScrollControlled: true,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              context: context,
              builder: (context) {
                return AddAddressDialog(
                  selectedZone: widget.zoneSelected,
                );
              });
          if (check is bool) {
            widget.onAdressChange!(0);
          }
        },
        text: "Add address",
      ),
    );
  }

  Widget addressTile(
      DeliveryAddressModel model, BuildContext context, int index) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(
        vertical: 8,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PopupMenuButton(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  ),
                  onSelected: (bool val) async {
                    if (val) {
                      //edit
                      await showModalBottomSheet(
                          isScrollControlled: true,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            ),
                          ),
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          context: context,
                          builder: (context) {
                            return AddAddressDialog(
                              selectedZone: widget.zoneSelected,
                              deliveryAddressModel: model,
                            );
                          });
                    } else {
                      //delete
                      context
                          .read<AuthenticationBloc>()
                          .add(AuthenticationEvent.modifyAddress(
                            isDelete: true,
                            isEdit: false,
                            zone: widget.zoneSelected,
                            addressModel: model,
                          ));
                    }
                  },
                  offset: const Offset(0, 30),
                  child: const Icon(
                    Icons.more_vert,
                    size: 25,
                    color: Kolors.greyBlue,
                  ),
                  itemBuilder: (context) {
                    return [
                      PopupMenuItem<bool>(
                        value: true,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 35,
                              child: const CustomText(
                                text: "Edit",
                                color: Kolors.greyBlue,
                                fontSize: 14,
                                fontFamily: Fonts.CONTENT_FONT,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const Divider(
                              height: 1,
                              color: Kolors.greyBlue,
                            ),
                          ],
                        ),
                      ),
                      const PopupMenuItem<bool>(
                        value: false,
                        height: 38,
                        child: CustomText(
                          text: "Delete",
                          color: Kolors.redColor,
                          fontSize: 14,
                          fontFamily: Fonts.CONTENT_FONT,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ];
                  },
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: model.roomNo,
                        fontFamily: Fonts.CONTENT_FONT,
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: Colors.black,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      CustomText(
                          text: model.addressLine,
                          fontFamily: Fonts.CONTENT_FONT,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Kolors.greyBlue),
                    ],
                  ),
                ),
                Radio(
                    activeColor: Kolors.secondaryColor2,
                    value: widget.deliveryAddressSelectedIndex == index ? 0 : 1,
                    groupValue: 0,
                    onChanged: (int? val) {
                      widget.onAdressChange!(index);
                    }),
              ],
            ),
          ),
          if (widget.deliveryAddressSelectedIndex == index)
            Container(
              decoration: const BoxDecoration(
                color: Kolors.secondaryColor2,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(8),
                  bottomRight: Radius.circular(8),
                ),
              ),
              height: 8,
            ),
        ],
      ),
    );
  }

  Widget addAddressButton(BuildContext context, int length) {
    return GestureDetector(
      onTap: () async {
        final check = await showModalBottomSheet(
            isScrollControlled: true,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            context: context,
            builder: (context) {
              return AddAddressDialog(
                selectedZone: widget.zoneSelected,
              );
            });
        if (check is bool) {
          widget.onAdressChange!(0);
          SchedulerBinding.instance?.addPostFrameCallback((_) {
            _scrollController.animateTo(
                _scrollController.position.maxScrollExtent,
                duration: const Duration(milliseconds: 400),
                curve: Curves.fastOutSlowIn);
          });
        }
      },
      child: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Kolors.greyBlue,
          boxShadow: [
            BoxShadow(
              blurRadius: 4,
              color: Kolors.greyBlue.withOpacity(1),
            )
          ],
        ),
        child: const Icon(
          Icons.add,
          size: 24,
          color: Colors.white,
        ),
      ),
    );
  }
}
