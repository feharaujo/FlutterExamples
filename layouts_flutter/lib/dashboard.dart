import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  String username;

  Dashboard({@required this.username});

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  var dbItems = List<String>();

  @override
  void initState() {
    super.initState();
    _getItems();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome $widget.username"),
      ),
      body: dbItems.length == 0 ? _getLoadingWidget() : _getListBuilderWidget(),
    );
  }

  Widget _getLoadingWidget() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget _getListBuilderWidget() {
    return ListView.builder(
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(dbItems[index]),
          onTap: () => _itemPress(dbItems[index]),
        );
      },
      itemCount: dbItems.length,
    );
  }

  _itemPress(String item) {
    print("Item pressed: $item");
  }

  _getItems() async {
    await Future.delayed(Duration(seconds: 2));
    List<String> items = [
      "Luke Skywalker",
      "C-3PO",
      "Darth Vader",
      "Leia Skywalker",
      "R2-D2",
      "Owen Lars",
      "Beru Whitesun lars",
      "Darth Sidius",
      "Darth Plegeus"
    ];

    setState(() {
      dbItems.addAll(items);
    });
  }
}
