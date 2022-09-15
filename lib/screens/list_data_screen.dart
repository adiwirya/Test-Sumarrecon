import 'package:flutter/material.dart';
import 'package:test234/screens/screens.dart';
import 'package:provider/provider.dart';
import 'package:test234/providers/providers.dart';

class ListDataScreen extends StatefulWidget {
  const ListDataScreen({super.key});
  static const routeName = '/list-data';

  @override
  State<ListDataScreen> createState() => _ListDataScreenState();
}

class _ListDataScreenState extends State<ListDataScreen> {
  var _isLoading = false;
  var _isInit = true;

  @override
  void didChangeDependencies() {
    if (_isInit) {
      setState(() {
        _isLoading = true;
      });
      Provider.of<BlockNomors>(context).fetchAndSetBloc().then((_) {
        setState(() {
          _isLoading = false;
        });
      });
    }
    _isInit = false;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('List Data'),
        ),
        body: _isLoading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : Column(children: []),
      ),
    );
  }
}
