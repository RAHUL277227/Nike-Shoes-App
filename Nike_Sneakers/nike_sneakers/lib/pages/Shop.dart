import 'package:flutter/material.dart';
import 'package:nike_sneakers/Models/ShoesModel.dart';
import 'package:nike_sneakers/provider/ShoesProvider.dart';
import 'package:nike_sneakers/utils/ShoesTiles.dart';
import 'package:provider/provider.dart';

class Shop extends StatefulWidget {
  const Shop({super.key});

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {

  // final Shoeslist = [
  //   new ShoesModel(name: "Adidas", price: "200", ImageUrl: "lib/images/shoes1.png", des: "From retro-leaning styles"),
  //   new ShoesModel(name: "Asics", price: "170", ImageUrl: "lib/images/shoes2.png", des: "The Asics Gel-Excite 9 is a budget-friendly"),
  //   new ShoesModel(name: "Converse", price: "120", ImageUrl: "lib/images/shoes3.png", des: "All Star '70s High Top Sneakers"),
  //   new ShoesModel(name: "Nike", price: "350", ImageUrl: "lib/images/shoes1.png", des: "Suffice to say Nike"),
  // ];

  @override
  Widget build(BuildContext context) {
    return Column(
      
      children: [
        //search box

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 10),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 20),
                  child: Text("Search..."),
                ),
                Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey,
                  ),
                  child: Icon(Icons.search,),
                )
              ],
            ),
          ),
        ),

         //message
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 25,vertical: 10),
          child: Text("EveryOne Files... Some Fly Longer Then Others."),
        ),

         //hot picks
         const Padding(
           padding: EdgeInsets.symmetric(horizontal: 20,vertical: 12),
           child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("HOT PICKS 🔥",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              Text("Sell all",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.blue),),
            ],
           ),
         ),

         Consumer<ShoesProvider>(
          builder: (context, value, child) =>Expanded(
            child: ListView.builder(scrollDirection: Axis.horizontal,itemCount: 4,itemBuilder: (context, index) {
              return ShoesTiles(myShoesModel: value.Shoeslist[index],);
            },),
           ),
         )

      ],


    );
  }
}