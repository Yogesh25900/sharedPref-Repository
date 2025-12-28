import 'package:shared_pref/data_source/local/local_data_source.dart';
import 'package:shared_pref/data_source/remote/remote_data_source.dart';
import 'package:shared_pref/model/user.dart';
import 'package:shared_pref/model/user_model.dart';

class UserRepository {

  final RemoteDataSource remoteDataSource ;
  final LocalDataSource localDataSource ;
  UserRepository({
    required this.remoteDataSource,
 required this.localDataSource});


  bool isNetwork = true;
  bool addUser(UserModel user){
    if(isNetwork){
      return remoteDataSource.addUser(user);
    }else{
      return localDataSource.addUser(user);
    }
  }

  List<UserModel> getAllUser(){
    if(isNetwork){
      return remoteDataSource.getAllUser();
    }
    else{
      return localDataSource.getAllUser();
    }
  }
}
