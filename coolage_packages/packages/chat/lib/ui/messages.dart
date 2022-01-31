import 'package:chat/application/inbox_bloc/inbox_bloc.dart';
import 'package:chat/domain/chat.dart';

import 'package:core/core.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'chat_tile.dart';

class MessagesPage extends StatelessWidget {
  const MessagesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<InboxBloc, InboxState>(
      listener: (context, state) {},
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: const PreferredSize(
              preferredSize: Size.fromHeight(60),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                // child: BaseAppBar(
                //   textColor: Colors.black,
                //   text: 'Messages',
                //   baseAppBarAction: BaseAppBarAction.canteen,
                // ),
              ),
            ),
            body: Container(
              child: Column(
                children: [
                  const SizedBox(
                    height: 12,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: SearchWidget(
                      text: "Search for People, Messages",
                      onTap: () {},
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  chatsList(state.chatsList!),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget chatsList(List<ChatModel> chatsList) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
        ),
        child: ListView.builder(
          itemCount: chatsList.length,
          itemBuilder: (context, index) {
            return ChatTile(
              chatModel: chatsList[index],
            );
          },
        ),
      ),
    );
  }
}
