part of 'user_registration_cubit.dart';

@immutable
abstract class UserRegistrationState {}

class UserRegistrationInitial extends UserRegistrationState {}

class UserRegistrationLoading extends UserRegistrationState {}

class UserRegistrationGetSuccessful extends UserRegistrationState {
  Map<String, double> dataMap;
  UserRegistrationGetSuccessful(this.dataMap);
}

class UserRegistrationSuccessful extends UserRegistrationState {}

class UserRegistrationError extends UserRegistrationState {}
