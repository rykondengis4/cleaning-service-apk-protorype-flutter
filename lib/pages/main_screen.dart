import 'dart:math';

import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  String selectedType = "bersih";
  String selectedFrequency = "monthly";

  void onChangeSelectedType(String type){
    selectedType = type;
    setState(() {

    });
  }

  void changeSelectedFrequency(String frequency){
    selectedFrequency = frequency;
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[400],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Paket Langganan",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w700,
            fontSize: 17
          ),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40)
          )
        ),
        child: ListView(
          children: [
            SizedBox(height: 5,),
            Text(
                "Pilih Paket",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600
            ),
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    onChangeSelectedType("bersih");
                  },
                  child: Column(
                    children: [
                      Container(
                        height: 140,
                        width: MediaQuery.of(context).size.width * 0.40,
                        decoration: BoxDecoration(
                          color: Colors.deepPurple[50],
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          image: DecorationImage(
                            image: AssetImage('assets/images/img1.png')
                          )
                        ),
                      ),
                      SizedBox(height: 10,),
                      Text(
                          "Paket Bersih",
                        style: TextStyle(
                          fontWeight: FontWeight.w500
                        ),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Colors.deepPurple[50],
                          shape: BoxShape.circle
                        ),
                        child: selectedType == "bersih"
                        ? Icon(
                            Icons.check_circle,
                          color: Colors.pink[300],
                          size: 30,
                        ) : Container(),
                      )
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    onChangeSelectedType("mengkilap");
                  },
                  child: Column(
                    children: [
                      Container(
                        height: 140,
                        width: MediaQuery.of(context).size.width * 0.40,
                        decoration: BoxDecoration(
                          color: Colors.deepPurple[50],
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          image: DecorationImage(
                            image: AssetImage('assets/images/img2.png')
                          )
                        ),
                      ),
                      SizedBox(height: 10,),
                      Text(
                          "Paket Mengkilap",
                        style: TextStyle(
                          fontWeight: FontWeight.w500
                        ),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Colors.deepPurple[50],
                          shape: BoxShape.circle
                        ),
                        child: selectedType == "mengkilap"
                        ? Icon(
                            Icons.check_circle,
                          color: Colors.pink[300],
                          size: 30,
                        ) : Container(),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Text(
              "Pilih Langganan",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600
              ),
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    changeSelectedFrequency("weekly");
                  },
                  child: Container(
                    width: 110,
                    height: 50,
                    decoration: selectedFrequency == "weekly"
                    ? BoxDecoration(
                      color: Colors.pink[300],
                      borderRadius: BorderRadius.all(Radius.circular(10))
                    ) : BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      border: Border.all(
                        color: Colors.black
                      ),
                      color: Colors.white
                    ),
                    child: Center(
                      child: Text(
                        "Mingguan",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: selectedFrequency == "weekly"
                            ? Colors.white : Colors.black
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    changeSelectedFrequency("2-weekly");
                  },
                  child: Container(
                    width: 110,
                    height: 50,
                    decoration: selectedFrequency == "2-weekly"
                    ? BoxDecoration(
                      color: Colors.pink[300],
                      borderRadius: BorderRadius.all(Radius.circular(10))
                    ) : BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      border: Border.all(
                        color: Colors.black
                      ),
                      color: Colors.white
                    ),
                    child: Center(
                      child: Text(
                        "2-Mingguan",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: selectedFrequency == "2-weekly"
                            ? Colors.white : Colors.black
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    changeSelectedFrequency("monthly");
                  },
                  child: Container(
                    width: 110,
                    height: 50,
                    decoration: selectedFrequency == "monthly"
                    ? BoxDecoration(
                      color: Colors.pink[300],
                      borderRadius: BorderRadius.all(Radius.circular(10))
                    ) : BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      border: Border.all(
                        color: Colors.black
                      ),
                      color: Colors.white
                    ),
                    child: Center(
                      child: Text(
                        "Bulanan",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: selectedFrequency == "monthly"
                            ? Colors.white : Colors.black
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Text(
              "Pilih Tambahan",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600
              ),
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                extraWidget("es", "Dapur", true),
                extraWidget("belanja", "Memasak", false),
                extraWidget("tirai", "Tirai Kecil", true)
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                extraWidget("teras", "Teras", true),
                extraWidget("belanja", "Belanja", true),
                extraWidget("tirai", "Tirai Besar", false)
              ],
            ),

          ],
        ),
      ),
    );
  }

  Column extraWidget(String img, String name, bool isSelected){
    return Column(
      children: [
        Stack(
          children: [
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                color: Colors.deepPurple[400],
                shape: BoxShape.circle,
                ), 
                  child: Container(
                      margin: EdgeInsets.all(17),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/icons/$img.png'),
                            fit: BoxFit.contain
                        ),
                ),
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: isSelected == true
              ? Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white
                ),
                child: Icon(
                  Icons.check_circle,
                  color: Colors.pink[300],
                ),
              ) : Container(),
            )
          ],
        ),
        SizedBox(height: 10,),
        Text(
            name,
          style: TextStyle(
            fontWeight: FontWeight.w600
          ),
        )
      ],
    );
  }

}
