part of core;

class WebViewPage extends StatefulWidget {
  final String? url;
  final bool? isCopyEnabled;
  const WebViewPage({
    @required this.url,
    this.isCopyEnabled = false,
  });

  @override
  _WebViewPageState createState() => _WebViewPageState();
}

class _WebViewPageState extends State<WebViewPage> {
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();

  @override
  void initState() {
    super.initState();
    if (kIsWeb) {
      Functions.launchURL(widget.url);
      Navigator.of(context).pop();
    }
    if (widget.url == null || widget.url!.isEmpty) {
      Fluttertoast.showToast(msg: "Invalid url");
    }
  }

  @override
  Widget build(BuildContext context) {
    if (kIsWeb) return Container();
    return Scaffold(
      backgroundColor: Kolors.greyWhite,
      appBar: AppBar(
        backgroundColor: Kolors.greyWhite,
        elevation: 0,
        actions: [
          if (widget.isCopyEnabled ?? false)
            GestureDetector(
              onTap: () {
                Clipboard.setData(ClipboardData(text: widget.url));
                Fluttertoast.showToast(msg: "Url copied to Clipboard");
              },
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 12),
                child: Icon(
                  Icons.copy_outlined,
                  color: Colors.white,
                ),
              ),
            ),
          const SizedBox(
            width: 20,
          ),
        ],
      ),
      body: Builder(builder: (BuildContext context) {
        return WebView(
          initialUrl: widget.url,
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController webViewController) {
            _controller.complete(webViewController);
          },
          navigationDelegate: (NavigationRequest request) async {
            if (request.url.startsWith('mailto') ||
                request.url.startsWith('tel:') ||
                request.url.startsWith('https://wa.me/')) {
              Functions.launchURL(request.url);
              print('blocking navigation to $request}');
              return NavigationDecision.prevent;
            } else if (!(await canLaunch(request.url))) {
              Fluttertoast.showToast(msg: "Invalid url found!");
            }
            Functions.launchURL(request.url);
            return NavigationDecision.prevent;
          },
        );
      }),
    );
  }
}
