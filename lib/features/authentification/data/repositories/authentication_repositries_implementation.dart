
import 'package:dartz/dartz.dart';
import 'package:ulysse_app/core/errors/db_exception.dart';
import 'package:ulysse_app/core/typedef/typedef.dart';
import 'package:ulysse_app/core/utilities/enum.dart';
import 'package:ulysse_app/features/authentification/data/data_sources/remote/authentication_remote_data_source.dart';
import 'package:ulysse_app/features/authentification/data/models/user_model.dart';
import 'package:ulysse_app/features/authentification/domain/entities/user_entity.dart';
import 'package:ulysse_app/features/authentification/domain/repositories/authentication_repository.dart';

class AuthenticationRepositoryImplementation implements AuthenticationRepository {
  const AuthenticationRepositoryImplementation(this._remoteDataSource,);

  final AuthenticationRemoteDataSource _remoteDataSource;

  @override
  ResultBool checkIfUserExist(String uid, UserRole role) async {
    try {
      final result = await _remoteDataSource.checkIfUserExist(uid, role);
      return Right(result);
    } catch (e) {
      return Left(DBException(message: e.toString()));
    }
  }

  @override
  ResultVoid createUser(UserEntity user, UserRole role) async {
    try {
      await _remoteDataSource.createUser(user as UserModel, role);
      return const Right(null);
    } catch (e) {
      return Left(DBException(message: e.toString()));
    }
  }

  @override
  ResultFuture<UserModel> getCurrentUser(String uid, UserRole role) async {
    try {
      final result = await _remoteDataSource.getCurrentUser(uid, role);
      return Right(result);
    } catch (e) {
      return Left(DBException(message: e.toString()));
    }
  }

  @override
  ResultFuture<UserEntity> siginWithEmailAndPassword(String email, String password) async {
    try {
      final result = await _remoteDataSource.siginWithEmailAndPassword(email, password);
      return Right(result);
    } catch (e) {
      return Left(DBException(message: e.toString()));
    }
  }

  @override
  ResultFuture<UserEntity> siginWithFacebook() async {
    try {
      final result = await _remoteDataSource.siginWithFacebook();
      return Right(result);
    } catch (e) {
      return Left(DBException(message: e.toString()));
    }
  }

  @override
  ResultFuture<UserEntity> siginWithGoogle() async {
    try {
      final result = await _remoteDataSource.siginWithGoogle();
      return Right(result);
    } catch (e) {
      return Left(DBException(message: e.toString()));
    }
  }

  @override
  ResultVoid signOut() async {
    try {
      await _remoteDataSource.signOut();
      return const Right(null);
    } catch (e) {
      return Left(DBException(message: e.toString()));
    }
  }
}