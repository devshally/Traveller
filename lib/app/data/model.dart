import 'dart:convert';
import 'dart:io';

class UserData {
  String? firstname;
  String? lastname;
  String? dateOfBirth;
  String? gender;
  String? country;
  String? nationality;
  String? nationalIdentityNumber;
  String? bankVerificationNumber;
  String? localGovernmentArea;
  String? typeOfVisa;
  String? appointmentDate;
  String? appointmentTime;
  String? nationalIdentityCard;
  String? permantVotersCard;
  String? medicalReport;

  UserData({
    this.firstname,
    this.lastname,
    this.dateOfBirth,
    this.gender,
    this.country,
    this.nationality,
    this.nationalIdentityNumber,
    this.bankVerificationNumber,
    this.localGovernmentArea,
    this.typeOfVisa,
    this.appointmentDate,
    this.appointmentTime,
    this.nationalIdentityCard,
    this.permantVotersCard,
    this.medicalReport,
  });

  UserData copyWith({
    String? firstname,
    String? lastname,
    String? dateOfBirth,
    String? gender,
    String? country,
    String? nationality,
    String? nationalIdentityNumber,
    String? bankVerificationNumber,
    String? localGovernmentArea,
    String? typeOfVisa,
    String? appointmentDate,
    String? appointmentTime,
    String? nationalIdentityCard,
    String? permantVotersCard,
    String? medicalReport,
  }) {
    return UserData(
      firstname: firstname ?? this.firstname,
      lastname: lastname ?? this.lastname,
      dateOfBirth: dateOfBirth ?? this.dateOfBirth,
      gender: gender ?? this.gender,
      country: country ?? this.country,
      nationality: nationality ?? this.nationality,
      nationalIdentityNumber:
          nationalIdentityNumber ?? this.nationalIdentityNumber,
      bankVerificationNumber:
          bankVerificationNumber ?? this.bankVerificationNumber,
      localGovernmentArea: localGovernmentArea ?? this.localGovernmentArea,
      typeOfVisa: typeOfVisa ?? this.typeOfVisa,
      appointmentDate: appointmentDate ?? this.appointmentDate,
      appointmentTime: appointmentTime ?? this.appointmentTime,
      nationalIdentityCard: nationalIdentityCard ?? this.nationalIdentityCard,
      permantVotersCard: permantVotersCard ?? this.permantVotersCard,
      medicalReport: medicalReport ?? this.medicalReport,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'firstname': firstname,
      'lastname': lastname,
      'dateOfBirth': dateOfBirth,
      'gender': gender,
      'country': country,
      'nationality': nationality,
      'nationalIdentityNumber': nationalIdentityNumber,
      'bankVerificationNumber': bankVerificationNumber,
      'localGovernmentArea': localGovernmentArea,
      'typeOfVisa': typeOfVisa,
      'appointmentDate': appointmentDate,
      'appointmentTime': appointmentTime,
      'nationalIdentityCard': nationalIdentityCard,
      'permantVotersCard': permantVotersCard,
      'medicalReport': medicalReport,
    };
  }

  factory UserData.fromMap(Map<String, dynamic> map) {
    return UserData(
      firstname: map['firstname'],
      lastname: map['lastname'],
      dateOfBirth: map['dateOfBirth'],
      gender: map['gender'],
      country: map['country'],
      nationality: map['nationality'],
      nationalIdentityNumber: map['nationalIdentityNumber'],
      bankVerificationNumber: map['bankVerificationNumber'],
      localGovernmentArea: map['localGovernmentArea'],
      typeOfVisa: map['typeOfVisa'],
      appointmentDate: map['appointmentDate'],
      appointmentTime: map['appointmentTime'],
      nationalIdentityCard: map['nationalIdentityCard'],
      permantVotersCard: map['permantVotersCard'],
      medicalReport: map['medicalReport'],
    );
  }

  String toJson() => json.encode(toMap());

  factory UserData.fromJson(String source) =>
      UserData.fromMap(json.decode(source));

  @override
  String toString() {
    return 'UserData(firstname: $firstname, lastname: $lastname, dateOfBirth: $dateOfBirth, gender: $gender, country: $country, nationality: $nationality, nationalIdentityNumber: $nationalIdentityNumber, bankVerificationNumber: $bankVerificationNumber, localGovernmentArea: $localGovernmentArea, typeOfVisa: $typeOfVisa, appointmentDate: $appointmentDate, appointmentTime: $appointmentTime, nationalIdentityCard: $nationalIdentityCard, permantVotersCard: $permantVotersCard, medicalReport: $medicalReport)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is UserData &&
        other.firstname == firstname &&
        other.lastname == lastname &&
        other.dateOfBirth == dateOfBirth &&
        other.gender == gender &&
        other.country == country &&
        other.nationality == nationality &&
        other.nationalIdentityNumber == nationalIdentityNumber &&
        other.bankVerificationNumber == bankVerificationNumber &&
        other.localGovernmentArea == localGovernmentArea &&
        other.typeOfVisa == typeOfVisa &&
        other.appointmentDate == appointmentDate &&
        other.appointmentTime == appointmentTime &&
        other.nationalIdentityCard == nationalIdentityCard &&
        other.permantVotersCard == permantVotersCard &&
        other.medicalReport == medicalReport;
  }

  @override
  int get hashCode {
    return firstname.hashCode ^
        lastname.hashCode ^
        dateOfBirth.hashCode ^
        gender.hashCode ^
        country.hashCode ^
        nationality.hashCode ^
        nationalIdentityNumber.hashCode ^
        bankVerificationNumber.hashCode ^
        localGovernmentArea.hashCode ^
        typeOfVisa.hashCode ^
        appointmentDate.hashCode ^
        appointmentTime.hashCode ^
        nationalIdentityCard.hashCode ^
        permantVotersCard.hashCode ^
        medicalReport.hashCode;
  }
}
