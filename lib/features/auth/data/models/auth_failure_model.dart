class AuthFailureModel {
  final bool status;
  final int code;
  final String messages;

  AuthFailureModel({
    required this.status,
    required this.code,
    required this.messages,
  });

  factory AuthFailureModel.fromJson(Map<String, dynamic> json) {
    return AuthFailureModel(
      status: json['status'],
      code: json['code'],
      messages: json['messages'],
    );
  }
}
