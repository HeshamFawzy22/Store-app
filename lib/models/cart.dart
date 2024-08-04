import 'package:flutter/cupertino.dart';
import 'package:sports/models/shoe.dart';

class Cart extends ChangeNotifier{
  // List of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Zoom Freak',
        price: '234',
        imagePath: 'lib/images/1.jpg',
        description: 'The forward-thinking design of his latest signature shoe.'),
    Shoe(
        name: 'Air Jordan',
        price: '220',
        imagePath: 'lib/images/2.jpg',
        description: 'You\'ve got the hops and the speed-lace up in shoes.'),
    Shoe(
        name: 'KD Treys',
        price: '240',
        imagePath: 'lib/images/3.jpg',
        description: 'A secure mid foot strap is suited for scoring binges.'),
    Shoe(
        name: 'Kyrie 6',
        price: '160',
        imagePath: 'lib/images/1.jpg',
        description: 'The forward-thinking design of his latest signature shoe'),
    Shoe(
        name: 'Zoom Freak',
        price: '230',
        imagePath: 'lib/images/2.jpg',
        description: 'A secure mid foot strap is suited for scoring binges.'),
  ];

  // list of items in user cart
  List<Shoe> shoeCart = [];

  // get list of shoes for sale
  List<Shoe> getShoeList(){
    return shoeShop;
  }

  // get cart
  List<Shoe> getShoeCart(){
    return shoeCart;
  }

  // add item to cart
  void addItemToCart(Shoe shoe){
    shoeCart.add(shoe);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(Shoe shoe){
    shoeCart.remove(shoe);
    notifyListeners();
  }
}
