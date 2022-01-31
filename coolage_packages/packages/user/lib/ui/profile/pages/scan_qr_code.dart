import 'dart:io';

import 'package:core/core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:user/domain/auth/fetch_user_details.dart';
import 'package:user/ui/profile/user_profile.dart';

class ScanQRCodePage extends StatefulWidget {
  const ScanQRCodePage({Key? key}) : super(key: key);

  @override
  _ScanQRCodePageState createState() => _ScanQRCodePageState();
}

class _ScanQRCodePageState extends State<ScanQRCodePage> {
  Barcode? result;
  QRViewController? controller;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  bool isLoading = false;

  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller!.pauseCamera();
    }
    controller!.resumeCamera();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Stack(
            alignment: Alignment.center,
            children: [
              _buildQrView(context),
              if (isLoading)
                const CircularProgressIndicator(
                  color: Kolors.primaryColor1,
                ),
            ],
          ),
          FittedBox(
            fit: BoxFit.contain,
            child: Container(
              height: 148,
              width: MediaQuery.of(context).size.width,
              color: Kolors.greyBlack.withOpacity(0.3),
              padding: const EdgeInsets.only(bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  GestureDetector(
                    onTap: () async {
                      await controller?.toggleFlash();
                      setState(() {});
                    },
                    child: FutureBuilder(
                      future: controller?.getFlashStatus(),
                      builder: (context, snapshot) {
                        bool isFlashOn = snapshot.data != null
                            ? snapshot.data as bool
                            : false;
                        return IconImagesWid(
                          iconName:
                              isFlashOn ? "flash_filled.png" : "qr_flash.png",
                          height: 28,
                          width: 28,
                          color: Colors.white,
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 48,
                  ),
                  GestureDetector(
                      onTap: () async {
                        await controller?.flipCamera();
                        setState(() {});
                      },
                      child: FutureBuilder(
                        future: controller?.getCameraInfo(),
                        builder: (context, snapshot) {
                          return const IconImagesWid(
                            iconName: "qr_camera.png",
                            height: 28,
                            width: 28,
                            color: Colors.white,
                          );
                        },
                      ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildQrView(BuildContext context) {
    final area = MediaQuery.of(context).size.width - 120;
    return QRView(
      key: qrKey,
      onQRViewCreated: _onQRViewCreated,
      overlay: QrScannerOverlayShape(
        borderColor: Colors.white,
        borderRadius: 0,
        borderLength: 37,
        borderWidth: 12,
        cutOutSize: area,
      ),
      onPermissionSet: (ctrl, p) => _onPermissionSet(context, ctrl, p),
    );
  }

  Future<void> _onQRViewCreated(QRViewController controller) async {
    setState(() {
      this.controller = controller;
    });
    controller.scannedDataStream.listen((scanData) async {
      setState(() {
        isLoading = true;
        result = scanData;
      });
      final user = await FetchUserDetails.getUserFromUid(result!.code!);
      setState(() {
        isLoading = false;
      });
      if (user != null) {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => UserProfilePage(
                  coolUser: user,
                )));
      }
    });
  }

  void _onPermissionSet(BuildContext context, QRViewController ctrl, bool p) {
    if (!p) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('no Permission')),
      );
    }
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}
