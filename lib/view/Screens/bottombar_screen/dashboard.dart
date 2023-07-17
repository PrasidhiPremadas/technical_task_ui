// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../model/tile/progress_tile.dart';
import '../../../model/tile/task_tile.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child:Image.network('https://img.freepik.com/free-vector/it-takes-two-tango-idiom_1308-17930.jpg',fit: BoxFit.cover,height: 45,),
                  ),
                  radius: 30,
                  backgroundColor: Colors.grey[350],
                ),
                Spacer(),
                IconButton(
                onPressed: (){}, 
                icon: Icon(Icons.search,size: 35,)
                )
              ],
            ),
           SizedBox(height: 25,),
            Text('Hello',
            style: GoogleFonts.actor(
              fontSize: 25,
              fontWeight: FontWeight.w700,
              color: Colors.grey[600]
              )
            ),
            SizedBox(height: 15,),
            Text('Alex Marconi',
            style: GoogleFonts.akshar(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: Colors.black
              )
            ),
            SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ProgressTile(color: Colors.orange, icon: Icons.access_time, text: 'In Progress' ,),
                 ProgressTile(color: Colors.blue[800], icon: Icons.access_time, text: 'Ongoing')
              ],
            ),
            SizedBox(height: 20,),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ProgressTile(color: const Color.fromARGB(255, 99, 207, 103), icon: Icons.file_open_outlined, text: 'Completed'),
                 ProgressTile(color: const Color.fromARGB(255, 219, 77, 67), icon: Icons.access_time, text: 'Cancel')
              ],
            ),
            SizedBox(height: 25,),
            Row(
              children: [
                Text('Daily Task',style: GoogleFonts.akshar(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black
               )
               ),
               Spacer(),
               Text('All Task',style: GoogleFonts.akshar(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.grey[600]
              )),
               Icon(Icons.keyboard_arrow_down_outlined,size: 30,color: Colors.grey[600],)
              ],
            ),
            SizedBox(height: 30,),
            TaskTile(
              value: 0.6,
              image: 'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MXw3NjA4Mjc3NHx8ZW58MHx8fHx8&w=1000&q=80',
              image1: 'https://stylesatlife.com/wp-content/uploads/2019/09/Hairstyles-for-Square-Face-Men-12.jpg',
              image2: 'https://machohairstyles.com/wp-content/uploads/2017/03/haircut-for-men-with-square-faces-9.jpg',
             text: 'App Animation',color: Color.fromARGB(255, 17, 115, 196), ),
             SizedBox(height: 10,),
             TaskTile(
              value: 0.8,
              image: 'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MXw3NjA4Mjc3NHx8ZW58MHx8fHx8&w=1000&q=80',
              image1: 'https://stylesatlife.com/wp-content/uploads/2019/09/Hairstyles-for-Square-Face-Men-12.jpg',
              image2: 'https://machohairstyles.com/wp-content/uploads/2017/03/haircut-for-men-with-square-faces-9.jpg',
             text: 'Dashboard Design',color: Colors.green, 
            //  ontap: Navigator.push(context, MaterialPageRoute(builder: (context) => DesignDashboard(),)),
            ),
             SizedBox(height: 10,),
             TaskTile(
              value: 0.5,
              image: 'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MXw3NjA4Mjc3NHx8ZW58MHx8fHx8&w=1000&q=80',
              image1: 'https://stylesatlife.com/wp-content/uploads/2019/09/Hairstyles-for-Square-Face-Men-12.jpg',
              image2: 'https://machohairstyles.com/wp-content/uploads/2017/03/haircut-for-men-with-square-faces-9.jpg',
             text: 'UI/UX Design',color: Colors.orangeAccent, )
          ],
             
           ),
        ),
      ),
    );
  }
}