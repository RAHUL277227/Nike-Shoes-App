import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:nike_sneakers/pages/Cart.dart';
import 'package:nike_sneakers/pages/Shop.dart';
import 'package:nike_sneakers/utils/BottomNavBar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int selectedIndex = 0;
  List pages = [
    Shop(),Cart(),
  ];

  void ontabChangeFun(index){
    setState(() {
      selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: BottomNavBar(onTabChange: (index) {
        ontabChangeFun(index);
      },),

      body: pages[selectedIndex],

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(builder: (context) {
          return IconButton(onPressed: (){
            Scaffold.of(context).openDrawer();
          }, icon: const Icon(Icons.menu));
        },),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // drawer Header------
            Column(
              children: [

                DrawerHeader(
              child: Image.asset('lib/images/logo.png',color: Colors.white,),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Divider(
                color: Colors.grey[800],
              ),
            ),
                const Padding(
              padding: EdgeInsets.only(left: 8.0,top: 8),
              child: ListTile(
                leading: Icon(Icons.home,color: Colors.white,),
                title: Text("Home",style: TextStyle(color: Colors.white,),),
              ),
            ),

             const Padding(
              padding: EdgeInsets.only(left: 8.0,),
              child: ListTile(
                leading: Icon(Icons.info,color: Colors.white,),
                title: Text("About",style: TextStyle(color: Colors.white,),),
              ),
            ),
              ],
            ),

            const Padding(
              padding: EdgeInsets.only(left: 8.0,bottom: 10),
              child: ListTile(
                leading: Icon(Icons.logout,color: Colors.white,),
                title: Text("LogOut",style: TextStyle(color: Colors.white,),),
              ),
            )


          ],
        )
      ),
    );
  }
}