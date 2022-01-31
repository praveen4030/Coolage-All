import 'package:chat/domain/chat.dart';
import 'package:core/core.dart';

import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;

class ChatTile extends StatelessWidget {
  final ChatModel? chatModel;
  const ChatTile({
    Key? key,
    @required this.chatModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        children: [
          UserProfileCircular(image: chatModel!.senderImage),
          const SizedBox(
            width: 30,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: CustomText(
                        text: chatModel!.senderName,
                        fontFamily: Fonts.HEADING_FONT,
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                      ),
                    ),
                    CustomText(
                      text: timeago.format(chatModel!.timestamp!.toDate()),
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Kolors.greyColor,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 6,
                ),
                Row(
                  children: [
                    Expanded(
                      child: CustomText(
                        text: chatModel!.text,
                        fontFamily: Fonts.CONTENT_FONT,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Kolors.greyColor,
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(6),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Kolors.greyBlue,
                      ),
                      child: CustomText(
                        text: '${chatModel!.unseenMessagesCount!.toInt()}',
                        color: Colors.white,
                        fontFamily: Fonts.CONTENT_FONT,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 1,
                  color: Kolors.greyBlue,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
