import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lawrenceprice_test/app/data/model.dart';
import 'package:lawrenceprice_test/app/presentation/screens/attach_documents.dart';
import 'package:lawrenceprice_test/app/presentation/widgets/custom_dropdown.dart';
import 'package:lawrenceprice_test/app/presentation/widgets/header_description.dart';

import 'package:lawrenceprice_test/app/presentation/widgets/registration_textfield.dart';

class RegistrationScreen extends StatefulWidget {
  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  UserData userData = UserData();
  TextEditingController firstnameController = TextEditingController();

  TextEditingController lastnameController = TextEditingController();

  TextEditingController dateOfBirthController = TextEditingController();

  TextEditingController nationIdentityNumberController =
      TextEditingController();

  TextEditingController bankVerificationController = TextEditingController();

  String gender = '';

  @override
  Widget build(BuildContext context) {
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
          child: Builder(builder: (context) {
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const HeaderDescription(description: 'Bio Data'),
                  RegistrationTextField(
                    hintText: 'Firstname',
                    controller: firstnameController,
                  ),
                  RegistrationTextField(
                    hintText: 'Last name',
                    controller: lastnameController,
                  ),
                  RegistrationTextField(
                    hintText: 'Date of Birth',
                    controller: dateOfBirthController,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15.0, vertical: 15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Gender',
                          style: TextStyle(
                            fontSize: 22.0,
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          //Add inkwell, create a value and set to that value on pressed
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  gender = 'Male';
                                });
                              },
                              child: Text(
                                'MALE',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: gender == 'Male'
                                      ? Colors.black
                                      : Colors.grey,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 30.0,
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  gender = 'Female';
                                });
                              },
                              child: Text(
                                'FEMALE',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: gender == 'Female'
                                      ? Colors.black
                                      : Colors.grey,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  CustomDropDown(
                    hintText: 'Country',
                    selectedDropDown: 'country',
                    userData: userData,
                  ),
                  CustomDropDown(
                    hintText: 'Nationality',
                    selectedDropDown: 'nationality',
                    userData: userData,
                  ),
                  RegistrationTextField(
                      controller: nationIdentityNumberController,
                      hintText: 'National Identity Number'),
                  RegistrationTextField(
                      controller: bankVerificationController,
                      hintText: 'Bank Verification Number'),
                  CustomDropDown(
                    hintText: 'Local Government Area',
                    selectedDropDown: 'lga',
                    userData: userData,
                  ),
                  InkWell(
                    highlightColor: Colors.transparent,
                    onTap: () {
                      userData.firstname = firstnameController.text;
                      userData.lastname = lastnameController.text;
                      userData.dateOfBirth = dateOfBirthController.text;
                      userData.gender = gender;
                      userData.nationalIdentityNumber =
                          nationIdentityNumberController.text;
                      userData.bankVerificationNumber =
                          bankVerificationController.text;
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => AttachDocumentScreen(userData)));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Text(
                          'Next',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Color(0xFF0066FF),
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_outlined,
                          color: Color(0xFF0066FF),
                          size: 30.0,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
