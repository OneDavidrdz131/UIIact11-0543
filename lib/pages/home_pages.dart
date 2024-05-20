import 'package:flutter/material.dart';
import 'package:rodriguez0543/util/category_card.dart';

import '../util/doctor_card.dart';

class HomePages extends StatefulWidget {
  const HomePages({Key? key}) : super(key: key);

  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffddebfd),
      body: SafeArea(
        child: Column(children: [
          // app bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Bienvenido a",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Ford Mexico",
                      style: TextStyle(fontSize: 24),
                    ),
                  ],
                ),

                // proile pict
                Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Color(0xff002cbe),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(Icons.person),
                ),
              ],
            ),
          ),

          SizedBox(
            height: 25,
          ),

          // card-> how do you feel?
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Color(0xff6688f1),
                  borderRadius: BorderRadius.circular(12)),
              child: Row(children: [
                // animation or cute picture
                Container(
                  height: 100,
                  width: 100,
                  color: Color(0xff6688f1),
                  child: Image.asset("lib/images/FordMustang20.png"),
                ),
                SizedBox(
                  width: 25,
                ),

                //how do you feel + get started button
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Que desea Auto Comprar?",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 12),
                      Text(
                        "Autos de Ultima generacion",
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(height: 12),
                      Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                            color: Color(0xff0048ff),
                            borderRadius: BorderRadius.circular(12)),
                        child: Center(
                          child: Text(
                            "Comprar",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ]),
            ),
          ),
          SizedBox(
            height: 25,
          ),

          //  Search bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Color(0x6f1985f8),
                borderRadius: BorderRadius.circular(12),
              ),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  border: InputBorder.none,
                  hintText: "Buscar Ford ",
                ),
              ),
            ),
          ),

          SizedBox(height: 25),

          // horizontal listview -> categires: dentist, surgeon
          Container(
            height: 80,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                CategoryCard(
                    categoryName: "Bronco",
                    iconImagePath: "lib/icons/explorer.jpg"),
                CategoryCard(
                  categoryName: "Hawaiana",
                  iconImagePath: "lib/icons/fiesta.jpg",
                ),
                CategoryCard(
                  categoryName: "Carne",
                  iconImagePath: "lib/icons/explorer.png",
                ),
              ],
            ),
          ),

          SizedBox(height: 25),

          // doctor list
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Pizzas recomendadas",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Text(
                  "Ver Mas",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff242323),
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 25),

          Expanded(
            child: ListView(scrollDirection: Axis.horizontal, children: [
              DoctorCard(
                doctorImagePath: "lib/images/FordMustang20.png",
                raiting: "10",
                doctorName: "Ford Mustang",
                doctorProfession: "Deportivo",
              ),
              DoctorCard(
                doctorImagePath: "lib/images/fiesta.jpg",
                raiting: "8,5",
                doctorName: "Ford Fiesta ",
                doctorProfession: "Deportivo",
              ),
              DoctorCard(
                doctorImagePath: "lib/images/explorer.jpg",
                raiting: "10",
                doctorName: "Explorer",
                doctorProfession: "Deportivo",
              ),
            ]),
          )
        ]),
      ),
    );
  }
}
