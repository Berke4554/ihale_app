import 'package:flutter/material.dart';
import 'package:ihale_app/ilan_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTIZccfNPnqalhrWev-Xo7uBhkor57_rKbkw&usqp=CAU",
      "https://wallpaperaccess.com/full/2637581.jpg"
    ];

    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        elevation: 10,
        color: Colors.blue,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(
                Icons.person,
                color: Colors.white,
                size: 40,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.newspaper,
                color: Colors.white,
                size: 40,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.lightbulb,
                color: Colors.white,
                size: 40,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.volume_mute,
                color: Colors.white,
                size: 45,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.favorite,
                color: Colors.white,
                size: 40,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Center(
              child: Stack(
                children: <Widget>[
                  Container(
                    child: Image.asset(
                      'assets/ev.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                width: MediaQuery.of(context).size.width - 10,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "FIRSATLAR",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    IlanCard(),
                    Container(
                      padding: EdgeInsets.only(right: 20),
                      child: Row(
                        mainAxisAlignment:
                            MainAxisAlignment.end, // Sağa yatık hizalama
                        children: [
                          Text(
                            'İlanlara Bak',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(
                            Icons.arrow_circle_right_rounded,
                            color: Colors.white,
                            size: 24,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    )
                  ],
                )),
            SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width - 10,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "GÜNCEL İLANLAR",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  IlanCard(),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Divider(
                      height: 10,
                      thickness: 1.5,
                    ),
                  ),
                  IlanCard(),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Divider(
                      height: 10,
                      thickness: 1.5,
                    ),
                  ),
                  IlanCard(),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Divider(
                      height: 10,
                      thickness: 1.5,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
