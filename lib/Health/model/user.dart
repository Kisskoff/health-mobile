
import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class User {
  String? name;
  String email ;
  String password;

  User({
    required this.email , required this.password,  this.name
});
}