import 'package:aapmania/utils/allproductdata.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> data =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        actions: [
          Padding(
              padding: const EdgeInsets.all(19),
              child: GestureDetector(
                onTap: () {
                  ProductData.favouriteproductdata.add(data);
                  ProductData.cartproductdata.remove(data);
                },
                child: Icon(
                  Icons.favorite_border_outlined,
                  size: 35,
                  color: Colors.white,
                ),
              ))
        ],
        backgroundColor: Colors.green,
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.green,
            child: SingleChildScrollView(
              child: Row(
                children: [],
              ),
              scrollDirection: Axis.horizontal,
            ),
          ),
          Container(
            height: 615,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(45), topRight: Radius.circular(45)),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 490),
            child: CircleAvatar(
              backgroundImage: NetworkImage("${data['images']}"),
              radius: 138,
            ),
          ),
          Column(
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 345, left: 140),
                    height: 50,
                    width: 145,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.remove,
                          size: 28,
                          color: Colors.white,
                        ),
                        Text(
                          "1",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 25,
                            color: Colors.white,
                          ),
                        ),
                        Icon(
                          Icons.add,
                          size: 28,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25, left: 30),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${data['title']}",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 5, right: 30),
                child: Column(
                  children: [
                    Column(
                      children: [
                        RichText(
                            text: TextSpan(children: <TextSpan>[
                          TextSpan(
                            text: "${data['description']}",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                          ),
                          TextSpan(
                            text: "Read More",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                            ),
                          ),
                        ])),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 30,
                  right: 30,
                  top: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "⭐ 4.5",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    ),
                    Text(
                      "🔥 Kcal",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    ),
                    Text(
                      "⏰ 5-10 Min",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                          color: Colors.black),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, top: 5),
                child: Row(
                  children: [
                    Text(
                      "Ingradients",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 21,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 30, right: 30, top: 16),
                child: Column(
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          ...data['ingidiance'].map(
                            (e) {
                              return Container(
                                alignment: Alignment.center,
                                margin: EdgeInsets.only(right: 10),
                                height: 50,
                                width: 55,
                                child: Text(
                                  "$e",
                                  style: TextStyle(fontSize: 25),
                                ),
                                decoration: BoxDecoration(
                                    color: Colors.grey.shade200,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(15),
                                    )),
                              );
                            },
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, top: 19.5),
                child: Row(
                  children: [
                    Container(
                      height: 65,
                      width: 350,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      alignment: Alignment.center,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed('cartpage');
                          ProductData.cartproductdata.add(data);
                        },
                        child: Text(
                          "Add To Cart",
                          style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
