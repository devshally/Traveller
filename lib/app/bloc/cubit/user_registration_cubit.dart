import 'package:bloc/bloc.dart';
import 'package:lawrenceprice_test/app/data/data_source.dart';
import 'package:lawrenceprice_test/app/data/model.dart';
import 'package:meta/meta.dart';

part 'user_registration_state.dart';

class UserRegistrationCubit extends Cubit<UserRegistrationState> {
  final DataSource dataSource;
  UserRegistrationCubit(this.dataSource) : super(UserRegistrationInitial());

  getGenderRatio() async {
    var res = await dataSource.getData();
    print(res.runtimeType);
    return res;
  }
}
