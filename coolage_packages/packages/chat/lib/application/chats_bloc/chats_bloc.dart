import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:chat/domain/chat.dart';
import 'package:chat/domain/i_chat_repo.dart';
import 'package:chat/domain/message.dart';
import 'package:core/core.dart';

import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'chats_event.dart';
part 'chats_state.dart';
part 'chats_bloc.freezed.dart';

@injectable
class ChatsBloc extends Bloc<ChatsEvent, ChatsState> {
  final IChatRepository iChatRepository;
  ChatsBloc(this.iChatRepository) : super(ChatsState.initial());

  @override
  Stream<ChatsState> mapEventToState(
    ChatsEvent event,
  ) async* {
    // TODO: implement mapEventToState
    yield* event.map(
      getMessages: (e) async* {
        yield state.copyWith(
          isLoading: false,
          failureOrSuccessOption: none(),
        );
        final messagesListOption =
            await iChatRepository.getMessages(e.chatModel!);

        yield messagesListOption.fold(
          (failure) => state.copyWith(
            failureOrSuccessOption: some(failure),
            isLoading: false,
          ),
          (list) => state.copyWith(
            messagesList: list,
            isLoading: false,
            failureOrSuccessOption: none(),
            hasMore: true,
          ),
        );
      },
      getMoreMessages: (e) async* {
        if (state.hasMore!) {
          yield state.copyWith(
            isAddingMoreLoading: true,
            failureOrSuccessOption: none(),
          );
          final lastItem = state.messagesList!.last;
          final postsListOption =
              await iChatRepository.getMoreMessages(e.chatModel!, lastItem);

          yield postsListOption.fold(
              (failure) => state.copyWith(
                    failureOrSuccessOption: some(failure),
                    isAddingMoreLoading: false,
                  ), (list) {
            bool hasMore = true;
            if (list.length == Constants.MESSAGES_LIMIT) {
              hasMore = true;
            } else {
              hasMore = false;
            }
            final List<MessageModel> updatedList =
                List.from(state.messagesList!)..addAll(list);
            return state.copyWith(
              messagesList: updatedList,
              hasMore: hasMore,
              isAddingMoreLoading: false,
              failureOrSuccessOption: none(),
            );
          });
        }
      },
      sendMessage: (e) async* {
        final opt = await iChatRepository.sendMessage(
          e.chatModel!,
          e.message!,
          e.type!,
        );
        yield opt.fold(
          (failure) => state.copyWith(),
          (_) => state.copyWith(),
        );
      },
      sendFile: (e) async* {
        final opt = await iChatRepository.sendFile(
          e.chatModel!,
          e.file!,
        );

        yield opt.fold(
          (failure) => state.copyWith(),
          (url) {
            iChatRepository.sendMessage(
              e.chatModel!,
              url,
              e.type!,
            );
            return state.copyWith();
          },
        );
      },
      addNewMessage: (e) async* {
        List<MessageModel> list = List.from(state.messagesList!);
        list.insert(0, e.messageModel!);
        yield state.copyWith(
          messagesList: list,
        );
      },
    );
  }
}
