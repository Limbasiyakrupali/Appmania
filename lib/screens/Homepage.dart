import 'package:aapmania/utils/allproductdata.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    bool istapped = false;
    bool isfavourtie = false;
    String? selDropdownvalues;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 18, bottom: 18, right: 18),
        child: Column(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 42),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.location_on_rounded,
                          color: Colors.black,
                          size: 25,
                        ),
                        Text(
                          "Habiganj City",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 17,
                              color: Colors.black),
                        ),
                        SizedBox(width: 192),
                        Row(
                          children: [
                            Container(
                              height: 43,
                              width: 43,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey.shade200,
                              ),
                              child: Icon(
                                Icons.sort,
                                size: 39,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                          text: TextSpan(children: <TextSpan>[
                        TextSpan(
                          text: "Find The",
                          style: TextStyle(
                              fontSize: 31,
                              // fontWeight: FontWeight.w400,
                              color: Colors.black),
                        ),
                        TextSpan(
                          text: " Best\n",
                          style: TextStyle(
                              fontSize: 31,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        TextSpan(
                          text: "Food",
                          style: TextStyle(
                              fontSize: 31,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        TextSpan(
                          text: " Around You",
                          style: TextStyle(
                              fontSize: 31,
                              // fontWeight: FontWeight.w400,
                              color: Colors.black),
                        ),
                      ]))
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(30))),
                            child: const Padding(
                              padding: EdgeInsets.all(12),
                              child: Row(
                                children: [
                                  SizedBox(width: 5),
                                  Icon(
                                    Icons.search_rounded,
                                    color: Colors.black45,
                                    size: 23,
                                  ),
                                  SizedBox(width: 12),
                                  Text(
                                    "Search your favourite food",
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black45,
                                    ),
                                  ),
                                  SizedBox(width: 55),
                                ],
                              ),
                            )),
                      ),
                    ],
                  ),
                  SizedBox(height: 50),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(children: <TextSpan>[
                          const TextSpan(
                              text: "Find",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black)),
                          TextSpan(
                              text: "   5km>",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.redAccent.shade100)),
                        ]),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Container(
                        height: 41.5,
                        width: 106,
                        decoration: BoxDecoration(
                            color: Colors.green.shade400,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(30),
                            )),
                        alignment: Alignment.center,
                        child: const Text(
                          "Salads",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 17,
                              color: Colors.white),
                        ),
                      ),
                      SizedBox(width: 23.5),
                      Container(
                        height: 41.5,
                        width: 106,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(30),
                          ),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "Hot Sale",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 17,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(width: 23.5),
                      Container(
                        height: 41.5,
                        width: 106,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(30),
                            )),
                        alignment: Alignment.center,
                        child: const Text(
                          "Popularity",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 17,
                              color: Colors.black),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 30),
                    Column(
                      children: [
                        ...ProductData.allProductData.map(
                          (val) => Row(
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ...val['CatagoryProducts'].map(
                                (Map<String, dynamic> e) => GestureDetector(
                                  onTap: () {
                                    Navigator.of(context)
                                        .pushNamed('DetailPage', arguments: e);
                                  },
                                  child: Container(
                                    height: 310,
                                    width: 179,
                                    margin: EdgeInsets.only(
                                      bottom: 20,
                                    ),
                                    decoration: BoxDecoration(
                                        color: Colors.grey.shade200,
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(20),
                                        )),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            istapped == false
                                                ? GestureDetector(
                                                    onTap: () {
                                                      setState(() {
                                                        istapped = true;
                                                        Navigator.of(context)
                                                            .pushNamed(
                                                                'favouritepage');
                                                        ProductData
                                                            .favouritedata
                                                            .add(e);
                                                        ProductData
                                                            .convertuniquedata();
                                                      });
                                                    },
                                                    child: Container(
                                                      alignment:
                                                          Alignment.center,
                                                      height: 40,
                                                      width: 40,
                                                      child: Icon(
                                                        Icons
                                                            .favorite_border_outlined,
                                                        size: 25,
                                                        color: Colors.grey,
                                                      ),
                                                    ),
                                                  )
                                                : GestureDetector(
                                                    onTap: () {
                                                      setState(() {
                                                        istapped = false;
                                                        Navigator.of(context)
                                                            .pushNamed(
                                                                'favouritepage');
                                                        ProductData
                                                            .favouritedata
                                                            .add(e);
                                                        ProductData
                                                            .convertuniquedata();
                                                      });
                                                    },
                                                    child: Container(
                                                      alignment:
                                                          Alignment.center,
                                                      height: 40,
                                                      width: 40,
                                                      child: Icon(
                                                        Icons.favorite,
                                                        size: 25,
                                                        color: Colors.red,
                                                      ),
                                                    ),
                                                  ),
                                          ],
                                        ),
                                        CircleAvatar(
                                          radius: 60,
                                          foregroundImage: NetworkImage(
                                            ("${e['thumbnail']}"),
                                          ),
                                        ),
                                        SizedBox(height: 10),
                                        Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  "${e['title']}",
                                                  style: TextStyle(
                                                      fontSize: 18.5,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                        SizedBox(height: 5),
                                        Column(
                                          children: [
                                            Row(
                                              children: [
                                                SizedBox(width: 35),
                                                Text(
                                                  "${e['timing']}",
                                                  style: TextStyle(
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.grey),
                                                ),
                                                SizedBox(width: 25),
                                                Icon(
                                                  Icons.star_border_rounded,
                                                  size: 23,
                                                  color: Colors.amber,
                                                ),
                                                Text(
                                                  "${e['rating']}",
                                                  style: TextStyle(
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.grey),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                        SizedBox(height: 40),
                                        Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 26),
                                                  child: Text(
                                                    ("\$${e['price']}"),
                                                    style: TextStyle(
                                                      fontSize: 22,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  height: 45,
                                                  width: 50,
                                                  decoration: BoxDecoration(
                                                    color: Colors.green,
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(20),
                                                      bottomRight:
                                                          Radius.circular(20),
                                                    ),
                                                  ),
                                                  child: GestureDetector(
                                                    onTap: () {
                                                      ProductData
                                                          .cartproductdata
                                                          .add(e);
                                                    },
                                                    child: Icon(
                                                      Icons.add,
                                                      size: 25,
                                                      color: Colors.white
                                                          .withOpacity(0.9),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
