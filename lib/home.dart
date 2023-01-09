import 'package:ecapp/second.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List itemslist = [
    "Samsung Galaxy A04e",
    "Redmi A1",
    "OnePlus Nord 2T 5G",
    "OPPO A31",
    "Nothing Phone (1) 5G",
    "Realme narzo 50i",
    "Samsung Galaxy S20 FE 5G",
    "Apple iPhone 14 Pro Max",
    "Apple iPhone 13",
    "Vivo V23 5G"
  ];
  List itemsimages = [
    "assets/images/samsunga04a.jpg",
    "assets/images/redmia1.jpg",
    "assets/images/oneplusnord.jpg",
    "assets/images/oppoa31.jpg",
    "assets/images/nothinga31.jpg",
    "assets/images/realmenarzo50i.jpg",
    "assets/images/samsungs20.jpg",
    "assets/images/iphone14pro.jpg",
    "assets/images/iphone13.jpg",
    "assets/images/vivov23.jpg",
  ];
  List price = [
    '11,998',
    '6,499',
    '28,999',
    '11,990',
    '29,884',
    '6,999',
    '37,990',
    '1,39,900',
    '69,900',
    '27,139'
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff3863DD),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Explore Product",
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 60,
                    width: 250,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                          icon: Icon(Icons.search),
                          hintText: "Search For Products..",
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 60,
                    width: 65,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Icon(
                      Icons.camera_alt_outlined,
                      size: 30,
                      color: Color(0xff4A7CF4),
                    ),
                  )
                ],
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Electronics",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: itemslist
                      .asMap()
                      .entries
                      .map((e) => Box(
                        itemsimages[e.key],price[e.key],itemslist[e.key]
                      ))
                      .toList(),
                ),
              ),
              Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xff1C5BD0),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(
                          Icons.favorite_border,
                          size: 30,
                          color: Color(0xff4A7CF4),
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(
                          Icons.tune,
                          size: 30,
                          color: Color(0xff4A7CF4),
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(
                          Icons.shopping_bag_outlined,
                          size: 30,
                          color: Color(0xff4A7CF4),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget Box(String image, String price, String name)
  {
    return Padding(
      padding: const EdgeInsets.only(right: 10,left: 10),
      child: Container(
        height: 450,
        width: 325,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FloatingActionButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.favorite,
                      size: 30,
                      color: Colors.blue,
                    ),
                    backgroundColor: Color(0xffEBF0FD),
                    elevation: 0,
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.shopping_bag_outlined,
                      size: 30,
                    ),
                    backgroundColor: Colors.blue,
                    elevation: 0,
                  ),
                ],
              ),
              Center(
                  child: Image.asset(image,height: 200,width: 200,)),
              Center(
                child: Text("Rs. $price",style: TextStyle(fontSize: 18),),
              ),
              Text(name,style: TextStyle(color: Colors.blue,fontSize: 25),),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.orangeAccent,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.orangeAccent,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.orangeAccent,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.orangeAccent,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.orangeAccent,
                  ),
                ],
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Second(image, price, name),));
                  });
                },
                child: Row(
                  children: [
                    Text("See The More Details.."),
                    Icon(Icons.navigate_next)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
