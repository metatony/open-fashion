// ignore_for_file: prefer_const_constructors


import '../../utilities/exports.dart';

TextEditingController firstNameController = TextEditingController();
TextEditingController lastNameController = TextEditingController();
TextEditingController addressController = TextEditingController();
TextEditingController phoneController = TextEditingController();
TextEditingController emailController = TextEditingController();

class DetailsForm extends StatelessWidget {
  const DetailsForm({
    super.key,
    required GlobalKey<FormState> formKey,
  }) : _formKey = formKey;

  final GlobalKey<FormState> _formKey;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: TextFormField(
                  controller: firstNameController,
                  keyboardType: TextInputType.name,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) =>
                      value == null || value.isEmpty ? 'enter your name' : null,
                  decoration: InputDecoration(
                    hintText: 'First name',
                  ),
                ),
              ),
              SizedBox(
                width: 20.w,
              ),
              Expanded(
                child: TextFormField(
                  controller: lastNameController,
                  keyboardType: TextInputType.name,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) => value == null || value.isEmpty
                      ? 'enter your lastname'
                      : null,
                  decoration: InputDecoration(
                    hintText: 'Last name',
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20.h),
          TextFormField(
            controller: addressController,
            keyboardType: TextInputType.streetAddress,
            validator: (value) => value == null || value.isEmpty
                ? 'enter your delivery address'
                : null,
            decoration: InputDecoration(
              hintText: 'House address',
            ),
          ),
          SizedBox(height: 20.h),
          TextFormField(
            controller: emailController,
            keyboardType: TextInputType.emailAddress,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: (value) =>
                value == null || value.isEmpty ? 'enter a your email' : null,
            decoration: InputDecoration(
              hintText: 'Email address',
            ),
          ),
          SizedBox(height: 20.h),
          TextFormField(
            controller: phoneController,
            keyboardType: TextInputType.number,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: (value) => value == null || value.isEmpty
                ? 'enter your phone number'
                : null,
            decoration: InputDecoration(
              hintText: 'Phone number',
            ),
          ),
        
        ],
      ),
    );
  }
}
