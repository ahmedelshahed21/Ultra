class AuthSuccessModel {
  final String userId;
  final String? userLogo;
  final String userType;
  final String tokenType;
  final String token;
  final String tokenExpiresAt;
  final bool status;
  final int code;
  final String? messages;

  AuthSuccessModel({
    required this.userId,
    this.userLogo,
    required this.userType,
    required this.tokenType,
    required this.token,
    required this.tokenExpiresAt,
    required this.status,
    required this.code,
    this.messages,
  });

  factory AuthSuccessModel.fromJson(Map<String, dynamic> json) {
    return AuthSuccessModel(
      userId: json['payload']['user_id'],
      userLogo: json['payload']['user_logo'],
      userType: json['payload']['user_type'] == "custromer" ? "customer" : json['payload']['user_type'],
      tokenType: json['payload']['token_type'],
      token: json['payload']['token'],
      tokenExpiresAt: json['payload']['token_expires_at'],
      status: json['status'],
      code: json['code'],
      messages: json['messages'],
    );
  }
}
