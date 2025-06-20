import 'package:http/http.dart' as http;

class ApiService {
  static var client = http.Client();

  static Future<dynamic> getUsers() async{
    Map<String, String> requestHeadrs ={
      'Content-Type': 'application/json'
    };

    var url = Uri.https("reqres.in", "/api/users");
    
    var response = await client.get(url, headers: requestHeadrs);

    if(response.statusCode == 200){
      print(response.body);
    }
    else{
      return null;
    }
  }
}