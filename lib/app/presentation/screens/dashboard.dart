import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lawrenceprice_test/app/bloc/cubit/user_registration_cubit.dart';
import 'package:pie_chart/pie_chart.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.close,
            color: Colors.black,
            size: 30.0,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Map<String, double>
            BlocBuilder<UserRegistrationCubit, UserRegistrationState>(
              builder: (context, state) {
                if (state is UserRegistrationGetSuccessful) {
                  return PieChart(dataMap: state.dataMap);
                }
                if (state is UserRegistrationLoading) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                return const Text('Something went wrong');
              },
            ),
          ],
        ),
      ),
    );
  }
}
