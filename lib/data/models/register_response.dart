
class RegisterResponse {
    final String? username;
    final String? email;

    RegisterResponse({
        this.username,
        this.email,
    });

    RegisterResponse copyWith({
        String? username,
        String? email,
    }) => 
        RegisterResponse(
            username: username ?? this.username,
            email: email ?? this.email,
        );

    factory RegisterResponse.fromJson(Map<String, dynamic> json) => RegisterResponse(
        username: json["username"],
        email: json["email"],
    );

    Map<String, dynamic> toJson() => {
        "username": username,
        "email": email,
    };
}
