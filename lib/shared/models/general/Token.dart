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

  @override
  int get hashCode => session.hashCode ^ user.hashCode ^ lifeTime.hashCode
      ^ jwt.hashCode ^ downPublicKey.hashCode ^ upPrivateKey.hashCode ^ status.hashCode;

  @override
  bool operator ==(Object other) =>
    identical(this, other) ||
      other is Token &&
      runtimeType == other.runtimeType &&
      session == other.session &&
      user == other.user &&
      lifeTime == other.lifeTime &&
      jwt == other.jwt &&
      downPublicKey == other.downPublicKey &&
      upPrivateKey == other.upPrivateKey &&
      status == other.status;
}