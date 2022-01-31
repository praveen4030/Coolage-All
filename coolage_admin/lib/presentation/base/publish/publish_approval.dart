import 'package:blogs/blogs.dart';
import 'package:coolage_admin/presentation/base/publish/publish_header.dart';
import 'package:feed/feed.dart';
import 'package:flutter/material.dart';

class PublishApprovalPage extends StatefulWidget {
  const PublishApprovalPage({Key? key}) : super(key: key);

  @override
  _PublishApprovalPageState createState() => _PublishApprovalPageState();
}

class _PublishApprovalPageState extends State<PublishApprovalPage>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  int currentIndex = 0;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2)
      ..addListener(() {
        setState(() {
          currentIndex = _tabController!.index;
        });
        // callFunction();
      });
  }

  @override
  void dispose() {
    _tabController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
      ),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            PublishApprovalHeader(
              controller: _tabController,
              currentIndex: currentIndex,
            ),
          ];
        },
        body: Container(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Column(
            children: [
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: const [
                    PublishFeedPage(),
                    PublishBlogsPage(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
