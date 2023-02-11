
class UserModel{
  String name;
  String email;
  int phoneNo;
  String token;

  UserModel({required this.name,required this.email,required this.phoneNo,required this.token});


  factory UserModel.fromJson(Map<String, dynamic> data) {
    return UserModel(
        name: data['name'],
        email: data['email'],
        phoneNo: data['phoneNo'],
        token: data['token'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
      'phoneNo': phoneNo,
      'token': token,
    };
  }
}