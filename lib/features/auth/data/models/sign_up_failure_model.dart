class SignUpFailureModel {
  final List<dynamic> payload;
  final bool status;
  final int code;
  final Map<String, List<String>> messages;

  SignUpFailureModel({
    required this.payload,
    required this.status,
    required this.code,
    required this.messages,
  });

  factory SignUpFailureModel.fromJson(Map<String, dynamic> json) {
    return SignUpFailureModel(
      payload: json['payload'] ?? [],
      status: json['status'] ?? false,
      code: json['code'] ?? 400,
      messages: (json['messages'] as Map<String, dynamic>).map(
            (key, value) => MapEntry(key, List<String>.from(value)),
      ),
    );
  }
}
