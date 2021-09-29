import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lawrenceprice_test/app/bloc/cubit/user_registration_cubit.dart';
import 'package:lawrenceprice_test/app/data/model.dart';
import 'package:pie_chart/pie_chart.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var dataMap =
        BlocProvider.of<UserRegistrationCubit>(context).getGenderRatio();
    return Scaffold(
      body: Column(
        children: [
          // Map<String, double>
          // PieChart(dataMap: dataMap),
        ],
      ),
    );
  }
}
