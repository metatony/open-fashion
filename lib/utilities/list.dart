// ignore_for_file: prefer_final_fields

import 'package:open_fashion/exports.dart';

class NotifierState extends ChangeNotifier {
  //home page tabb bar  list
  List _tab = ['All', 'Apparel', 'Dress', 'Tshirt', 'Bag'];

  //drop downmenu tab bar lsit

  List _menuTab = ['WOMEN', 'MAN', 'KIDS'];

  //homepage product List

  List _allList = [
    {
      'title': '21WN reversible angora cardigan',
      'price': '\$120',
      'image': 'images/Rectangle 325.png',
      'header': 'LAMEREI',
    },
    {
      'title': '21WN reversible angora cardigan',
      'price': '\$120',
      'image': 'images/Rectangle 325 (2).png',
      'header': 'LAMEREI',
    },
    {
      'title': '21WN reversible angora cardigan',
      'price': '\$120',
      'image': 'images/Rectangle 325 (3).png',
      'header': 'LAMEREI',
    },
    {
      'title': 'Oblong bag',
      'price': '\$120',
      'image': 'images/Rectangle 325 (4).png',
      'header': 'LAMEREI',
    }
  ];

  //just for you product list carousel

  List _justForYou = [
    {
      'title': 'Harris Tweed Three button Jacket',
      'price': '\$120',
      'image': 'images/Rectangle 321.png',
    },
    {
      'title': 'Cashmere Blend Cropped Jacket SW1WJ285-AM',
      'price': '\$120',
      'image': 'images/Rectangle 321 (2).png',
    },
    {
      'title': 'Harris Tweed Three-button Jacket',
      'price': '\$120',
      'image': 'images/Rectangle 321 (1).png',
    },
    {
      'title': '1WN reversible angora cardigan',
      'price': '\$120',
      'image': 'images/Rectangle 321.png',
    }
  ];

  //dropdown menu list

  List _menuList = ['New', 'Apparel', 'Bag', 'Shoes', 'Beauty', 'Accessories'];

  int selectedImage = 0;

  List _tagList = ['Fashion', 'Promo', 'Policy', 'Lookbook', 'Specials'];

  // blog list

  List _blogList = [
    {
      'image': 'images/Rectangle 433.png',
      'title': '2021 Style Guide: The Biggest Fall Trends',
      'body':
          'The excitement of fall fashion is here and I’m already loving some of the trend forecasts ',
      'date': '4 days ago',
    },
    {
      'image': 'images/Rectangle 433 (1).png',
      'title': '3 Pairs of Denim You Won’t Believe',
      'body':
          'The excitement of fall fashion is here and I’m already loving some of the trend forecasts ',
      'date': '5 days ago'
    },
    {
      'image': 'images/Rectangle 433 (2).png',
      'title': '5 Fall Looks I’m Loving',
      'body':
          'The excitement of fall fashion is here and I’m already loving some of the trend forecasts ',
      'date': '01/11/2021'
    },
    {
      'image': 'images/Rectangle 433 (3).png',
      'title': '5 Fall Boot Trends You Need to Try',
      'body':
          'The excitement of fall fashion is here and I’m already loving some of the trend forecasts ',
      'date': '25/10/2021'
    },
    {
      'image': 'images/Rectangle 433 (4).png',
      'title': '2021 Style Guide: The Biggest Fall Trends',
      'body':
          'The excitement of fall fashion is here and I’m already loving some of the trend forecasts ',
      'date': '16/10/2021'
    },
    {
      'image': 'images/Rectangle 433 (5).png',
      'title': '3 Pairs of Denim You Won’t Believe',
      'body':
          'The excitement of fall fashion is here and I’m already loving some of the trend forecasts ',
      'date': '10/10/2021'
    },
  ];

  //list of cart items
  List _cartItems = [];

  //add items to cart
  void addToCart(int index) {
    _cartItems.add(_allList[index]);
    notifyListeners();
  }

  //remove items from cart
  void removeItem(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  //calculate total price
  String calculateTotalPrice() {
    double totalPrice = 0;
    for (int i = 0; i < _cartItems.length; i++) {
      totalPrice += double.parse(_cartItems[i]['price']);
    }
    return totalPrice.toStringAsFixed(2);
  }

  //to control text widget display when cart is empty
  int cartEmpty = 0;

  // getter methods

  get blogList => _blogList;
  get tab => _tab;
  get menuTab => _menuTab;
  get tagList => _tagList;
  get menuList => _menuList;
  get justForYou => _justForYou;
  get allList => _allList;
  get cartItems => _cartItems;
}
