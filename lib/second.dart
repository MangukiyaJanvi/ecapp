import 'package:flutter/material.dart';

class Second extends StatefulWidget {
  String? a1;
  String? a2;
  String? a3;

  Second(String itemsimages, String price, String itemslist) {
    a1 = itemslist;
    a2 = itemsimages;
    a3 = price;
  }

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  String a = "Add To Cart";
  int i = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("${widget.a1}"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Container(
              height: 800,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(child: Image.asset("${widget.a2}")),
                  SizedBox(
                    height: 5,
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 500,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(color: Colors.black12, blurRadius: 5),
                          ],
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(30),
                              topLeft: Radius.circular(30)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Align(
                                alignment: Alignment.topRight,
                                child: FloatingActionButton(
                                  onPressed: () {},
                                  child: Icon(
                                    Icons.favorite,
                                    size: 30,
                                    color: Colors.blue,
                                  ),
                                  backgroundColor: Color(0xffEBF0FD),
                                  elevation: 0,
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Internet connectivity.",style: TextStyle(fontSize: 17),),
                                  Text("A mobile browser.",style: TextStyle(fontSize: 17),),
                                  Text("Support for third-party applications.",style: TextStyle(fontSize: 17),),
                                  Text("The ability to run multiple applications simultaneously.",style: TextStyle(fontSize: 17),),
                                  Text("A digital camera, typically with video capability.",style: TextStyle(fontSize: 17),),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Quantity : ",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  SizedBox(height: 5,),
                                  Row(
                                    children: [
                                      FloatingActionButton(
                                        onPressed: () {
                                          setState(() {
                                            if (i > 1) {
                                              i--;
                                            }
                                          });
                                        },
                                        child: Icon(
                                          Icons.remove,
                                          size: 30,
                                          color: Colors.blue,
                                        ),
                                        backgroundColor: Color(0xffEBF0FD),
                                        elevation: 0,
                                      ),
                                      Container(
                                          height: 20,
                                          width: 30,
                                          alignment: Alignment.center,
                                          child: Text("$i")),
                                      FloatingActionButton(
                                        onPressed: () {
                                          setState(() {
                                            i++;
                                          });
                                        },
                                        child: Icon(
                                          Icons.add,
                                          size: 30,
                                          color: Colors.blue,
                                        ),
                                        backgroundColor: Color(0xffEBF0FD),
                                        elevation: 0,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "\$ ${widget.a3}",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.blue),
                                  ),
                                  FloatingActionButton.extended(
                                    onPressed: () {},
                                    label: Text(
                                      "Add To Cart",
                                      style: TextStyle(fontSize: 18),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
