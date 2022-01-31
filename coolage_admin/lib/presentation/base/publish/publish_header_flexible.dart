import 'package:blogs/application/blogs/blogs_bloc.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PublishHeaderFlexibleWidget extends StatelessWidget {
  const PublishHeaderFlexibleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BlogsBloc, BlogsState>(
      listener: (context, state) {
        // state.deliveryStatusFailureOrSuccess!.fold(() {}, (either) {
        //   either.fold(
        //     (failure) {},
        //     (_) {
        //       Fluttertoast.showToast(
        //           msg: 'Delivery Status changed successfully');
        //       final canteenBasicDetailsModel = context
        //           .read<AuthenticationBloc>()
        //           .state
        //           .canteenBasicDetailsModel!;
        //       canteenBasicDetailsModel.isDelivery =
        //           !canteenBasicDetailsModel.isDelivery!;
        //       context.read<AuthenticationBloc>().add(
        //           AuthenticationEvent.userModified(
        //               canteenBasicDetailsModel: canteenBasicDetailsModel));
        //     },
        //   );
        // });
        // state.openStatusFailureOrSuccess!.fold(() {}, (either) {
        //   either.fold(
        //     (failure) {},
        //     (_) {
        //       Fluttertoast.showToast(msg: 'Open Status changed successfully');
        //       final canteenBasicDetailsModel = context
        //           .read<AuthenticationBloc>()
        //           .state
        //           .canteenBasicDetailsModel!;
        //       canteenBasicDetailsModel.isOpen =
        //           !canteenBasicDetailsModel.isOpen!;
        //       context.read<AuthenticationBloc>().add(
        //           AuthenticationEvent.userModified(
        //               canteenBasicDetailsModel: canteenBasicDetailsModel));
        //     },
        //   );
        // });
      },
      builder: (context, state) {
        return Container(
          padding: const EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 20,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  IconWithBackground(
                    iconSize: 70,
                    iconName: 'coolage_logo',
                    opacity: 1,
                    onTap: () async {
                      // await showDialog(
                      //     context: context,
                      //     builder: (context) {
                      //       return const CustomDrawerPage();
                      //     });
                    },
                  ),
                  const Expanded(
                    child: Center(
                      child: Text(
                        "Publish",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          fontFamily: Fonts.HEADING_FONT,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        );
      },
    );
  }
}
