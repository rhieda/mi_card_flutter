import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              UserAvatar(),
              UserName(),
              UserRoleDescription(),
ledhi
              SizedBox(
                width: 150,
                height: 20,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              NumberCard(),
              EmailCard(),
            ],
          ),
        ),
      ),
    );
  }
}

class UserAvatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 50.0,
      foregroundImage: AssetImage('images/Hieda_Rafael.jpg'),
    );
  }
}

class UserName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Rafael Hieda',
      style: TextStyle(
        fontFamily: 'Pacifico',
        fontSize: 40,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class UserRoleDescription extends StatefulWidget {
  @override
  State<UserRoleDescription> createState() => _UserRoleDescriptionState();
}

class _UserRoleDescriptionState extends State<UserRoleDescription> {
  String _roleValue = 'Mobile Developer'.toUpperCase();

  @override
  Widget build(BuildContext context) {
    return Text(
      _roleValue,
      style: TextStyle(
        fontFamily: 'SourceSansPro',
        fontSize: 20,
        color: Colors.teal.shade100,
        letterSpacing: 2.5,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class NumberCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      margin: EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 25,
      ),
      child: ListTile(
        leading: Icon(
          Icons.phone,
          color: Colors.teal,
        ),
        title: Text(
          '+ 55 11 97393-1784',
          style: TextStyle(
              fontSize: 20,
              fontFamily: 'SourceSansPro',
              color: Colors.teal.shade900),
        ),
      ),
    );
  }
}

//Minha implementação inicial
class RafaNumberCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 25,
      ),
      padding: EdgeInsets.all(10.0),
      child: Row(
        children: [
          Icon(
            Icons.phone,
            color: Colors.teal,
          ),
          SizedBox(width: 10),
          Text(
            '+55 11 97393-1784',
            style: TextStyle(
              color: Colors.teal.shade900,
              fontFamily: 'SourceSansPro',
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}

class EmailCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      margin: EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 25,
      ),
      child: ListTile(
        leading: Icon(
          Icons.email,
          color: Colors.teal,
        ),
        title: Text(
          'rafaelhieda@outlook.com',
          style: TextStyle(
              fontSize: 20,
              fontFamily: 'SourceSansPro',
              color: Colors.teal.shade900),
        ),
      ),
    );
  }
}

//Minha implementação inicial
class RafaEmailCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 25,
      ),
      padding: EdgeInsets.all(10.0),
      child: Row(
        children: [
          Icon(
            Icons.email,
            color: Colors.teal,
          ),
          SizedBox(width: 10),
          Text(
            'rafaelhieda@outlook.com',
            style: TextStyle(
                fontSize: 20,
                fontFamily: 'SourceSansPro',
                color: Colors.teal.shade900),
          ),
        ],
      ),
    );
  }
}

class ChallengeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                color: Colors.red,
                width: 100,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                // verticalDirection: VerticalDirection.down,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    color: Colors.yellow,
                    width: 100,
                    height: 100,
                  ),
                  Container(
                    color: Colors.green,
                    width: 100,
                    height: 100,
                  ),
                ],
              ),
              Container(
                color: Colors.blue,
                width: 100,
              ),
            ],
          ),
        ),
        backgroundColor: Colors.teal,
      ),
    );
  }
}
