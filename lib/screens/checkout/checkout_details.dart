// ignore_for_file: prefer_const_constructors

import 'package:open_fashion/utilities/exports.dart';
//import 'package:flutter_paystack/flutter_paystack.dart';

class CheckoutDetails extends StatefulWidget {
  const CheckoutDetails({super.key});

  @override
  State<CheckoutDetails> createState() => _CheckoutDetailsState();
}

class _CheckoutDetailsState extends State<CheckoutDetails> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: HomeDrawer(),
      appBar: MyAppBar(appBar: AppBar(), bgColor: Color(0xffE7EAEF), iconColor: Color.fromARGB(255, 26, 25, 25), logo: 'images/Logo.png', searchColor: Color.fromARGB(255, 26, 25, 25)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SafeArea(
          child: ListView(
            children: [
              SizedBox(height: 33.h),
              Center(child: HeaderTitle(header: 'ADD SHIPPING ADDRESS', color: Colors.white,)),
              SizedBox(height: 15.h),
              Center(child: Div()),
              SizedBox(height: 26.h),
              DetailsForm(formKey: _formKey),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CheckoutButton(
        onTap: () {
          if (_formKey.currentState!.validate()) {
            //makePayments();
            Navigator.push(
                context,
                PageTransition(
                  duration: Duration(milliseconds: 250),
                  type: PageTransitionType.leftToRight,
                  child: HomePage(),
                ));
          }
        },
        cta: 'ADD NOW',
      ),
    );
  }
}
