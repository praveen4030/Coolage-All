import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coolage_merchant/application/canteen/menu/canteen_menu_bloc.dart';
import 'package:coolage_merchant/domain/base/canteen/canteen_items_helper.dart';
import 'package:coolage_merchant/domain/base/canteen/item_model.dart';
import 'package:coolage_merchant/domain/core/helpers/getter.dart';
import 'package:coolage_merchant/presentation/base/menu/dialogs/categories_dialog.dart';
import 'package:coolage_merchant/presentation/base/menu/widgets/menu_header.dart';
import 'package:coolage_merchant/presentation/base/menu/widgets/menu_item_tile.dart';
import 'package:coolage_merchant/presentation/base/menu/widgets/menu_items_list.dart';
import 'package:coolage_merchant/presentation/core/theme/colors.dart';
import 'package:coolage_merchant/presentation/core/theme/fonts.dart';
import 'package:coolage_merchant/presentation/core/widgets/custom_text.dart';
import 'package:coolage_merchant/presentation/core/widgets/gradient_background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  void initState() {
    _autoScrollController = AutoScrollController(
      viewportBoundaryGetter: () =>
          Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
      axis: scrollDirection,
    )..addListener(() => {});
    super.initState();
  }

  AutoScrollController? _autoScrollController;
  final scrollDirection = Axis.vertical;

  Future _scrollToIndex(int index) async {
    await _autoScrollController!
        .scrollToIndex(index, preferPosition: AutoScrollPosition.begin);
    _autoScrollController!.highlight(index);
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CanteenMenuBloc, CanteenMenuState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: const PreferredSize(
            preferredSize: Size.fromHeight(80),
            child: MenuHeader(),
          ),
          body: RefreshIndicator(
            onRefresh: () async {
              context.read<CanteenMenuBloc>().add(CanteenMenuEvent.getMenu(
                  Getters.getCurrentCanteenId(context)));
            },
            child: state.isMenuLoading!
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : menuListWidget(state.menuItemsList!),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          floatingActionButton: FloatingActionButton.extended(
              backgroundColor: Kolors.greyBlack,
              onPressed: () async {
                await showDialog(
                    context: context,
                    builder: (context) {
                      return CategoriesDialog(
                        categoriesList:
                            CanteenItemsHelper.getMenuCategoriesList(
                                state.menuItemsList),
                        onTap: (int index) {
                          _scrollToIndex(index);
                        },
                      );
                    });
              },
              label: Container(
                child: Row(
                  children: const [
                    Icon(
                      Icons.menu_outlined,
                      color: Colors.white,
                      size: 24,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    CustomText(
                      text: 'BROWSE MENU',
                      color: Colors.white,
                      fontFamily: Fonts.HEADING_FONT,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    )
                  ],
                ),
              )),
        );
      },
    );
  }

  Widget menuListWidget(List<ItemModel> itemsList) {
    return FutureBuilder(
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return snapshot.data as Widget;
        }
        return Container(
          child: const Center(
            child: Text("Loading..."),
          ),
        );
      },
      future: buildHeavyWidget(itemsList),
    );
  }

  Future<Widget> buildHeavyWidget(List<ItemModel> itemsList) async {
    // build and return heavy widget
    return MenuList(
      menuItemsList: itemsList,
      autoScrollController: _autoScrollController,
    );
  }
}
