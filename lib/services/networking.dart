import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {

  NetworkHelper(this.url);

  final String url;

  Future getData() async {
    http.Response response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      String data = response.body;
      //var longitude = jsonDecode(data)["coord"]['lon'];
      //print(longitude);
      //var weatherDescription = jsonDecode(data)['weather'][0]['description'];
      //print(weatherDescription);

      var decodedData = jsonDecode(data);//dynamic variable so we use var
      return decodedData;
    } else {
      print(response.statusCode);
    }
  }

}
