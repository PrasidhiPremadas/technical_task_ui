// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:thiran_ui_design/view/Screens/bottombar_screen/dashboard.dart';
import 'package:thiran_ui_design/view/Screens/bottombar_screen/mail_screen.dart';
import 'package:thiran_ui_design/view/Screens/bottombar_screen/setting_screen.dart';
import 'package:thiran_ui_design/view/Screens/project_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //create a index for bottombar 
  int selectedIndex = 0;
 //create list of screens for bottombar
  List<Widget> screen = [
    DashboardScreen(),
    ProjectScreen(),
    MailScreen(),
    SettingScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: SizedBox(
          height: 65,
          width: 65,
          child: FloatingActionButton(
            
            backgroundColor: Colors.blue[800],
            onPressed: () {},
            elevation: 5,
            child: Icon(Icons.add),
          ),
        ),
        bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30)
          ),
          child: BottomAppBar(
            height: 70,
            
            shape: CircularNotchedRectangle(),
            notchMargin: 7,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                    onPressed: () {
                      setState(() {
                        //while calling index it will move to the what postition we are given
                        //if its 0 it will move to dashboard screen. 
                        selectedIndex = 0;
                        print(selectedIndex);
                      });
                    },
                    icon: Icon(
                      Icons.home_rounded,
                      size: 30,
                      color: selectedIndex == 0 ? Colors.blue[800] : Colors.grey,
                    )),
                IconButton(
                    onPressed: () {
                      setState(() {
                        selectedIndex = 1;
        
                        print(selectedIndex);
                      });
                    },
                    icon: Icon(
                      Icons.file_copy_rounded,
                      size: 25,
                      color: selectedIndex == 1 ? Colors.blue[800] : Colors.grey,
                    )),
                    SizedBox(width: 50,),
                IconButton(
                    onPressed: () {
                      setState(() {
                        selectedIndex=2;
                      });
                    },
                    icon: Icon(
                      Icons.mail,
                      size: 25,
                      color: selectedIndex == 2 ? Colors.blue[800] : Colors.grey,
                    )),
                IconButton(
                    onPressed: () {
                      setState(() {
                        selectedIndex=3;
                      });
                    },
                    icon: Icon(
                      Icons.settings,
                      size: 25,
                      color: selectedIndex == 3 ? Colors.blue[800] : Colors.grey,
                    )
                  ),
              ],
            ),
          ),
        ),
        //i return screen selectedindex which means dashboardscreen
        body: screen[selectedIndex]);
  }
}
