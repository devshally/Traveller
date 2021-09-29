import 'dart:convert';
import 'dart:io';

class UserData {
  String? firstname;
  String? lastname;
  String? dateOfDate;
  String? gender;
  String? country;
  String? nationality;
  String? nationalIdentityNumber;
  String? bankVerificationNumber;
  String? localGovernmentArea;
  String? typeOfVisa;
  File? nationalIdentityCard;
  File? permantVotersCard;
  File? medicalReport;

  UserData({
    required this.firstname,
    required this.lastname,
    required this.dateOfDate,
    required this.gender,
    required this.country,
    required this.nationality,
    required this.nationalIdentityNumber,
    required this.bankVerificationNumber,
    required this.localGovernmentArea,
    required this.typeOfVisa,
    required this.nationalIdentityCard,
    required this.permantVotersCard,
    required this.medicalReport,
  });

  UserData copyWith({
    String? firstname,
    String? lastname,
    String? dateOfDate,
    String? gender,
    String? country,
    String? nationality,
    String? nationalIdentityNumber,
    String? bankVerificationNumber,
    String? localGovernmentArea,
    String? typeOfVisa,
    File? nationalIdentityCard,
    File? permantVotersCard,
    File? medicalReport,
  }) {
    return UserData(
      firstname: firstname ?? this.firstname,
      lastname: lastname ?? this.lastname,
      dateOfDate: dateOfDate ?? this.dateOfDate,
      gender: gender ?? this.gender,
      country: country ?? this.country,
      nationality: nationality ?? this.nationality,
      nationalIdentityNumber:
          nationalIdentityNumber ?? this.nationalIdentityNumber,
      bankVerificationNumber:
          bankVerificationNumber ?? this.bankVerificationNumber,
      localGovernmentArea: localGovernmentArea ?? this.localGovernmentArea,
      typeOfVisa: typeOfVisa ?? this.typeOfVisa,
      nationalIdentityCard: nationalIdentityCard ?? this.nationalIdentityCard,
      permantVotersCard: permantVotersCard ?? this.permantVotersCard,
      medicalReport: medicalReport ?? this.medicalReport,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'firstname': firstname,
      'lastname': lastname,
      'dateOfDate': dateOfDate,
      'gender': gender,
      'country': country,
      'nationality': nationality,
      'nationalIdentityNumber': nationalIdentityNumber,
      'bankVerificationNumber': bankVerificationNumber,
      'localGovernmentArea': localGovernmentArea,
      'typeOfVisa': typeOfVisa,
      'nationalIdentityCard': nationalIdentityCard,
      'permantVotersCard': permantVotersCard,
      'medicalReport': medicalReport,
    };
  }

  factory UserData.fromMap(Map<String, dynamic> map) {
    return UserData(
      firstname: map['firstname'],
      lastname: map['lastname'],
      dateOfDate: map['dateOfDate'],
      gender: map['gender'],
      country: map['country'],
      nationality: map['nationality'],
      nationalIdentityNumber: map['nationalIdentityNumber'],
      bankVerificationNumber: map['bankVerificationNumber'],
      localGovernmentArea: map['localGovernmentArea'],
      typeOfVisa: map['typeOfVisa'],
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
    return 'UserData(firstname: $firstname, lastname: $lastname, dateOfDate: $dateOfDate, gender: $gender, country: $country, nationality: $nationality, nationalIdentityNumber: $nationalIdentityNumber, bankVerificationNumber: $bankVerificationNumber, localGovernmentArea: $localGovernmentArea, typeOfVisa: $typeOfVisa, nationalIdentityCard: $nationalIdentityCard, permantVotersCard: $permantVotersCard, medicalReport: $medicalReport)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is UserData &&
        other.firstname == firstname &&
        other.lastname == lastname &&
        other.dateOfDate == dateOfDate &&
        other.gender == gender &&
        other.country == country &&
        other.nationality == nationality &&
        other.nationalIdentityNumber == nationalIdentityNumber &&
        other.bankVerificationNumber == bankVerificationNumber &&
        other.localGovernmentArea == localGovernmentArea &&
        other.typeOfVisa == typeOfVisa &&
        other.nationalIdentityCard == nationalIdentityCard &&
        other.permantVotersCard == permantVotersCard &&
        other.medicalReport == medicalReport;
  }

  @override
  int get hashCode {
    return firstname.hashCode ^
        lastname.hashCode ^
        dateOfDate.hashCode ^
        gender.hashCode ^
        country.hashCode ^
        nationality.hashCode ^
        nationalIdentityNumber.hashCode ^
        bankVerificationNumber.hashCode ^
        localGovernmentArea.hashCode ^
        typeOfVisa.hashCode ^
        nationalIdentityCard.hashCode ^
        permantVotersCard.hashCode ^
        medicalReport.hashCode;
  }
}
