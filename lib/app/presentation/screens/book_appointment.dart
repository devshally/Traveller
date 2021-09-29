import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lawrenceprice_test/app/bloc/cubit/user_registration_cubit.dart';
import 'package:lawrenceprice_test/app/data/model.dart';
import 'package:lawrenceprice_test/app/presentation/widgets/custom_bottom_sheet.dart';
import 'package:lawrenceprice_test/app/presentation/widgets/header_description.dart';

class BookAppointmentScreen extends StatefulWidget {
  UserData userData = UserData();
  BookAppointmentScreen(this.userData, {Key? key}) : super(key: key);

  @override
  State<BookAppointmentScreen> createState() => _BookAppointmentScreenState();
}

class _BookAppointmentScreenState extends State<BookAppointmentScreen> {
  String date = '';
  String time = '';
  @override
  Widget build(BuildContext context) {
    void _handleBottomSheet() {
      showModalBottomSheet(
          backgroundColor: Colors.transparent,
          context: context,
          builder: (context) {
            return const CustomButtomSheet();
          });
      BlocProvider.of<UserRegistrationCubit>(context).getGenderRatio();
    }

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Color(0xFF0066FF),
            size: 30.0,
          ),
        ),
        actions: const [
          Image(
            image: AssetImage('assets/notifications.png'),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
              left: 20.0, right: 20.0, top: 20.0, bottom: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HeaderDescription(description: 'Book Appointment'),
              const Padding(
                padding: EdgeInsets.only(top: 30.0, bottom: 20.0),
                child: Text(
                  'Book An Appointement',
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  border: Border.all(
                    width: 1.0,
                    color: Colors.grey,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: DateTimePicker(
                    type: DateTimePickerType.date,
                    dateMask: 'd MMM, yyyy',
                    initialValue: 'Day of Appointment',
                    firstDate: DateTime(2021),
                    lastDate: DateTime(2100),
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                    ),
                    onChanged: (String? value) {
                      setState(() {
                        date = value!;
                      });
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  border: Border.all(
                    width: 1.0,
                    color: Colors.grey,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: DateTimePicker(
                    type: DateTimePickerType.time,
                    timeLabelText: 'Time',
                    initialValue: '',
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                    ),
                    onChanged: (String? value) {
                      setState(() {
                        time = value!;
                      });
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xFF0066FF),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50.0, vertical: 15.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  onPressed: () {
                    widget.userData.appointmentDate = date;
                    widget.userData.appointmentTime = time;
                    BlocProvider.of<UserRegistrationCubit>(context)
                        .postDataToApi(widget.userData);
                    BlocProvider.of<UserRegistrationCubit>(context)
                        .getGenderRatio();
                    _handleBottomSheet();
                  },
                  child: const Text('Submit',
                      style: TextStyle(
                        fontSize: 16.0,
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
