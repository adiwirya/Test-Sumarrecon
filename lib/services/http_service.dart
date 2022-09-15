import 'package:http/http.dart';

class HttpService {

  Future<void> fetchListData() async {
    final response = await get(Uri.parse('https://trmobileapi.gadingemerald.com/tr/test/getBlokNomor'));
    print('response: ${response.body}');
  }
  
}