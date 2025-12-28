import 'package:shared_pref/data_source/local/local_data_source.dart';
import 'package:shared_pref/data_source/remote/remote_data_source.dart';
import 'package:shared_pref/di/di.dart';
import 'package:shared_pref/model/user.dart';
import 'package:shared_pref/model/user_model.dart';
import 'package:shared_pref/repository/user_repository.dart';

void main(){
  initModule();
  UserRepository userRepository = getIt<UserRepository>();
  List<UserModel> lstuser = userRepository.getAllUser();
  print(lstuser);
}