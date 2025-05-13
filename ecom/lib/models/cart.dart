import 'package:ecom/models/shoe.dart';
import 'package:flutter/cupertino.dart';

class Cart extends ChangeNotifier {
  // list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: "Zoom Freak",
      price: "130",
      imagePath: 'lib/images/img_1.png',
      description: "The forward-thinking design of his latest signature shoe.",
    ),
    Shoe(
      name: "Sharknado",
      price: "150",
      imagePath: 'lib/images/img_2.png',
      description: "It has teeth.",
    ),
    Shoe(
      name: "Dark Strider",
      price: "130",
      imagePath: 'lib/images/img_3.png',
      description: "Channel the shinobi inside you.",
    ),
    Shoe(
      name: "Crew Bro",
      price: "230",
      imagePath: 'lib/images/img_4.png',
      description: "Be your own crew.",
    ),
    Shoe(
      name: "Crocodile",
      price: "384",
      imagePath: 'lib/images/img_5.png',
      description: "The dandee to your foot.",
    ),
  ];

  // list of items in user cart
  List<Shoe> userCart = [];

  // get list of items for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getCart() {
    return userCart;
  }

  // add items to cart
  void addItem(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove item from cart
  void removeItem(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
