import 'package:flutter/material.dart';
import 'package:newproject/components/CardData.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List titleList = [
    "Kalkulus Tugas 1",
    "Flutter Praktek",
    "Java Materi",
    "Python Buat ML",
    "Main Sama Tanjung",
    "Main Sendiri"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueAccent,
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hello Tanjung!",
                    ),
                    Text(
                      "This is your to-do list",
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.red,
                          image: DecorationImage(
                            image: AssetImage("assets/image1.jpg"),
                          )),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            width: 1,
                            color: Colors.grey,
                          )),
                      child: Icon(Icons.notifications),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(8),
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.grey.shade100,
              ),
              child: Row(
                children: [
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.search,
                      color: Colors.grey.shade300,
                      size: 20,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 290,
                    height: 30,
                    child: TextField(
                      style: TextStyle(fontSize: 11),
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(bottom: 15),
                          border: InputBorder.none,
                          hintText: "Search"),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                width: double.infinity,
                height: 590,
                child: ListView.builder(
                    itemCount: titleList.length,
                    itemBuilder: (context, index) {
                      return CardData(
                        title: titleList[index],
                      );
                    }))
          ],
        ),
      ),
    );
  }
}
