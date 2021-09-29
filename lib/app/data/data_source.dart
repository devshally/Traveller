import 'package:http/http.dart';
import 'package:lawrenceprice_test/app/data/model.dart';

class DataSource {
  Future<UserData> getData() async {
    final res =
        await get(Uri.parse('https://haypex.com.ng/lp/genderRatio.php'));
    if (res.statusCode == 200) {}
    return UserData.fromJson(res.body);
  }

  postData(UserData userData) async {
    final res = await post(
        Uri.parse(
          ' https://haypex.com.ng/lp/test.php',
        ),
        body: userData.toMap());
    if (res.statusCode == 200) {
      return res.body;
    } else {
      res.body;
    }
  }
}
