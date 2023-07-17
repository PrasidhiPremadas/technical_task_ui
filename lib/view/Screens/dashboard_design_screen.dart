// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';
import 'package:thiran_ui_design/model/tile/graph_titledata.dart';

class DesignDashboard extends StatefulWidget {
  const DesignDashboard({super.key});

  @override
  State<DesignDashboard> createState() => _DesignDashboardState();
}

class _DesignDashboardState extends State<DesignDashboard> {
  bool isChecked = false;
  bool isChecked1 = false;
  bool isChecked2 = false;

  late ValueNotifier<double> valueNotifier;

  @override
  void initState() {
    super.initState();
    valueNotifier = ValueNotifier(85.0);

  }
  List<Color> gradientColors = [
  Colors.green,
  Colors.greenAccent
  ];

  bool showAvg = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_ios_new_rounded)),
                Spacer(),
                IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Dashboard Design',
                      style: GoogleFonts.akshar(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black)),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Today, Shared by - Unbox Digital',
                      style: GoogleFonts.actor(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[500])),
                  SizedBox(
                    height: 35,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        child: SimpleCircularProgressBar(
                          mergeMode: false,
                          backColor: Colors.grey.shade300,
                          progressColors: [
                            const Color.fromARGB(255, 67, 225, 149),   
                            const Color.fromARGB(255, 67, 225, 149),   
                          ],
                          valueNotifier: valueNotifier,
                          onGetText: (double value) {
                            return Text('${85}%',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),);
                          },
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Team',
                              style: GoogleFonts.actor(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black)),
                          SizedBox(
                            height: 10,
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
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            child: CircleAvatar(
                                              backgroundColor: Colors.amber[200],
                                              child: IconButton(
                                                  onPressed: () {
                                                    print('111');
                                                  },
                                                  icon: Icon(
                                                    Icons.add,
                                                    color: Colors.white,
                                                  )),
                                            )))
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Text('Deadline',
                              style: GoogleFonts.actor(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black)),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.calendar_month_outlined,
                                color: Colors.grey[500],
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text('July 25,2021-July 30,2021',
                                  style: GoogleFonts.aBeeZee(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey[500])),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Text('Project Progress',
                      style: GoogleFonts.akshar(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.black)),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: [
                      Checkbox(
                        checkColor: Colors.white,
                        fillColor: MaterialStatePropertyAll(Colors.blue[700]),
                        value: isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Current user flow',
                          style: GoogleFonts.actor(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black)),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        checkColor: Colors.white,
                        fillColor: MaterialStatePropertyAll(Colors.blue[700]),
                        value: isChecked1,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked1 = value!;
                          });
                        },
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Create wireframe',
                          style: GoogleFonts.actor(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black)),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        checkColor: Colors.white,
                        fillColor: MaterialStatePropertyAll(Colors.blue[700]),
                        value: isChecked2,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked2 = value!;
                          });
                        },
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Transform to visual design',
                          style: GoogleFonts.actor(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black)),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Text('Project Overview',
                          style: GoogleFonts.akshar(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.black)),
                      Spacer(),
                      Text('Weekly',
                          style: GoogleFonts.actor(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[500])),
                      Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: Colors.grey[500],
                      ),
                    ],
                  ),
                  SizedBox(height: 30,),
                  Container(
                 height: 250,
                 width: double.infinity,
                  child: LineChart(
            LineChartData(
              minX: 0,
              maxX: 13,
              minY: 0,
              maxY: 6,
              titlesData:LineTitles.getTitleData() ,
              
              borderData: FlBorderData(
                show: true,
                border: Border.all(color: Colors.white)
              ),
             lineBarsData: [
              LineChartBarData(
                spots: [
                  FlSpot(0, 2.5),
                  FlSpot(2, 2),
                  FlSpot(4, 4),
                  FlSpot(6, 2.5),
                  FlSpot(8, 4.5),
                  FlSpot(9.5, 3),
                  FlSpot(13, 5)
                ],
                isCurved: true,
                gradient: LinearGradient(
                  colors: gradientColors
                  ),
               barWidth: 5,
               isStrokeCapRound: true,
               dotData: const FlDotData(
                show: false,
                ),
               belowBarData: BarAreaData(
                show: true,
                
                gradient: LinearGradient(
                  colors: gradientColors
                  .map((color) => color.withOpacity(0.3))
                  .toList(),
                )
               )
              )
             ]
            )
                  ),
                )
                ],
              ),
            ),
                  ],
                ),
          )),
    );
  }
}
