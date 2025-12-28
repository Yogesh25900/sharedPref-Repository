class UserModel {
  final String id, fname, age;

  UserModel({
    required this.id,
    required this.fname,
    required this.age,
  });

  @override
  String toString(){
    return "fname:$fname ,age:$age";
  }
}