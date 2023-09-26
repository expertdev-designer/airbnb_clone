import 'package:airbnb/profile/user_profile/personal_information/phone_number_bottom_sheet.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

import '../../../common_widgets/country_code_input.dart';
import '../../../common_widgets/custom_button.dart';
import '../../../common_widgets/editable_text_fields.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/app_strings.dart';
import '../../../utils/app_styles.dart';

class PersonalInfo extends StatefulWidget {
  const PersonalInfo({super.key});

  @override
  State<PersonalInfo> createState() => _PersonalInfoState();
}

class _PersonalInfoState extends State<PersonalInfo> {
  bool isLegalNameEditingVisible = false;
  bool isEmailEditingVisible = false;
  bool isAddressEditingVisible = false;
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController addressController = TextEditingController();

  void toggleAddressEditing() {
    setState(() {
      isAddressEditingVisible = !isAddressEditingVisible;
    });
  }

  void toggleEmailEditing() {
    setState(() {
      isEmailEditingVisible = !isEmailEditingVisible;
    });
  }

  void toggleLegalNameEditing() {
    setState(() {
      isLegalNameEditingVisible = !isLegalNameEditingVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView( // Add SingleChildScrollView here
        child: Padding(
          padding: EdgeInsets.only(top: 50, left: 20, right: 20,),
         child: Builder(
           builder: (BuildContext context) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Text(
                Strings.personal_info,
                style: AppStyles.thirtyMedium,
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    Strings.legal_name,
                    style: AppStyles.mediumGreyBlue,
                  ),
                  TextButton(
                    onPressed: toggleLegalNameEditing,
                    child: Text(
                      isLegalNameEditingVisible ? Strings.cancel : Strings.edit,
                      style: AppStyles.underlinedGreyBlueSemibold,
                    ),
                  ),
                ],
              ),
              if (isLegalNameEditingVisible)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (isLegalNameEditingVisible)
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Text(
                          Strings.this_is_the_name_in_your_travel, // Add your desired text here
                          style: AppStyles.mediumGreyBlue,
                        ),
                      ),
                    EditableTextFields(
                      label: Strings.first_name,
                      initialValue: 'John', // Provide the initial value
                      isEditing: isLegalNameEditingVisible, // Pass the edit state
                      controller: firstNameController, // Pass the controller
                    ),
                    SizedBox(height: 20),
                    EditableTextFields(
                      label: Strings.last_name,
                      initialValue: 'Doe',
                      isEditing: isLegalNameEditingVisible,
                      controller: lastNameController,
                    ),
                    SizedBox(height: 20),
                    Container(
                        width: 105,
                        height: 57,
                        child: CustomButton(
                            text: Strings.save,
                            onPressed: () {},
                            textStyle: AppStyles.sixteenTextStyle,
                          backgroundColor: AppColors.light_black,
                          borderRadius: 11,
                        ),
                    )
                  ],
                ),
                Text(
                  Strings.john_doe,
                  style: AppStyles.greyfourteenStyle,
                ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    Strings.phone_number,
                    style: AppStyles.mediumGreyBlue,
                  ),
                  TextButton(
                    onPressed: () {
                      showModalBottomSheet(
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                        ),
                        context: context,
                        builder: (BuildContext context) {
                          return PhoneNumberBottomSheet();
                        },
                      );
                    },
                    child: Text(
                      Strings.add,
                      style: AppStyles.underlinedGreyBlueSemibold,
                    ),
                  ),
                ],
              ),
              Text(
                Strings.add_a_number_so_confirmed_guests,
                style: AppStyles.greyfourteenStyle,
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    Strings.email,
                    style: AppStyles.mediumGreyBlue,
                  ),
                  TextButton(
                    onPressed: toggleEmailEditing,
                    child: Text(
                      isEmailEditingVisible ? Strings.cancel : Strings.edit,
                      style: AppStyles.underlinedGreyBlueSemibold,
                    ),
                  ),
                ],
              ),
              if (isEmailEditingVisible)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (isEmailEditingVisible)
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Text(
                          Strings.this_is_the_name_in_your_travel, // Add your desired text here
                          style: AppStyles.mediumGreyBlue,
                        ),
                      ),
                    EditableTextFields(
                      label: Strings.email,
                      initialValue: Strings.j_gmail, // Provide the initial value
                      isEditing: isEmailEditingVisible, // Pass the edit state
                      controller: emailController, // Pass the controller
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: 105,
                      height: 57,
                      child: CustomButton(
                        text: Strings.save,
                        onPressed: () {},
                        textStyle: AppStyles.sixteenTextStyle,
                        backgroundColor: AppColors.light_black,
                        borderRadius: 11,
                      ),
                    )
                  ],
                ),
              Text(
                Strings.j_gmail,
                style: AppStyles.greyfourteenStyle,
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    Strings.address,
                    style: AppStyles.mediumGreyBlue,
                  ),
                  TextButton(
                    onPressed: toggleAddressEditing,
                    child: Text(
                      isAddressEditingVisible ? Strings.cancel : Strings.edit,
                      style: AppStyles.underlinedGreyBlueSemibold,
                    ),
                  ),
                ],
              ),
              if (isAddressEditingVisible)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (isAddressEditingVisible)
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Text(
                          Strings.use_a_permanent_address, // Add your desired text here
                          style: AppStyles.mediumGreyBlue,
                        ),
                      ),
                    EditableTextFields(
                      label: Strings.address_region,
                      initialValue: Strings.j_gmail, // Provide the initial value
                      isEditing: isAddressEditingVisible, // Pass the edit state
                      controller: addressController, // Pass the controller
                    ),
                    SizedBox(height: 20,),
                    EditableTextFields(
                      label: Strings.street,
                      initialValue: Strings.j_gmail, // Provide the initial value
                      isEditing: isAddressEditingVisible, // Pass the edit state
                      controller: addressController, // Pass the controller
                    ),
                    SizedBox(height: 20,),
                    EditableTextFields(
                      label: Strings.flat_suite_optional,
                      initialValue: Strings.j_gmail, // Provide the initial value
                      isEditing: isAddressEditingVisible, // Pass the edit state
                      controller: addressController, // Pass the controller
                    ),
                    SizedBox(height: 20,),
                    EditableTextFields(
                      label: Strings.city,
                      initialValue: Strings.j_gmail, // Provide the initial value
                      isEditing: isAddressEditingVisible, // Pass the edit state
                      controller: addressController, // Pass the controller
                    ),
                    SizedBox(height: 20,),
                    EditableTextFields(
                      label: Strings.country_optional,
                      initialValue: Strings.j_gmail, // Provide the initial value
                      isEditing: isAddressEditingVisible, // Pass the edit state
                      controller: addressController, // Pass the controller
                    ),
                    SizedBox(height: 20,),
                    EditableTextFields(
                      label: Strings.postcode_optional,
                      initialValue: Strings.j_gmail, // Provide the initial value
                      isEditing: isAddressEditingVisible, // Pass the edit state
                      controller: addressController, // Pass the controller
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: 105,
                      height: 57,
                      child: CustomButton(
                        text: Strings.save,
                        onPressed: () {},
                        textStyle: AppStyles.sixteenTextStyle,
                        backgroundColor: AppColors.light_black,
                        borderRadius: 11,
                      ),
                    )
                  ],
                ),
              Text(
                Strings.not_provided,
                style: AppStyles.greyfourteenStyle,
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    Strings.emergency_contact,
                    style: AppStyles.mediumGreyBlue,
                  ),
                  TextButton(
                    onPressed: () {

                    },
                    child: Text(
                      Strings.add,
                      style: AppStyles.underlinedGreyBlueSemibold,
                    ),
                  ),
                ],
              ),
              Text(
                Strings.not_provided,
                style: AppStyles.greyfourteenStyle,
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    Strings.government_id,
                    style: AppStyles.mediumGreyBlue,
                  ),
                  TextButton(
                    onPressed: () {

                    },
                    child: Text(
                      Strings.add,
                      style: AppStyles.underlinedGreyBlueSemibold,
                    ),
                  ),
                ],
              ),
              Text(
                Strings.not_provided,
                style: AppStyles.greyfourteenStyle,
              ),
            ],
          );
         },
        ),
      ),
      ),
    );
  }
}
