// import 'dart:convert';

// import 'package:http/http.dart' as http;

// import '../model/user.dart';

// class ApiService {
//   // Future<User>
//   fetchData() async {
//     final response = await http.get('14314');

//     if (response.statusCode == 200) {
//       final Map<String, dynamic> data = jsonDecode(response.body);
//       return User(
//         email: data['email'],
//         password: '',
//       );
//     }
//   }
// }
