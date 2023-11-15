import 'package:flutter/material.dart';

class IlanCard extends StatelessWidget {
  const IlanCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(
              width: 10,
            ),
            Container(
              height: 100,
              width: 120,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Image.asset(
                  'assets/ev.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              width: 200,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Satılık Müstakil ev",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_pin,
                        color: Colors.blue,
                      ),
                      Text(
                        "Bursa",
                        style: TextStyle(fontSize: 10, color: Colors.black),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.home,
                        color: Colors.blue,
                      ),
                      Text(
                        "Konut- Mustaki Ev",
                        style: TextStyle(fontSize: 10, color: Colors.black),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.content_paste_search,
                        color: Colors.blue,
                      ),
                      Text(
                        "200 m2 No:11111",
                        style: TextStyle(fontSize: 10, color: Colors.black),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 20),
                    child: Row(
                      children: [
                        SizedBox(width: 10),
                        Text(
                          "1.000.000 TL",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.only(left: 50, bottom: 5),
                            child: Icon(
                              Icons.cottage,
                              size: 24,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
