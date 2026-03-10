import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemBottomNavBar extends StatelessWidget {
  const ItemBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  BottomAppBar(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        height: 70,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text("Total:",style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold
                  ),),
                  SizedBox(width: 15,),
                  Text("\$10",style: TextStyle(
                      fontSize: 19,
                      color: Colors.red,
                      fontWeight: FontWeight.bold
                  ),),
                ],
              ),
              ElevatedButton.icon(
                icon: Icon(CupertinoIcons.cart),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.red),
                      padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(horizontal: 20,vertical: 15)
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(20))
                      )
                  ),
                  onPressed: (){},
                  label: Text("Add to Cart",
                style: TextStyle(color: Colors.white,),))
            ]
        ),
      ),
    );
  }
}
