import 'dart:convert';

import 'package:http/http.dart';
import 'package:lawrenceprice_test/app/data/model.dart';

class DataSource {
  getData() async {
    final res =
        await get(Uri.parse('https://haypex.com.ng/lp/genderRatio.php'));
    if (res.statusCode == 200) {}
    var data = json.decode(res.body);
    // print(data['Result']);
    // print(res.body);
    // print(data);
    var male = double.parse(data['Result'][2]['counter']);
    // print(male);
    var female = double.parse(data['Result'][1]['counter']);
    // print(female);
    return <String, double>{'male': male, 'female': female};
    // return (data['Result'] as List)
    //     .map((item) => UserData.fromMap(item))
    //     .toList();
  }

  postData(UserData userData) async {
    final res = await post(
        Uri.parse(
          'https://haypex.com.ng/lp/test.php',
        ),
        body: userData.toMap());
    if (res.statusCode == 200) {
      return res.body;
    } else {
      return res.body;
    }
  }
}
