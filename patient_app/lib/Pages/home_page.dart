import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool icecream = false, burger = false, salad = false, pizza = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          margin: EdgeInsets.only(top: 50, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hello Ansh",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(color: Colors.black),
                    child: Icon(
                      Icons.shopping_cart,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ],
              ),
              Text("Delicious food",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold)),
              Text("Discover food and health",
                  style: TextStyle(
                      color: Colors.black38,
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold)),
              SizedBox(
                height: 20.0,
              ),
              Showitem(),

              SizedBox(
                height: 30,
              ),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(

                  children: [
                    Material(
                      color: Colors.green,
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        padding: EdgeInsets.all(5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset("assets/images/sal1.png",width: 150,height: 150,),
                            Text("Vegan Salad",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                            Text("Cucumber,lettuce,tomato,corn and onion",style: TextStyle(color: Colors.black54),),
                            Text("Rs 399",style: TextStyle(fontWeight: FontWeight.w600),)
                          ],
                        ),
                      ),
                    ),

                    SizedBox(
                      width: 20,
                    ),

                    Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.green,
                      child: Container(
                        padding: EdgeInsets.all(5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset("assets/images/salad3.png",width: 150,height: 150,),
                            Text("Protien Salad",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                            Text("Cucumber,cottage cheese,tomato,olive and onion",style: TextStyle(color: Colors.black54),),
                            Text("Rs 499",style: TextStyle(fontWeight: FontWeight.w600),)
                          ],
                        ),
                      ),
                    ),

                    SizedBox(
                      width: 20.0,
                    ),


                  ],
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Material(
                elevation: 5.0,
                borderRadius: BorderRadius.circular(10),
                color: Colors.red,
                child: Container(
                  padding: EdgeInsets.all(5),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset("assets/images/salad4.png",width: 150,height: 150,fit: BoxFit.cover,),
                
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 20.0,),
                          Container(
                            child: Text("Chicken salad",
                            style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          ),
                          SizedBox(height: 5.0,),
                          Container(
                            child: Text("Cucumber, chicken ,tomato, avacado, corn and onion",
                            style: TextStyle(fontSize: 18,color: Colors.black54),),
                          ),
                          SizedBox(height: 5.0,),
                          Container(
                            child: Text("Rs 799",
                            style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                          ),

                        ],
                      )
                
                    ],
                  ),
                ),
              )

            ],
          )
          ),
    );
  }

  Widget Showitem() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        GestureDetector(
          onTap: () {
            icecream = true;
            burger = false;
            salad = false;
            pizza = false;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(5),
            child: Container(
              decoration: BoxDecoration(
                  color: icecream ? Colors.black : Colors.white,
                  borderRadius: BorderRadius.circular(8)),
              child: Image.asset(
                "assets/images/ice-cream.png",
                height: 50,
                width: 50,
                fit: BoxFit.cover,
                color: icecream ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            burger = true;
            icecream = false;
            salad = false;
            pizza = false;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(5),
            child: Container(
              decoration: BoxDecoration(
                  color: burger ? Colors.black : Colors.white,
                  borderRadius: BorderRadius.circular(8)),
              child: Image.asset(
                "assets/images/burger.png",
                height: 50,
                width: 50,
                fit: BoxFit.cover,
                color: burger ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            burger = false;
            icecream = false;
            salad = false;
            pizza = true;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(5),
            child: Container(
              decoration: BoxDecoration(
                  color: pizza ? Colors.black : Colors.white,
                  borderRadius: BorderRadius.circular(8)),
              child: Image.asset(
                "assets/images/pizza.png",
                height: 50,
                width: 50,
                fit: BoxFit.cover,
                color: pizza ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            burger = false;
            icecream = false;
            salad = true;
            pizza = false;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(5),
            child: Container(
              decoration: BoxDecoration(
                  color: salad ? Colors.black : Colors.white,
                  borderRadius: BorderRadius.circular(8)),
              child: Image.asset(
                "assets/images/salad.png",
                height: 50,
                width: 50,
                fit: BoxFit.cover,
                color: salad ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
