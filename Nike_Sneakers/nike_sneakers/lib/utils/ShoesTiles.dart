import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';
import 'package:nike_sneakers/Models/ShoesModel.dart';
import 'package:nike_sneakers/provider/ShoesProvider.dart';
import 'package:provider/provider.dart';

class ShoesTiles extends StatelessWidget {
  ShoesModel myShoesModel;
  ShoesTiles({super.key,required this.myShoesModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: 250,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(30),bottomRight: Radius.circular(30)),
          color: Colors.grey
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Image.asset(myShoesModel.ImageUrl,height: 180,),
            ),
            Text(myShoesModel.name,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("~ "+myShoesModel.price,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800),),
                  Consumer<ShoesProvider>(
                    builder: (context, value, child) => GestureDetector(
                      onTap: () {
                        value.addToCart(myShoesModel);
                      },
                      child: Container(
                        decoration: const BoxDecoration(
                           color: Colors.black,
                           borderRadius: BorderRadius.only(bottomRight: Radius.circular(20))
                        ),
                        child: Icon(Iconsax.heart,color: Colors.white,),
                        padding: EdgeInsets.all(15),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}