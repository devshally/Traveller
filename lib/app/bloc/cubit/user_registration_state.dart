part of 'user_registration_cubit.dart';

@immutable
abstract class UserRegistrationState {}

class UserRegistrationInitial extends UserRegistrationState {}

class UserRegistrationLoading extends UserRegistrationState {}

class UserRegistrationSuccessful extends UserRegistrationState {
  // final DataSource dataSource;
  // UserRegistrationSuccessful(this.dataSource);
}

class UserRegistrationError extends UserRegistrationState {}
