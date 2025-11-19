// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:uuid/uuid.dart';

import '../../../app/routing/app_navigator.dart';
import '../../../config/di/di.dart';
import '../../../data/models/users_model.dart';
import '../../common_widgets/custom_text_field.dart';
import '../../common_widgets/rounded_cta_button.dart';
import '../../utils/custom_colors.dart';

class FormFieldWidget extends StatefulWidget {
  final String? name;
  final String? surname;
  final String? phoneNo;
  final String? fileNo;
  final String? birthday;
  final String? gender;
  final String? area;
  final String? seans;
  final String? tcNumber;
  final String? userId;
  final bool? isValid;
  final bool? isUpdate;

  const FormFieldWidget(
      {Key? key,
      this.name,
      this.surname,
      this.phoneNo,
      this.fileNo,
      this.birthday,
      this.gender,
      this.area,
      this.seans,
      this.tcNumber,
      this.userId,
      this.isValid,
      this.isUpdate})
      : super(key: key);

  @override
  State<FormFieldWidget> createState() => _FormFieldWidgetState();
}

class _FormFieldWidgetState extends State<FormFieldWidget> {
  TextEditingController name = TextEditingController();

  TextEditingController surname = TextEditingController();

  TextEditingController phoneNo = TextEditingController();

  TextEditingController fileNo = TextEditingController();

  TextEditingController birthday = TextEditingController();

  TextEditingController gender = TextEditingController();

  TextEditingController area = TextEditingController();

  TextEditingController seans = TextEditingController();

  TextEditingController tcNumber = TextEditingController();

  bool nameHasError = false;

  bool surnameHasError = false;

  bool phoneNoHasError = false;

  bool fileNoHasError = false;

  bool birthdayHasError = false;

  bool genderHasError = false;

  bool areaHasError = false;

  bool seansHasError = false;

  bool tcNumberHasError = false;

  final FocusNode nodeName = FocusNode();

  final FocusNode nodeSurname = FocusNode();

  final FocusNode nodePhone = FocusNode();

  final FocusNode nodeFileNo = FocusNode();

  final FocusNode nodeBirthday = FocusNode();

  final FocusNode nodeGender = FocusNode();

  final FocusNode nodeArea = FocusNode();

  final FocusNode nodeSeans = FocusNode();

  final FocusNode nodeTcNumber = FocusNode();

  var filter = RegExp(r'^[1-9]{1}[0-9]{9}[0,2,4,6,8]$');

  var maskFormatterTc = MaskTextInputFormatter(
      mask: '###########', filter: {"#": RegExp(r'^[0-9]')});
  var maskFormatterPhone = MaskTextInputFormatter(
      mask: '(ü*#) ### ## ##',
      filter: {
        "ü": RegExp(r'^5'),
        "*": RegExp(r'^[3-5]'),
        "#": RegExp(r'^[0-9]')
      });
  var maskFormatterDate = MaskTextInputFormatter(
      mask: '##/##/####', filter: {"#": RegExp(r'^[0-9]')});

  final navigator = inject<AppNavigator>();

  bool isValid = false;

  @override
  void initState() {
    print("form init");

    isValid = widget.isValid ?? false;
    name.text = widget.name ?? "";
    surname.text = widget.surname ?? "";
    phoneNo.text = widget.phoneNo ?? "";
    fileNo.text = widget.fileNo ?? "";
    birthday.text = dateSplitToString(widget.birthday ?? "");
    gender.text = widget.gender ?? "";
    area.text = widget.area ?? "";
    seans.text = widget.seans ?? "";
    tcNumber.text = widget.tcNumber ?? "";
    super.initState();
  }

