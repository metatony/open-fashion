







  // NotifierState provider = NotifierState();

  // var publicKey = 'pk_test_xxx';

  // final plugin = PaystackPlugin();
  // String message = '';

  // @override
  // void initState() {
  //   super.initState();
  //   plugin.initialize(publicKey: publicKey);

  // }

  // void makePayments() async {

  //   int price = int.parse(provider.calculateTotalPrice());
  //   Charge charge = Charge()
  //     ..amount = price
  //     ..reference = 'ref_${DateTime.now()}'
  //     ..email = emailController.text
  //     ..currency = 'USD';

  //   CheckoutResponse response = await plugin.checkout(
  //     context,
  //     method: CheckoutMethod.card, // Defaults to CheckoutMethod.selectable
  //     charge: charge,
  //   );

  //   if (response.status == true) {
  //     message = 'Payment Successful Ref: ${response.reference}';

  //     if (mounted) {}
  //     // ignore: use_build_context_synchronously
  //     Navigator.pushAndRemoveUntil(
  //         context,
  //         MaterialPageRoute(
  //             builder: (context) => PaymentSuccess(message: message)),
  //         ModalRoute.withName('/'));
  //   } else {
  //     print(response.message);
  //   }
  // }