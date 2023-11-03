import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

import 'Detail.dart';
import 'Home v2.dart';

class Schedule extends StatefulWidget {
  const Schedule({super.key});

  @override
  State<Schedule> createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule> {
  int current_Index =1;
  List<Widget> Screens = [
    Home_V2(),
    Schedule(),
  ];
  DateTime today = DateTime.now();

  Future<dynamic> Screen(int index) async {
    if(index >=2)
      return;
    return Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (BuildContext context)=> Screens[index]),);
  }
  void _onDaySelected(DateTime day, DateTime focusedDay){
      setState(() {
        today = day;
      });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_filled),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month_rounded),
                label: "Schedule",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.bookmark_outlined),
                label: "BookMark",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Profile",
              ),
            ],
            enableFeedback: true,
            type: BottomNavigationBarType.fixed,
            currentIndex: current_Index,
            onTap: (int index) {
              setState(() {
                current_Index = index;
                Screen(index);
              });
            },
            showUnselectedLabels: false,
          ),
          body: Container(
            margin: EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                // button back & Schedule & setting button//
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // button back
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                                builder: (BuildContext context){
                                  return Home_V2();
                                }),
                          );// pushReplacement
                        });// setState
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        margin: EdgeInsets.only(top: 12, bottom: 12, right: 12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: Color(0xffEDEDED),
                          ),
                        ),
                        child: Icon(Icons.arrow_back_ios_new_rounded,color: Color(0xff101010)),
                      ),
                    ),
                    //text Schedule
                    Container(
                      child: Text(
                        'Schedule',
                        style: TextStyle(
                            color: Color(0xff101010),
                            fontSize: 20,
                            fontWeight: FontWeight.w700
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    // more button
                    Container(
                      height: 40,
                      width: 40,
                      margin: EdgeInsets.only(top: 12, bottom: 12, left: 12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: Color(0xffEDEDED),
                        ),
                      ),
                      child: Icon(Icons.settings,color: Color(0xff101010),),
                    ),
                  ],
                ),
               //calender//
                Container(
                  margin: EdgeInsets.symmetric(vertical: 24),
                  color: Color(0x80F5F5FF),
                  child: TableCalendar(
                    rowHeight: 40,
                    locale: 'en-US',
                      headerStyle: HeaderStyle(
                        formatButtonVisible: false,
                        titleCentered: true,
                      ),
                      selectedDayPredicate: (day) => isSameDay(day, today),
                      availableGestures: AvailableGestures.all,
                      onDaySelected: _onDaySelected,
                      focusedDay: today,
                      firstDay: DateTime.utc(2002,09,30),
                      lastDay: DateTime.utc(2032,09,30),
                 ),
                ),
                //My Schedule       See all//
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "My Schedule",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff101010),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "See all",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff4C4DDC),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 16),
                  height: 108,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                            color: Color(0x1212120F),
                            offset: Offset(4, 4),
                            blurRadius: 5),
                      ]),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (
                                BuildContext context)=> Detail()
                          ),
                        );
                      });
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset("assets/Image/Asteria_hotel_84.png"),
                        Container(
                          padding: EdgeInsets.only(top: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //Name & Price/night//
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(width: 16),
                                  
                                  //Name of Hotel//
                                  Text(
                                    "Asteria hotel   ",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xff101010),
                                    ),
                                  ),
                                  
                                  SizedBox(width: 16),
                                  
                                  //Price//
                                  Text(
                                    "\$165.3",
                                    style: TextStyle(
                                      color: Color(0xff4C4DDC),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  
                                  //Period//
                                  Text(
                                    "/night",
                                    style: TextStyle(
                                      color: Color(0xff878787),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              
                              const SizedBox(height: 8),
                              
                              //Location of Hotel//
                              Container(
                                width: 168,
                                padding: EdgeInsets.only(left: 16, top: 6),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      Icons.location_on_outlined,
                                      size: 20,
                                      color: Color(0xff4c4ddc),
                                    ),
                                    Text(
                                      "Wilora NT 0872, Australia",
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff878787),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              
                              const SizedBox(height: 8),
                              //Schedule date//
                              Container(
                                width: 131,
                                padding: EdgeInsets.only(left: 16, top: 6),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      Icons.calendar_month_outlined,
                                      size: 20,
                                      color: Color(0xff4c4ddc),
                                    ),
                                    Text(
                                      "27 December 2023",
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff878787),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 16),
                  height: 108,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                            color: Color(0x1212120F),
                            offset: Offset(4, 4),
                            blurRadius: 5),
                      ]),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (
                                  BuildContext context)=> Detail()
                          ),
                        );
                      });
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset("assets/Image/Golden_Pelece_84.png"),
                        Container(
                          padding: EdgeInsets.only(top: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //Name & Price/night//
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(width: 16),

                                  //Name of Hotel//
                                  Text(
                                    "Golden Pelece ",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xff101010),
                                    ),
                                  ),

                                  SizedBox(width: 16),

                                  //Price//
                                  Text(
                                    "\$175.3",
                                    style: TextStyle(
                                      color: Color(0xff4C4DDC),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),

                                  //Period//
                                  Text(
                                    "/night",
                                    style: TextStyle(
                                      color: Color(0xff878787),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),

                              const SizedBox(height: 8),

                              //Location of Hotel//
                              Container(
                                width: 168,
                                padding: EdgeInsets.only(left: 16, top: 6),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      Icons.location_on_outlined,
                                      size: 20,
                                      color: Color(0xff4c4ddc),
                                    ),
                                    Text(
                                      "Wilora NT 0872, Australia",
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff878787),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              const SizedBox(height: 8),
                              //Schedule date//
                              Container(
                                width: 131,
                                padding: EdgeInsets.only(left: 16, top: 6),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      Icons.calendar_month_outlined,
                                      size: 20,
                                      color: Color(0xff4c4ddc),
                                    ),
                                    Text(
                                      "19 December 2023",
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff878787),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }
}
