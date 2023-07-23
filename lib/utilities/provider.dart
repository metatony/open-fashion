// ignore_for_file: prefer_final_fields


import 'package:open_fashion/utilities/exports.dart';

class NotifierState extends ChangeNotifier {
  
  //home page tabb bar  list
  List tab = ['All', 'Apparel', 'Dress', 'Tshirt', 'Bag'];

  //drop downmenu tab bar lsit

  List menuTab = ['WOMEN', 'MAN', 'KIDS'];

  //dropdown menu list

  List menuList = ['New', 'Apparel', 'Bag', 'Shoes', 'Beauty', 'Accessories'];

  int selectedImage = 0;

  List tagList = ['Fashion', 'Promo', 'Policy', 'Lookbook', 'Specials'];

  //list of cart items
  List cartItems = [];


  //add items to cart
  void addToCart(int index) {
    cartItems.add(categoryItems[index]);
    notifyListeners();
  }

  //remove items from cart
  void removeItem(int index) {
    cartItems.removeAt(index);
    notifyListeners();
  }

  //calculate total price
  int calculateTotalPrice() {
    int totalPrice = 0;
    for (int i = 0; i < cartItems.length; i++) {
      totalPrice += int.parse(cartItems[i]['price']);
    }
    return totalPrice;
  }


  List indicator = ['', '', ''];



}
