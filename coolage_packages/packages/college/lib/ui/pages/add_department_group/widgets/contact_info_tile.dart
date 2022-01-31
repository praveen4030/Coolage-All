import 'package:college/domain/contact_info_group.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';

class ContactInfoTile extends StatefulWidget {
  final ContactInfoGroupModel contactInfoGroupModel;
  final Function onRemove;
  final Function onChange;
  const ContactInfoTile({
    Key? key,
    required this.contactInfoGroupModel,
    required this.onRemove,
    required this.onChange,
  }) : super(key: key);

  @override
  _ContactInfoTileState createState() => _ContactInfoTileState();
}

class _ContactInfoTileState extends State<ContactInfoTile> {
  final titleTEC = TextEditingController();
  final valueTEC = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    titleTEC.text = widget.contactInfoGroupModel.title ?? '';
    valueTEC.text = widget.contactInfoGroupModel.value ?? '';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 16,
      ),
      margin: const EdgeInsets.symmetric(
        vertical: 6,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Kolors.greyWhite,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 16),
            child: getIcon(),
          ),
          const SizedBox(
            width: 20,
          ),
          const SizedBox(
            width: 6,
          ),
          Expanded(
            child: Column(
              children: [
                TextFieldLineWidget(
                  onChanged: (val) {
                    setState(() {
                      widget.onChange();
                      widget.contactInfoGroupModel.title = val as String;
                    });
                  },
                  controller: titleTEC,
                  hint: "Title",
                  validationFn: (val) {
                    return val?.isNotEmpty ?? false
                        ? null
                        : 'Enter the details';
                  },
                ),
                const SizedBox(
                  height: 4,
                ),
                TextFieldLineWidget(
                  onChanged: (val) {
                    setState(() {
                      widget.onChange();
                      widget.contactInfoGroupModel.value = val as String;
                    });
                  },
                  controller: valueTEC,
                  hint: widget.contactInfoGroupModel.type == Constants.website
                      ? "Website"
                      : widget.contactInfoGroupModel.type == Constants.email
                          ? "E- Mail"
                          : "Phone No",
                  validationFn: (val) {
                    return val?.isNotEmpty ?? false
                        ? null
                        : 'Enter the details';
                  },
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              widget.onChange();
              widget.onRemove();
            },
            child: Container(
              margin: const EdgeInsets.only(top: 10),
              child: Image.asset(
                "assets/icons/cancel.png",
                height: 16,
                width: 16,
                color: Kolors.greyBlue,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget getIcon() {
    if (widget.contactInfoGroupModel.type == Constants.website) {
      return Image.asset(
        "assets/icons/website.png",
        height: 30,
        width: 30,
        color: Kolors.primaryColor1,
      );
    } else if (widget.contactInfoGroupModel.type == Constants.email) {
      return Image.asset(
        "assets/icons/email_message.png",
        height: 30,
        width: 30,
        color: Kolors.primaryColor1,
      );
    } else {
      return Image.asset(
        "assets/icons/phone.png",
        height: 30,
        width: 30,
        color: Kolors.primaryColor1,
      );
    }
  }
}
