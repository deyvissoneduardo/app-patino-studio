import 'package:flutter/material.dart';
import 'package:patino1/shared/constantes.dart';

// ignore: must_be_immutable
class DrawerWidget extends Drawer {
  BuildContext context;

  DrawerWidget(this.context)
      : super(
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text("studio"),
                accountEmail: Text("studio@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  radius: 30.0,
                  backgroundImage: NetworkImage(urlLogo),
                  backgroundColor: Colors.transparent,
                ),
              ),
              ListTile(
                  leading: Icon(Icons.account_circle),
                  title: Text("Perfil"),
                  subtitle: Text("Perfil do usuário..."),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    Navigator.pop(context);
                  })
            ],
          ),
        );
}
