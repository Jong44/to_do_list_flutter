import 'package:flutter/material.dart';

class CardData extends StatelessWidget {
  final title;
  const CardData({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(bottom: 10),
      width: double.infinity,
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey.shade200,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "Deadline is Saturday, February 4 2024. Assignments are collected in the lecturer's room at a maximum of 16.00. Must be done tonight",
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "created on January 31, 2024",
            style: TextStyle(fontSize: 12, color: Colors.blueAccent),
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              InkWell(
                onTap: () {},
                child: Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.blueAccent,
                  ),
                  child: Icon(
                    Icons.create,
                    size: 12,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.redAccent,
                  ),
                  child: Icon(
                    Icons.delete,
                    size: 12,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
