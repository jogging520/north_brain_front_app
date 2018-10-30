import 'package:json_annotation/json_annotation.dart';

part 'Token.g.dart';

@JsonSerializable()
class Token {
  String session;
  String user;
  int lifeTime;
  String jwt;
  @JsonKey(nullable: true)
  String downPublicKey;
  String downPublicKeyExponent;
  String downPublicKeyModulus;
  @JsonKey(nullable: true)
  String upPrivateKey;
  String upPrivateKeyExponent;
  String upPrivateKeyModulus;
  String upPrivateKeyPrimeP;
  String upPrivateKeyPrimeQ;
  String status;

  Token(this.session, this.user, this.lifeTime, this.jwt,
      this.downPublicKeyExponent, this.downPublicKeyModulus,
      this.upPrivateKeyExponent, this.upPrivateKeyModulus,
      this.upPrivateKeyPrimeP, this.upPrivateKeyPrimeQ, this.status,
      {this.downPublicKey, this.upPrivateKey}
      );

  factory Token.fromJson(Map<String, dynamic> json) => _$TokenFromJson(json);

  Map<String, dynamic> toJson() => _$TokenToJson(this);
}