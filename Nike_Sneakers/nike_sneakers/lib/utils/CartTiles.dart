import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';
import 'package:nike_sneakers/Models/ShoesModel.dart';
import 'package:provider/provider.dart';

class CartTiles extends StatelessWidget {
  ShoesModel shoes;
  CartTiles({super.key, required this.shoes});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),topRight: Radius.circular(20))
      ),
      child: Container(
        // padding: EdgeInsets.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
           Row(
             children: [
               Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Image.asset(shoes.ImageUrl,height: 60,width: 60,),
            ),

            Column(
              children: [
                Text(shoes.name,style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                Text(shoes.price,style: TextStyle(fontSize: 18)),
              ],
            ),
             ],
           ),

            Consumer2(
              builder: (context, value, value2, child) => GestureDetector(
                onTap: () {
                  
                },
                child: Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(topRight: Radius.circular(20))
                  ),
                  child: Icon(Iconsax.shop_remove,color: Colors.white,),
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}