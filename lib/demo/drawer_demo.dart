import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        UserAccountsDrawerHeader(
          accountName:
              Text('Natrual', style: TextStyle(fontWeight: FontWeight.bold)),
          accountEmail: Text('natural@gmail.com'),
          currentAccountPicture: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://avatars2.githubusercontent.com/u/43291304?s=400&u=8f8a8f88b6a4145740aad56b2050a7f85ccbada8&v=4'),
          ),
          decoration: BoxDecoration(
              color: Colors.yellow[400],
              image: DecorationImage(
                  image: NetworkImage(
                      'https://n.sinaimg.cn/sinacn20110/567/w1887h1080/20190508/26d1-hwsffza7768928.jpg'),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.yellow[400].withOpacity(0.6),
                      BlendMode.hardLight))),
        ),
        ListTile(
          title: Text('Message', textAlign: TextAlign.right),
          trailing: Icon(Icons.message, color: Colors.black12, size: 22.0),
          onTap: () => Navigator.pop(context),
        ),
        ListTile(
          title: Text('Favorite', textAlign: TextAlign.right),
          trailing: Icon(Icons.favorite, color: Colors.black12, size: 22.0),
          onTap: () => Navigator.pop(context),
        ),
        ListTile(
          title: Text('Settings', textAlign: TextAlign.right),
          trailing: Icon(Icons.settings, color: Colors.black12, size: 22.0),
          onTap: () => Navigator.pop(context),
        )
      ],
    ));
  }
}
