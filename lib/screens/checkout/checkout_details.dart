// ignore_for_file: prefer_const_constructors

import 'package:flutter_paystack/flutter_paystack.dart';
import 'package:open_fashion/screens/checkout/payment_sucess.dart';
import 'package:open_fashion/utilities/exports.dart';

class CheckoutDetails extends StatefulWidget {
  CheckoutDetails({super.key, required this.price});
  String? price;

  @override
  State<CheckoutDetails> createState() => _CheckoutDetailsState();
}

class _CheckoutDetailsState extends State<CheckoutDetails> {
  final _formKey = GlobalKey<FormState>();

  var publicKey = 'pk_test_xxx';

  final plugin = PaystackPlugin();
  String message = '';

  @override
  void initState() {
    super.initState();
    plugin.initialize(publicKey: publicKey);
  }

  void makePayments() async {
    Charge charge = Charge()
      ..amount = int.parse(widget.price.toString()) * 100
      ..reference = 'ref_${DateTime.now()}'
      ..email = emailController.text
      ..currency = 'USD';

    CheckoutResponse response = await plugin.checkout(
      context,
      method: CheckoutMethod.card, // Defaults to CheckoutMethod.selectable
      charge: charge,
    );

    if (response.status == true) {
      message = 'Payment Successful Ref: ${response.reference}';

      if (mounted) {}
      // ignore: use_build_context_synchronously
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
              builder: (context) => PaymentSuccess(message: message)),
          ModalRoute.withName('/'));
    } else {
      print(response.message);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: HomeDrawer(),
      appBar: MyAppBar(
          appBar: AppBar(),
          bgColor: Color(0xffE7EAEF),
          iconColor: Color.fromARGB(255, 26, 25, 25),
          logo: 'images/Logo.png',
          searchColor: Color.fromARGB(255, 26, 25, 25)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SafeArea(
          child: ListView(
            children: [
              SizedBox(height: 33.h),
              Center(
                  child: HeaderTitle(
                header: 'ADD SHIPPING ADDRESS',
                color: Colors.black,
              )),
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
          makePayments();
          if (_formKey.currentState!.validate()) {}
        },
        cta: 'PROCEED TO PAYMENT',
      ),
    );
  }
}
