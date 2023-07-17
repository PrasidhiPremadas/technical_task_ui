// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';

class AllTile extends StatefulWidget {
  String topic;
  String detail;
  var date;
  double percentage;
  Color color;
  AllTile({
    super.key,
    required this.topic,
    required this.detail,
    required this.date,
    required this.percentage,
    required this.color
  });
  
  

  @override
  State<AllTile> createState() => _AllTileState();
}


class _AllTileState extends State<AllTile> {

  late ValueNotifier<double> valueNotifier;
  @override
  void initState() {
  valueNotifier = ValueNotifier(widget.percentage);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.topic,
              style: GoogleFonts.actor(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  color: Colors.black),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              widget.detail,
              style: GoogleFonts.actor(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.grey[400]),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Team',
              style: GoogleFonts.actor(
                  fontSize: 23,
                  fontWeight: FontWeight.w700,
                  color: Colors.grey[700]),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Container(
                  height: 40,
                  width: 120,
                  child: Stack(
                    children: [
                      Positioned(
                          child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.network(
                            'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MXw3NjA4Mjc3NHx8ZW58MHx8fHx8&w=1000&q=80',
                            height: 40),
                      )),
                      Positioned(
                          left: 20,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.network(
                                'https://stylesatlife.com/wp-content/uploads/2019/09/Hairstyles-for-Square-Face-Men-12.jpg',
                                height: 40),
                          )),
                      Positioned(
                          left: 40,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.network(
                              'https://machohairstyles.com/wp-content/uploads/2017/03/haircut-for-men-with-square-faces-9.jpg',
                              height: 40,
                            ),
                          )),
                      Positioned(
                          left: 60,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.network(
                                'https://qph.cf2.quoracdn.net/main-qimg-ffa070f2f9fb353c82a1df596fd624bb-lq',
                                height: 40),
                          )),
                      Positioned(
                          left: 70,
                          child: ClipRRect(
                            
                            borderRadius: BorderRadius.circular(50),
                            child: CircleAvatar(
                              backgroundColor: Colors.amber[200],
                              child: IconButton(
                                onPressed: () {
                                print('111');
                              }, icon: Icon(Icons.add,color: Colors.white,)),
                            )
                          ) 
                          )
                    ],
                  ),
                ),
                Spacer(),
                SizedBox(
                  height: 80,
                  width: 80,
                  child: SimpleCircularProgressBar(
                          mergeMode: false,
                          backColor: Colors.grey.shade300,
                          progressColors: [
                           widget.color
                          ],
                          valueNotifier:valueNotifier ,
                          onGetText: (double value) {
                            return Text("${widget.percentage.toInt()}%",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),);
                          },
                        ),
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Icon(Icons.calendar_month_outlined),
                Text(
                  widget.date,
                  style: GoogleFonts.actor(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.grey[400]),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
