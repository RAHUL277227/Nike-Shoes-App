import 'package:flutter/material.dart';
import 'package:nike_sneakers/Models/ShoesModel.dart';

class ShoesProvider extends ChangeNotifier{

  final Shoeslist = [
    ShoesModel(name: "Adidas", price: "200", ImageUrl: "lib/images/shoes1.png", des: "From retro-leaning styles"),
    ShoesModel(name: "Asics", price: "170", ImageUrl: "lib/images/shoes2.png", des: "The Asics Gel-Excite 9 is a budget-friendly"),
    ShoesModel(name: "Converse", price: "120", ImageUrl: "lib/images/shoes3.png", des: "All Star '70s High Top Sneakers"),
    ShoesModel(name: "Nike", price: "350", ImageUrl: "lib/images/shoes1.png", des: "Suffice to say Nike"),
  ];

  List<ShoesModel> cartlist= [];

  void addToCart(ShoesModel model){
    cartlist.add(model);
    notifyListeners();
  }

  void removeFormCart(ShoesModel model){
    cartlist.remove(model);
    notifyListeners();
  }

  List<ShoesModel> getCartList(){
    return cartlist;
  }

  void removeFormList(ShoesModel model){
    cartlist.remove(model);
  }

  

}