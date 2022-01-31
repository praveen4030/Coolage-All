import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:core/core.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mini_services/application/services/services_bloc.dart';
import 'package:mini_services/mini_services.dart';
import 'package:mini_services/ui/add_service_provider/widgets/contact_info.dart';
import 'package:mini_services/ui/add_service_provider/widgets/service_details.dart';
import 'package:mini_services/ui/add_service_provider/widgets/thumbnail.dart';
import 'package:mini_services/ui/add_service_provider/widgets/working_hours.dart';
import 'package:user/user.dart';

class AddMiniServiceProviderPage extends StatefulWidget {
  final ServiceProviderModel? model;
  final String? category;
  final int? index;
  const AddMiniServiceProviderPage({
    Key? key,
    this.model,
    @required this.category,
    this.index,
  }) : super(key: key);

  @override
  State<AddMiniServiceProviderPage> createState() =>
      _AddMiniServiceProviderPageState();
}

class _AddMiniServiceProviderPageState
    extends State<AddMiniServiceProviderPage> {
  bool isEdit = false;
  final formKey = GlobalKey<FormState>();
  final titleTEC = TextEditingController();
  final descTEC = TextEditingController();
  final phoneNoTEC = TextEditingController();
  final latitudeTEC = TextEditingController();
  final longitudeTEC = TextEditingController();
  Timestamp? openFrom;
  Timestamp? closeBy;
  File? file;
  String? imageUrl;
  bool isEditingMode = false;
  @override
  void initState() {
    super.initState();
    if (widget.model != null) {
      isEdit = true;
      titleTEC.text = widget.model!.name!;
      descTEC.text = widget.model!.desc!;
      phoneNoTEC.text = widget.model!.callingNo!;
      latitudeTEC.text = widget.model!.geoPoint!.latitude.toString();
      longitudeTEC.text = widget.model!.geoPoint!.longitude.toString();
      imageUrl = widget.model!.image!;
      openFrom = widget.model!.openFrom!;
      closeBy = widget.model!.closeBy!;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ServicesBloc, ServicesState>(
      listener: (context, state) {
        state.addServiceResultOpt!.fold(
          () {},
          (either) {
            either.fold(
              (failure) {
                Navigator.of(context).pop();
                FlushbarHelper.createError(message: failure.error)
                    .show(context);
              },
              (r) {
                if (widget.model == null) {
                  Navigator.of(context).pop();
                  Fluttertoast.showToast(msg: "Service added successfully!");
                } else {
                  Navigator.of(context).pop();
                  Fluttertoast.showToast(msg: "Service modified successfully!");
                }
              },
            );
          },
        );
        state.deleteServiceResultOpt!.fold(
          () {},
          (either) {
            either.fold(
              (failure) {
                Navigator.of(context).pop();
                FlushbarHelper.createError(message: failure.error)
                    .show(context);
              },
              (r) {
                Navigator.of(context).pop();
                Fluttertoast.showToast(msg: "Service deleted successfully!");
              },
            );
          },
        );
      },
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Kolors.greyWhite,
            appBar: PreferredSize(
              preferredSize: const Size.fromHeight(80),
              child: isEditingMode
                  ? CoolageEditAppBar(
                      text: "New ${widget.category}",
                      onSaveTap: () {
                        onSaveTap(context);
                      },
                      isSaving: state.isAddingServiceProvider!,
                    )
                  : CoolageAppBar(
                      isCenter: true,
                      actions: const [],
                      text: "New ${widget.category}",
                    ),
            ),
            body: Container(
              child: Form(
                key: formKey,
                onChanged: () {
                  setState(() {
                    isEditingMode = true;
                  });
                },
                child: ListView(
                  children: [
                    const SizedBox(
                      height: 24,
                    ),
                    ServiceDetailsTile(
                      titleTEC: titleTEC,
                      summaryTEC: descTEC,
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    WorkingHoursServiceTile(
                      openFrom: openFrom,
                      closeBy: closeBy,
                      selectCloseByFn: (time) {
                        setState(() {
                          closeBy = time as Timestamp;
                          isEditingMode = true;
                        });
                      },
                      selectOpenFromFn: (time) {
                        setState(() {
                          openFrom = time as Timestamp;
                          isEditingMode = true;
                        });
                      },
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    ThumbnailServiceWidget(
                      file: file,
                      imageUrl: imageUrl,
                      changeFileFn: (fileNew) {
                        setState(() {
                          file = fileNew;
                          isEditingMode = true;
                        });
                      },
                      removePhotoFn: () {
                        setState(() {
                          imageUrl = '';
                          file = null;
                          isEditingMode = true;
                        });
                      },
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    ContactInfoServiceTile(
                      phoneTEC: phoneNoTEC,
                      latitiudeTEC: latitudeTEC,
                      longitudeTEC: longitudeTEC,
                    ),
                    if (isEdit)
                      const SizedBox(
                        height: 24,
                      ),
                    if (isEdit)
                      DeleteTile(
                        isDeleting: state.isDeletingServiceProvider!,
                        onTap: () {
                          context
                              .read<ServicesBloc>()
                              .add(ServicesEvent.deleteServiceProvider(
                                userCollege:
                                    Getters.getCurrentUserCollege(context),
                                serviceProviderModel: widget.model,
                                index: widget.index,
                              ));
                        },
                        text: "Delete this service",
                      ),
                    const SizedBox(
                      height: 100,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  void onSaveTap(BuildContext context) {
    if (formKey.currentState!.validate()) {
      if (file == null && (imageUrl?.isEmpty ?? true)) {
        Fluttertoast.showToast(msg: "Please select image to continue");
        return;
      } else if (openFrom == null || closeBy == null) {
        Fluttertoast.showToast(msg: "Please add working hours");
        return;
      }
      try {
        final model = ServiceProviderModel(
          name: titleTEC.text,
          desc: descTEC.text,
          openFrom: openFrom,
          closeBy: closeBy,
          callingNo: phoneNoTEC.text,
          geoPoint: GeoPoint(double.tryParse(latitudeTEC.text) ?? 0.0,
              double.tryParse(longitudeTEC.text) ?? 0.0),
          image: isEdit ? widget.model!.image : '',
          docId: isEdit ? widget.model!.docId : null,
          category: widget.category,
        );
        context.read<ServicesBloc>().add(
              ServicesEvent.addServiceProvider(
                userCollege: Getters.getCurrentUserCollege(context),
                serviceProviderModel: model,
                index: widget.index,
                file: file,
              ),
            );
      } catch (e) {
        Fluttertoast.showToast(msg: e.toString());
      }
    }
  }
}