  @override
  void dispose() {
    print("form dispose");

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Material(
            child: Column(
              children: [
                CustomTextField(
                  controller: name,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "";
                    } else {
                      name.text = value;
                      return null;
                    }
                  },
                  isValid: (value) {
                    nameHasError = value;
                  },
                  errorText: nameHasError,
                  textInputAction: TextInputAction.next,
                  label: "Ad",
                  onSubmitted: (String query) {
                    name.text = query;
                  },
                ),
                CustomTextField(
                  controller: surname,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "";
                    } else {
                      surname.text = value;
                      return null;
                    }
                  },
                  isValid: (value) {
                    surnameHasError = value;
                  },
                  textInputAction: TextInputAction.next,
                  label: "Soyad",
                  onSubmitted: (String query) {
                    surname.text = query;
                  },
                ),
                CustomTextField(
                  controller: tcNumber,
                  validator: (value) {
                    if (!(filter.hasMatch(value!))) {
                      return "Geçerli Bir T.C. Kimlik Numarası Giriniz.";
                    } else {
                      tcNumber.text = value;
                      return null;
                    }
                  },
                  isValid: (value) {
                    tcNumberHasError = value;
                  },
                  inputFormatters: [maskFormatterTc],
                  textInputAction: TextInputAction.next,
                  label: "T.C. Kimlik",
                  onSubmitted: (String query) {
                    tcNumber.text = query;
                  },
                ),
                CustomTextField(
                  controller: phoneNo,
                  inputFormatters: [maskFormatterPhone],
                  validator: (value) {
                    if (value!.isEmpty || value.length < 15) {
                      return "";
                    } else {
                      phoneNo.text = value;
                      return null;
                    }
                  },
                  isValid: (value) {
                    phoneNoHasError = value;
                  },
                  textInputAction: TextInputAction.next,
                  label: "Tel No",
                  hint: "(5xx) xxx xx xx",
                  onSubmitted: (String query) {
                    phoneNo.text = query;
                  },
                ),
                CustomTextField(
                  controller: fileNo,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "";
                    } else {
                      fileNo.text = value;
                      return null;
                    }
                  },
                  isValid: (value) {
                    fileNoHasError = value;
                  },
                  textInputAction: TextInputAction.next,
                  label: "Dosya No",
                  onSubmitted: (String query) {
                    fileNo.text = query;
                  },
                ),
                CustomTextField(
                  controller: birthday,
                  inputFormatters: [maskFormatterDate],
                  validator: (value) {
                    if (value!.isEmpty || value.length < 10) {
                      return "";
                    } else if (value.length > 9) {
                      try {
                        birthday.text = reverseDateSplitString(value);
                        return null;
                      } catch (e) {
                        return "Geçerli bir tarih giriniz.";
                      }
                    } else {
                      return "";
                    }
                  },
                  isValid: (value) {
                    birthdayHasError = value;
                  },
                  textInputAction: TextInputAction.next,
                  label: "Doğum Tarihi",
                  hint: "01/01/1900",
                  onSubmitted: (String query) {
                    birthday.text = query;
                  },
                ),
                CustomTextField(
                  controller: gender,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "";
                    } else {
                      gender.text = value;
                      return null;
                    }
                  },
                  isValid: (value) {
                    genderHasError = value;
                  },
                  textInputAction: TextInputAction.next,
                  label: "Cinsiyet",
                  onSubmitted: (String query) {
                    gender.text = query;
                  },
                ),
                CustomTextField(
                  controller: area,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "";
                    } else {
                      area.text = value;
                      return null;
                    }
                  },
                  isValid: (value) {
                    areaHasError = value;
                  },
                  textInputAction: TextInputAction.next,
                  label: "Saha",
                  onSubmitted: (String query) {
                    area.text = query;
                  },
                ),
                CustomTextField(
                  controller: seans,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "";
                    } else {
                      seans.text = value;
                      return null;
                    }
                  },
                  isValid: (value) {
                    seansHasError = value;
                  },
                  textInputAction: TextInputAction.done,
                  label: "Seans",
                  onSubmitted: (String query) {
                    seans.text = query;
                  },
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    RoundedCtaButton(
                      title: "Kaydet",
                      onClicked: () {
                        print(name.text);
                        print(birthday.text);
                        if (isValidate()) {
                          const uuid = Uuid();
                          var key = uuid.v1();
                          DateTime parsedDate = isValidDate(birthday.text);
                          birthday.text = parsedDate.toString();
                          UsersModel userModel = UsersModel(
                            siraNo: widget.isUpdate ?? false
                                ? widget.userId
                                : key.toString(),
                            id: widget.isUpdate ?? false
                                ? widget.userId
                                : key.toString(),
                            birthDate: parsedDate,
                            createDate: DateTime.now(),
                            dosyaNo: fileNo.text,
                            firstName: name.text,
                            gender: gender.text,
                            lastName: surname.text,
                            phoneNumber: phoneNo.text,
                            saha: area.text,
                            seans: seans.text,
                            tcKimlik: tcNumber.text,
                          );

                          navigator.popStack(context, result: userModel);

                          print("object");
                        } else {
                          ScaffoldMessenger.of(context)
                              .showSnackBar(const SnackBar(
                            content: Center(
                              child: Text('Tüm alanları kontrol ediniz'),
                            ),
                            backgroundColor: CustomColors.astral,
                            showCloseIcon: true,
                            closeIconColor: Colors.white,
                            dismissDirection: DismissDirection.down,
                          ));
                        }
                      },
                    ),
                    const SizedBox(width: 20),
                    RoundedCtaButton(
                      title: "İptal",
                      onClicked: () {
                        navigator.popStack(context);
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }

  bool isValidate() {
    if (nameHasError &&
        surnameHasError &&
        phoneNoHasError &&
        fileNoHasError &&
        birthdayHasError &&
        genderHasError &&
        areaHasError &&
        seansHasError &&
        tcNumberHasError) {
      return true;
    } else {
      return false;
    }
  }

  String reverseDateSplitString(String input) {
    final re = RegExp(r'[\/-]');
    return input.split(re).reversed.join('/');
  }

  String dateSplitToString(String input) {
    final re = RegExp(r'[\/-]');
    if (input.length > 9) {
      return input
          .substring(0, 10)
          .split(re)
          .reversed
          .join('/')
          .split(' ')
          .first;
    } else {
      return input;
    }
  }

  DateTime isValidDate(String dateStr) {
    print(birthday.text);
    RegExp dateRegex = RegExp(r'^\d{4}/\d{2}/\d{2}$');
    var data = !(dateRegex.hasMatch(dateStr))
        ? reverseDateSplitString(dateStr)
        : dateStr;
    if (dateRegex.hasMatch(data)) {
      List<int> parts = data.split('/').map(int.parse).toList();
      int year = parts[0];
      int month = parts[1];
      int day = parts[2];
      int firsDigit = year;

      while (firsDigit >= 10) {
        firsDigit ~/= 10;
      }

      if (DateTime(year, month, day).isBefore(DateTime.now())) {
        if (month > 12 ||
            month < 1 ||
            day < 1 ||
            day > 31 ||
            (month == 2 && day > 28) ||
            year < 1900 ||
            firsDigit > 2) {
          throw Exception("Hata !!!");
        } else {
          DateTime parsedDate = DateTime(year, month, day);
          return parsedDate;
        }
      } else {
        throw Exception("Hata !!!");
      }
    } else {
      throw Exception("Hatalı Format !!!");
    }
  }
}

// class DataPopStack {
//   final UsersModel userModel;
//   final bool isUpdate;
//   DataPopStack({
//     required this.userModel,
//     required this.isUpdate,
//   });
// }
