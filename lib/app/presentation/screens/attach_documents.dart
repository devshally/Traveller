import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lawrenceprice_test/app/data/model.dart';
import 'package:lawrenceprice_test/app/presentation/screens/book_appointment.dart';
import 'package:lawrenceprice_test/app/presentation/widgets/documentuploadwidget.dart';
import 'package:lawrenceprice_test/app/presentation/widgets/header_description.dart';

class AttachDocumentScreen extends StatefulWidget {
  UserData userData;
  AttachDocumentScreen(this.userData, {Key? key}) : super(key: key);

  @override
  State<AttachDocumentScreen> createState() => _AttachDocumentScreenState();
}

class _AttachDocumentScreenState extends State<AttachDocumentScreen> {
  String visaType = '';
  final ImagePicker _picker = ImagePicker();
  String? ninDocument;
  String? pvcDocument;
  String? medicalReport;

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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HeaderDescription(description: 'Visa Details'),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 15.0, vertical: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Type Of Visa',
                      style: TextStyle(
                        fontSize: 22.0,
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              visaType = 'ECOWAS';
                            });
                          },
                          child: Text(
                            'ECOWAS',
                            style: TextStyle(
                              fontSize: 16.0,
                              color: visaType == 'ECOWAS'
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
                              visaType = 'GLOBAL';
                            });
                          },
                          child: Text(
                            'GLOBAL',
                            style: TextStyle(
                              fontSize: 16.0,
                              color: visaType == 'GLOBAL'
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
              const Padding(
                padding: EdgeInsets.only(top: 50.0, bottom: 10.0),
                child: Text(
                  'Attach Documents',
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: const Color(0xFFE5E5E5),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      DocumentUploadWidget(
                        documentName: 'NATIONAL IDENTITY CARD',
                        onTap: () async {
                          final res = await _picker.pickImage(
                              source: ImageSource.gallery);
                          setState(() {
                            ninDocument = res!.path;
                          });
                        },
                      ),
                      DocumentUploadWidget(
                        documentName: 'PERMANENT VOTER\'S CARD',
                        onTap: () async {
                          final res = await _picker.pickImage(
                              source: ImageSource.gallery);
                          setState(() {
                            pvcDocument = res!.path;
                          });
                        },
                      ),
                      DocumentUploadWidget(
                        documentName: 'MEDICAL REPORT',
                        onTap: () async {
                          final res = await _picker.pickImage(
                              source: ImageSource.gallery);
                          setState(() {
                            medicalReport = res!.path;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
              const Spacer(),
              InkWell(
                highlightColor: Colors.transparent,
                onTap: () {
                  widget.userData.typeOfVisa = visaType;
                  widget.userData.nationalIdentityCard = ninDocument;
                  widget.userData.permantVotersCard = pvcDocument;
                  widget.userData.medicalReport = medicalReport;
                  print(widget.userData.toMap());
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) =>
                              BookAppointmentScreen(widget.userData)));
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
        ),
      ),
    );
  }
}
