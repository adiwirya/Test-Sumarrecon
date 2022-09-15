import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class BlockNomor {
  String blok;

  BlockNomor({required this.blok});
}

class BlockNomors with ChangeNotifier {
  List _items = [];

  List get items {
    return [..._items];
  }

  Future<void> fetchAndSetBloc() async {
    final url =
        Uri.parse('https://trmobileapi.gadingemerald.com/tr/test/getBlokNomor');
    final response = await http.get(url);
    var jsonData = json.decode(response.body);
    print(jsonData);
    final extractedData = json.decode(response.body) as Map<String, dynamic>;
    final List<BlockNomor> loadedBloc = [];

    _items = loadedBloc;
    notifyListeners();
  }
}
