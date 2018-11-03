import 'package:json_annotation/json_annotation.dart';

part 'Token.g.dart';

@JsonSerializable()
class Token {
  String session;
  String user;
  int lifeTime;
  String jwt;
  String downPublicKey;
  String upPrivateKey;
  String status;

  Token(this.session, this.user, this.lifeTime, this.jwt,
      this.downPublicKey, this.upPrivateKey, this.status);

  factory Token.fromJson(Map<String, dynamic> json) => _$TokenFromJson(json);

  Map<String, dynamic> toJson() => _$TokenToJson(this);
}