import 'package:get_it/get_it.dart';
import 'package:shared_pref/data_source/local/local_data_source.dart';
import 'package:shared_pref/data_source/remote/remote_data_source.dart';
import 'package:shared_pref/repository/user_repository.dart';

final getIt = GetIt.instance;


void initModule(){
  //remote as father 
  getIt.registerLazySingleton<RemoteDataSource>(() => RemoteDataSource());

  //local as mother
  getIt.registerLazySingleton<LocalDataSource>(()=> LocalDataSource());

  getIt.registerLazySingleton<UserRepository>(()=>UserRepository(
    remoteDataSource: getIt(), 
    localDataSource: getIt()));
   
}