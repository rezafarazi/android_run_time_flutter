import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class main_screen_stete extends StatefulWidget
{

  @override
  State<StatefulWidget> createState() => main_screen();

}

class main_screen extends State<main_screen_stete>
{

  @override
  void initState()
  {
    super.initState();

  }


  Future<void> Get_Permissions() async
  {
    var status = await Permission.camera.request();
    debugPrint("Permission is "+status.toString());
  }



  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: Center(
        child: FlatButton(
          child: Text("Click Me"),
          onPressed: Get_Permissions,
        ),
      ),
    );
  }

}