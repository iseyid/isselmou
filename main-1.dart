import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyPage(),
    );
  }
}

class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  int _selectedOption = 1;
  List<bool> _isCheckedList = [false, false, false, false, false];
  TextEditingController _textFieldController1 = TextEditingController();
  TextEditingController _textFieldController2 = TextEditingController();
  TextEditingController _textFieldController3 = TextEditingController();

  void _onOptionChanged(int? value) {
    if (value != null) {
      setState(() {
        _selectedOption = value;
      });
    }
  }

  void _onCheckboxChanged(int index, bool? value) {
    if (value != null) {
      setState(() {
        _isCheckedList[index] = value;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ma page'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.center,
              child: CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage(
                  'assets/image.jpg', // Remplacez le chemin par le chemin correct de votre image
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Radio<int>(
                  value: 1,
                  groupValue: _selectedOption,
                  onChanged: _onOptionChanged,
                ),
                Text('ajouter'),
                Radio<int>(
                  value: 2,
                  groupValue: _selectedOption,
                  onChanged: _onOptionChanged,
                ),
                Text('modifier'),
                Radio<int>(
                  value: 3,
                  groupValue: _selectedOption,
                  onChanged: _onOptionChanged,
                ),
                Text('supprimer'),
              ],
            ),
            SizedBox(height: 20),
            Text('Inputs :'),
            TextField(
              controller: _textFieldController1,
              decoration: InputDecoration(
                labelText: 'nom',
              ),
            ),
            TextField(
              controller: _textFieldController2,
              decoration: InputDecoration(
                labelText: 'prénom',
              ),
            ),
            TextField(
              controller: _textFieldController3,
              decoration: InputDecoration(
                labelText: 'adresse',
              ),
            ),
            SizedBox(height: 20),
            Text('Cases à cocher :'),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (int i = 0; i < 5; i++)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Checkbox(
                        value: _isCheckedList[i],
                        onChanged: (value) {
                          _onCheckboxChanged(i, value);
                        },
                      ),
                      Text(
                        _getCheckboxLabel(i),
                      ),
                    ],
                  ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      for (int i = 0; i < 5; i++)
                        Checkbox(
                          value: _isCheckedList[i],
                          onChanged: (value) {
                            _onCheckboxChanged(i, value);
                          },
                        ),
                    ],
                  ),
                ),
                SizedBox(width: 20),
                SizedBox(
                  width: 120,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {
                      // Action à effectuer lors de la confirmation
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue, // Couleur de fond bleue
                    ),
                    child: Text('Confirmer', style: TextStyle(fontSize: 16)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  String _getCheckboxLabel(int index) {
    switch (index) {
      case 0:
        return 'baccalaureat';
      case 1:
        return 'BTS';
      case 2:
        return 'licence';
      case 3:
        return 'master';
      case 4:
        return 'doctorat';
      default:
        return '';
    }
  }
}
