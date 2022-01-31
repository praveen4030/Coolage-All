import 'package:core/core.dart';
import 'package:flutter/material.dart';

class ContactInfoServiceTile extends StatelessWidget {
  final TextEditingController? phoneTEC;
  final TextEditingController? latitiudeTEC;
  final TextEditingController? longitudeTEC;
  const ContactInfoServiceTile({
    Key? key,
    @required this.phoneTEC,
    @required this.latitiudeTEC,
    @required this.longitudeTEC,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child: Column(
        children: [
          const CardHeaderTextWidget(
            text: "Contact Information",
          ),
          const SizedBox(
            height: 32,
          ),
          Row(
            children: [
              CircleIcon(
                icon: 'call',
                height: 25,
                color: Colors.white,
                width: 25,
                onTap: () {},
                backgroundColor: Kolors.secondaryColor1,
              ),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                child: TextFieldLineWidget(
                  controller: phoneTEC,
                  hint: "Phone No.",
                  validationFn: (val) {
                    return val?.isNotEmpty ?? false
                        ? Functions.validatePhoneNo(val!)
                            ? null
                            : 'Please enter valid phone no'
                        : 'Please add your phone no.';
                  },
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 32,
          ),
          Row(
            children: [
              CircleIcon(
                icon: 'location',
                backgroundColor: Kolors.secondaryColor1,
                height: 25,
                color: Colors.white,
                width: 25,
                onTap: () {},
              ),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                child: TextFieldBoxWidget(
                  controller: latitiudeTEC,
                  hint: "Latitude",
                  validationFn: (val) {
                    return val?.isNotEmpty ?? false
                        ? null
                        // Functions.validateCoordinates(val!)
                        //     ? null
                        //     : "Enter valid latitude"
                        : 'Add latitude';
                  },
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                child: TextFieldBoxWidget(
                  controller: longitudeTEC,
                  hint: "Longitude",
                  validationFn: (val) {
                    return val?.isNotEmpty ?? false
                        ? null
                        // Functions.validateCoordinates(val!)
                        //     ? null
                        //     : "Enter valid longitude"
                        : 'Add longitude';
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
