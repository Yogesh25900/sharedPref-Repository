import 'package:shared_pref/model/user.dart';
import 'package:shared_pref/model/user_model.dart';

class LocalDataSource {
  List<UserModel> lstUsers = [
    UserModel(id: "1", fname: "Nikita", age: "19")
  ];

  
  bool addUser(UserModel user){
    lstUsers.add(user);
    return true;
    
  }

  List<UserModel> getAllUser(){
    return lstUsers;
  }
}
