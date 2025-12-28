import 'package:shared_pref/di/di.dart';
import 'package:shared_pref/model/user_model.dart';
import 'package:shared_pref/repository/user_repository.dart';

void main(){
  initModule();
  UserModel user = UserModel(id: "2",
   fname: "Yogesh ", age: "19");



  UserRepository userRepository = getIt<UserRepository>();
  userRepository.addUser(user);

  //display all user
  print("this is all user print:${userRepository.getAllUser()}");
}