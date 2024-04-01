import 'package:aapmania/utils/allproductdata.dart';
import 'package:flutter/material.dart';

class favouritepage extends StatefulWidget {
  const favouritepage({super.key});

  @override
  State<favouritepage> createState() => _favouritepageState();
}

class _favouritepageState extends State<favouritepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Favourite",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 27,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.green,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 17),
            child: Icon(
              Icons.close,
              size: 27,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.green,
          ),
          Expanded(
              child: Container(
            height: 750,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40))),
            child: Padding(
              padding: const EdgeInsets.only(top: 25, left: 20, right: 20),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ...ProductData.favouriteproductdata.map(
                      (e) => Container(
                          margin: EdgeInsets.only(bottom: 10),
                          height: 100,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Container(
                                  child: CircleAvatar(
                                    foregroundImage: NetworkImage(
                                      "${e['thumbnail']}",
                                    ),
                                    radius: 42,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Container(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 22, left: 15),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "${e['title']}",
                                              style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w700,
                                                color: Colors.black87
                                                    .withOpacity(0.8),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 5),
                                              child: Text(
                                                "\$${e['price']}",
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w700,
                                                  color: Colors.black87
                                                      .withOpacity(0.8),
                                                ),
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(top: 35, left: 50),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                ProductData.favouriteproductdata
                                                    .remove(e);
                                              });
                                            },
                                            child: Icon(
                                              Icons.favorite_rounded,
                                              size: 25,
                                              color: Colors.red,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          )),
                    )
                  ],
                ),
              ),
            ),
          )),
        ],
      ),
    );
  }
}
