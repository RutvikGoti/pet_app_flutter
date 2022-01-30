
import 'package:flutter/material.dart';
import 'package:pet_app_flutter/configuration/configuration.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      color: primaryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
            child: ListTile(
              leading: const CircleAvatar(
                backgroundImage:  AssetImage('images/pet_cat1.png'),
              ),
              title: Text(
                'Rutvik Goti',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey[200],
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                ),
              ),
              subtitle: Text(
                'Active status',
                style: TextStyle(
                  color: Colors.grey[500],
                  fontWeight: FontWeight.bold,
                  letterSpacing: .7,
                ),
              ),
            ),
          ),
          Column(
            children: navList
                .map((e) => ListTile(
                      leading: Icon(
                        e['icon'],
                        color: Colors.grey[500],
                      ),
                      title: Text(
                        e['title'],
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[500],
                          fontSize: 18.0,
                        ),
                      ),
                    ))
                .toList(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: ListTile(
                  leading: Icon(
                    Icons.settings,
                    color: Colors.grey[500],
                  ),
                  title: Text(
                    'Settings',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[500],
                      fontSize: 18.0,
                    ),
                  ),
                  minLeadingWidth: 10,
                ),
              ),
              Container(
                width: 1.5,
                height: 15,
                color: Colors.grey[500],
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                flex: 3,
                child: Text(
                  'Log out',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[500],
                    fontSize: 18.0,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
