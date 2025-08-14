  import 'package:flutter/material.dart';

Container searchBar() {
    return Container(
              padding: EdgeInsets.all(15),
              width: 364,
              height: 51,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 236, 236, 236),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  Icon(Icons.search),
                  SizedBox(
                    width: 3,
                  ),
                  Text(
                    'Search Store',
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
            );
}