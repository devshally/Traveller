import 'package:flutter/material.dart';
import 'package:lawrenceprice_test/app/data/model.dart';

class CustomDropDown extends StatefulWidget {
  UserData userData = UserData();
  final String hintText;
  final String selectedDropDown;
  CustomDropDown({
    required this.userData,
    Key? key,
    required this.hintText,
    required this.selectedDropDown,
  }) : super(key: key);

  @override
  State<CustomDropDown> createState() => _CustomDropDownState();
}

enum SelectedDropDown { country, nationality, lga }

class _CustomDropDownState extends State<CustomDropDown> {
  List<String> country = ['Nigeria', 'Ghana', 'South Africa', 'Togo'];
  List<String> nationality = [
    'Nigerian',
    'Ghanian',
    'South African',
    'Togolese'
  ];
  List<String> lga = ['Eti Osa', 'Ikeja', 'Mushin', 'Surulere'];

  String? _chosenValue;

  @override
  Widget build(BuildContext context) {
    var selec = widget.selectedDropDown;
    List<String> _handleDropDown(selec) {
      if (selec == 'country') {
        return country;
      }
      if (selec == 'nationality') {
        return nationality;
      }
      if (selec == 'lga') {
        return lga;
      }
      return [''];
    }

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          border: Border.all(
            width: 1.0,
            color: Colors.grey,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15.0,
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              value: _chosenValue,
              hint: Text(widget.hintText),
              items: _handleDropDown(selec)
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? value) {
                // _chosenValue = value;
                if (selec == 'country') {
                  setState(() {
                    _chosenValue = value;
                  });
                  widget.userData.country = _chosenValue;
                }
                if (selec == 'nationality') {
                  setState(() {
                    _chosenValue = value;
                  });
                  widget.userData.nationality = _chosenValue;
                }
                if (selec == 'lga') {
                  setState(() {
                    _chosenValue = value;
                  });
                  widget.userData.localGovernmentArea = _chosenValue;
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}
