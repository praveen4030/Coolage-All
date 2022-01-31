import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:user/ui/profile/pages/qr_code_page.dart';
import 'package:user/ui/profile/pages/scan_qr_code.dart';

class QrDetailsPage extends StatefulWidget {
  const QrDetailsPage({Key? key}) : super(key: key);

  @override
  _QrDetailsPageState createState() => _QrDetailsPageState();
}

class _QrDetailsPageState extends State<QrDetailsPage> {
  int index = 2;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: 100),
                child:
                    (index == 1 ? const ScanQRCodePage() : const QrCodePage()),
              ),
              appBar(),
            ],
          ),
        ),
      ),
    );
  }

  Widget appBar() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        color: Kolors.primaryColor1,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(40),
          bottomRight: Radius.circular(40),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 20,
                        color: Kolors.greyBlack.withOpacity(0.5),
                      )
                    ],
                  ),
                  child: const IconImagesWid(
                    iconName: 'back_arrow.png',
                    color: Colors.white,
                    height: 24,
                    width: 24,
                  ),
                ),
              ),
              const Spacer(),
              const CustomText(
                text: "Profile QR Code",
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.w500,
              ),
              const Spacer(),
              Container(
                width: 38,
              ),
            ],
          ),
          const SizedBox(
            height: 32,
          ),
          toggleButtonsWidget(),
        ],
      ),
    );
  }

  Widget toggleButtonsWidget() {
    return Container(
      padding: const EdgeInsets.all(4),
      height: 50,
      decoration: BoxDecoration(
          // color: Colors.white,
          borderRadius: BorderRadius.circular(50),
          boxShadow: const [
            BoxShadow(
              color: Kolors.greyBlue,
            ),
            BoxShadow(
              color: Kolors.white,
              // spreadRadius: -8.0,
              blurRadius: 8,
            ),
          ]),
      child: Row(
        children: [
          if (index == 1)
            toggleButtonSelected("Scan QR")
          else
            toggleButtonUnselected("Scan QR"),
          if (index == 2)
            toggleButtonSelected("My QR")
          else
            toggleButtonUnselected("My QR")
        ],
      ),
    );
  }

  Widget toggleButtonSelected(String text) {
    return Expanded(
      flex: 1,
      child: Container(
        decoration: BoxDecoration(
          color: Kolors.primaryColor1,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Center(
          child: CustomText(
            text: text,
            fontSize: 18,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget toggleButtonUnselected(
    String text,
  ) {
    return Expanded(
      flex: 1,
      child: GestureDetector(
        onTap: () {
          setState(() {
            index = index == 1 ? 2 : 1;
          });
        },
        child: Center(
          child: CustomText(
            text: text,
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
