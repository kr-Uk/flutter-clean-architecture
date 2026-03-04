import 'package:more_app/data/datasources/local/auth_local_datasource.dart';
import 'package:more_app/data/datasources/remote/auth_remote_datasource.dart';
import 'package:more_app/data/models/user_model.dart';
import 'package:more_app/domain/entities/user.dart';
import 'package:more_app/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;
  final AuthLocalDataSource localDataSource;

  AuthRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
  });

  @override
  Future<User> login({required String email, required String password}) async {
    final userModel = await remoteDataSource.login(
      email: email,
      password: password,
    );
    return userModel.toEntity();
  }

  @override
  Future<void> logout() async {
    await remoteDataSource.logout();
    await localDataSource.deleteToken();
  }

  @override
  Future<User?> getCurrentUser() async {
    final hasToken = await localDataSource.hasToken();
    if (!hasToken) return null;
    final userModel = await remoteDataSource.getCurrentUser();
    return userModel.toEntity();
  }

  @override
  Future<bool> isLoggedIn() => localDataSource.hasToken();
}
