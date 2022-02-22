import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Apple extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.blueGrey,
            )),
        actions: [
          Icon(
            Icons.favorite_outline_rounded,
            color: Colors.blueGrey,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
          )
        ],
      ),
      body: SingleChildScrollView(
          child: Container(
              child: Column(children: [
        Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Image.asset(
              "images/apple.jpg",
              height: 250,
              width: 250,
            )),
        Divider(
          endIndent: 125,
          indent: 125,
          color: Colors.grey,
          thickness: 10,
        ),
        SizedBox(
          height: 15,
        ),
        Container(
            child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Text(
                      "Apple",
                      style: TextStyle(fontSize: 27),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                        child: Column(
                      children: [
                        Text(
                          "Rs.240",
                          style: TextStyle(fontSize: 20, color: Colors.red),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow[900],
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow[900],
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow[900],
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow[900],
                            ),
                            Icon(
                              Icons.star_border,
                              color: Colors.grey,
                            )
                          ],
                        ),
                      ],
                    ))
                  ],
                ))
          ],
        )),
        SizedBox(
          height: 20,
        ),
        Container(
          child: Column(
            children: [
              Padding(
                  padding: const EdgeInsets.only(right: 170),
                  child: Text(
                    "Benefits of Apple",
                    style: TextStyle(
                        fontSize: 19, decoration: TextDecoration.underline),
                  )),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
            padding: const EdgeInsets.only(right: 120),
            child: Text(
              "Helps to prevent cancer."
              "\nReduces pressure on blood vessels."
              "\nHelps cure Respiratory problems..",
            ))
      ]))),
    );
  }
}
