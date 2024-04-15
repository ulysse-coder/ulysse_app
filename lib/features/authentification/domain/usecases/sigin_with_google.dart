
import 'package:ulysse_app/core/typedef/typedef.dart';
import 'package:ulysse_app/core/usecases/usecases.dart';
import 'package:ulysse_app/features/authentification/domain/entities/user_entity.dart';
import 'package:ulysse_app/features/authentification/domain/repositories/authentication_repository.dart';

class SiginWithGoogle extends UseCaseWithoutParameters<UserEntity> {
  const SiginWithGoogle(this._repository);

  final AuthenticationRepository _repository;

  @override
  ResultFuture<UserEntity> call() => _repository.siginWithGoogle();
}