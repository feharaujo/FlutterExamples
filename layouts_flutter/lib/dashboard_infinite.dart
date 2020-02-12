import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class DogsList extends StatefulWidget {
  @override
  _DogsListState createState() => _DogsListState();
}

class _DogsListState extends State<DogsList> {
  var scrollController = ScrollController();
  var dogImages = List<String>();

  @override
  void initState() {
    super.initState();

    scrollController.addListener(() {
      if (scrollController.position.pixels ==
          scrollController.position.maxScrollExtent) {
        _fetchFivePuppies();
      }
    });

    _fetchFivePuppies();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Puppies list"),
      ),
      body:
          dogImages.length == 0 ? _getLoadingWidget() : _getListBuilderWidget(),
    );
  }

  Widget _getLoadingWidget() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget _getListBuilderWidget() {
    return ListView.builder(
      controller: scrollController,
      itemBuilder: (context, index) {
        return Container(
          constraints: BoxConstraints.tightFor(height: 250.0),
          child: Image.network(
            dogImages[index],
            fit: BoxFit.fitWidth,
          ),
        );
      },
      itemCount: dogImages.length,
    );
  }

  _itemPress(String item) {
    print("Item pressed: $item");
  }

  _fetch() async {
    final response = await http.get("https://dog.ceo/api/breeds/image/random");
    if (response.statusCode == 200) {
      setState(() {
        dogImages.add(json.decode(response.body)["message"]);
      });
    } else {
      throw Exception("Error on fetching new data");
    }
  }

  _fetchFivePuppies() {
    for (int i = 0; i < 5; i++) {
      _fetch();
    }
  }
}
