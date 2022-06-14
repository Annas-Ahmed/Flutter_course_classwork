import 'package:flutter/material.dart';

listTileFunction(title,message){
          return Column(
            children: [
              ListTile(
              tileColor: Colors.grey,
                leading: CircleAvatar(
                  backgroundColor: Colors.lightGreen,
                  radius: 20,
                ),
                title: Text(title),
                subtitle: Text(message),
                trailing: Text("12:17 AM"),
                // trailing: Icon(Icons.abc)
                //  Icon(Icons.arrow_forward),
                ),
            SizedBox(height: 2,)
            ],
          );
}