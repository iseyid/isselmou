import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/header_image.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Titre de l\'interface utilisateur',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text('Colonne 1'),
                    Radio(
                      value: 1,
                      groupValue: null,
                      onChanged: null,
                    ),
                    Radio(
                      value: 2,
                      groupValue: null,
                      onChanged: null,
                    ),
                    Radio(
                      value: 3,
                      groupValue: null,
                      onChanged: null,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/photo.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Action du bouton
                      },
                      child: Text('Bouton'),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text('Colonne 3'),
                    Text('Texte'),
                    ElevatedButton(
                      onPressed: () {
                        // Action du bouton
                      },
                      child: Text('Bouton'),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
