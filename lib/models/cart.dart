import 'package:e_commerce_app/models/shoe.dart';
import 'package:flutter/widgets.dart';

class Cart extends ChangeNotifier{
  List <Shoe> shoeShop = [
    Shoe(
      name: 'Air Max 270', 
      price: '240', 
      imagePath: 'images/whitejordan.png', 
      description: 'Custom made'
    ),

    Shoe(
      name: 'Nike Vaporfly', 
      price: '300', 
      imagePath: 'images/runningshoe.png', 
      description: 'Premium Quality'
    ),

    Shoe(
      name: 'Air Max', 
      price: '280', 
      imagePath: 'images/jordan.png',
      description: 'Desgined for running'
    ),

    Shoe(
      name: 'Air Jordan', 
      price: '240', 
      imagePath: 'images/nikeshoe.png', 
      description: 'Top Quality sneekers'
    ),
  ];

  List<Shoe> userCart = [];

  List<Shoe> getShoeList() {
    return shoeShop;
  }

  List<Shoe> getUserCart() {
    return userCart;
  }

  void addItemToCart (Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  void removeItemFromCart (Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}