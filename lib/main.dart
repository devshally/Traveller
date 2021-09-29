import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lawrenceprice_test/app/bloc/cubit/user_registration_cubit.dart';
import 'package:lawrenceprice_test/app/data/data_source.dart';
import 'package:lawrenceprice_test/app/presentation/screens/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserRegistrationCubit(DataSource()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Traveller',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const SplashScreen(),
      ),
    );
  }
}
