import 'package:bloc/bloc.dart';
import 'package:lawrenceprice_test/app/data/data_source.dart';
import 'package:lawrenceprice_test/app/data/model.dart';
import 'package:meta/meta.dart';

part 'user_registration_state.dart';

class UserRegistrationCubit extends Cubit<UserRegistrationState> {
  final DataSource dataSource;
  UserRegistrationCubit(this.dataSource) : super(UserRegistrationInitial());

  getGenderRatio() async {
    emit(UserRegistrationLoading());
    var res = await dataSource.getData();
    // print(res);
    emit(UserRegistrationGetSuccessful(res));
  }

  postDataToApi(UserData userData) async {
    emit(UserRegistrationLoading());
    final res = await dataSource.postData(userData);
    if (res != null) {
      emit(UserRegistrationSuccessful());
    }
  }
}
