import 'package:flutter/material.dart';
import 'package:nike_sneakers/Models/ShoesModel.dart';
import 'package:nike_sneakers/provider/ShoesProvider.dart';
import 'package:nike_sneakers/utils/CartTiles.dart';
import 'package:provider/provider.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ShoesProvider>(
      builder: (context, value, child) => 


      Column(
        children: [

          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text("MY CART",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),textAlign: TextAlign.start,),
          ),

          Expanded(
            child: ListView.builder(
              itemCount: value.cartlist.length,
              itemBuilder: (context, index) {
                ShoesModel myShoes = value.getCartList()[index];
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                  child: CartTiles(shoes: myShoes)
                );
              },
            ),
          )

        ],
      )


    );
  }
}