import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:chat/domain/chat.dart';
import 'package:chat/domain/i_inbox_repo.dart';
import 'package:core/core.dart';

import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'inbox_event.dart';
part 'inbox_state.dart';
part 'inbox_bloc.freezed.dart';

@injectable
class InboxBloc extends Bloc<InboxEvent, InboxState> {
  final IInboxRepository iInboxRepository;
  InboxBloc(this.iInboxRepository) : super(InboxState.initial());

  @override
  Stream<InboxState> mapEventToState(
    InboxEvent event,
  ) async* {
    // TODO: implement mapEventToState
    yield* event.map(
      fetchChats: (e) async* {
        yield state.copyWith(
          isLoading: true,
          failureOrSuccessOption: none(),
        );
        final postsListOption = await iInboxRepository.getChats();

        yield postsListOption.fold(
          (failure) => state.copyWith(
            failureOrSuccessOption: some(failure),
            isLoading: false,
          ),
          (list) => state.copyWith(
            chatsList: list,
            isLoading: false,
            failureOrSuccessOption: none(),
          ),
        );
      },
      fetchMoreChats: (e) async* {
        if (state.hasMore!) {
          final lastItem = state.chatsList!.last;
          final postsListOption = await iInboxRepository.getMoreChats(lastItem);

          yield postsListOption.fold(
              (failure) => state.copyWith(
                    failureOrSuccessOption: some(failure),
                    isLoading: false,
                  ), (list) {
            bool hasMore = true;
            if (list.length == Constants.CHATS_LIMIT) {
              hasMore = true;
            } else {
              hasMore = false;
            }
            final updatedList = List<ChatModel>.from(state.chatsList!)
              ..addAll(list);
            return state.copyWith(
              chatsList: updatedList,
              isLoading: false,
              failureOrSuccessOption: none(),
              hasMore: hasMore,
            );
          });
        }
      },
      newChatAdded: (e) async* {
        List<ChatModel> list = List<ChatModel>.from(state.chatsList!);
        for (int i = 0; i < list.length; i++) {
          ChatModel cm = list[i];
          if (cm.docId == e.chatModel!.docId) {
            list.remove(cm);
            break;
          }
        }
        list.insert(0, e.chatModel!);
        yield state.copyWith(
          chatsList: list,
        );
      },
    );
  }
}
