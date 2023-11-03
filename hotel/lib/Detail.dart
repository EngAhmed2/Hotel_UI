import 'package:flutter/material.dart';
import 'package:hotel/Home%20v2.dart';
//import 'package:hotel/Home.dart';

class Detail extends StatefulWidget {
  const Detail({super.key});

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // button back & Detail & more button//
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
                  //text Detail 
                  Container(
                    child: Text(
                        'Detail',
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
                    child: Image.asset('assets/Icon/more.png',color: Color(0xff101010)),),
                ],
              ),

              //image of hotel//
              Container(
                height: 240,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(top: 16, bottom: 16),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset('assets/Image/Aston_Hotel.png', fit: BoxFit.fill,),
                ),
              ),

              //free wifi & free breakfast & rate 5.0//
              Row(
                children: [
                  Container(
                    height: 36,
                    width: 95,
                    margin: EdgeInsets.only(bottom: 16, right: 8),
                    decoration: BoxDecoration(
                      color: Color(0xB3F5F5FF),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.wifi),
                        Text('Free Wifi',style:
                          TextStyle(fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff101010),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 36,
                    width: 130,
                    margin: EdgeInsets.only(bottom: 16, right: 8),
                    decoration: BoxDecoration(
                      color: Color(0xB3F5F5FF),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.coffee),
                        Text('Free Breakfast',style:
                          TextStyle(fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff101010),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 36,
                    width: 70,
                    margin: EdgeInsets.only(bottom: 16),
                    decoration: BoxDecoration(
                      color: Color(0xB3F5F5FF),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.star,color: Colors.amber),
                        Text('5.0',style:
                          TextStyle(fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff101010),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              //Hotel name & price//
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //Hotel name//
                  Text('The Aston Vill Hotel',
                    style: TextStyle(
                      color: Color(0xff101010),
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),

                  //price & period//
                  Row(
                    children: [
                      Text("\$200.7",
                        style: TextStyle(
                          color: Color(0xff4C4DDC),
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text("/night",
                        style: TextStyle(
                          color: Color(0xff878787),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 8),
              //Location//
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Icon(Icons.location_on_rounded, color: Color(0xff4C4DDC),size: 15,),
                  Text('Alice Springs NT 0870, Australia',
                    style: TextStyle(
                        color: Color(0xff878787),
                        fontSize: 12,
                        fontWeight: FontWeight.w400
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              const SizedBox(height: 16),
              //Description//
              Text('Description',
                style: TextStyle(
                  color: Color(0xff101010),
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Aston Hotel, Alice Springs NT 0870,\nAustralia is a modern hotel. elegant 5\nstar hotel overlooking the sea. perfect\nfor a romantic, charming',
                    style: TextStyle(
                      color: Color(0xff878787),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 2),
                    child: InkWell(
                      onTap: () {  },
                      child:Text(
                        'Read More. . .',
                        style: TextStyle(
                          color: Color(0xff4C4DDC),
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),

                ],
              ),
              const SizedBox(height: 16),
              //Preview//
              Text(
                'Preview',
                style: TextStyle(
                  color: Color(0xff101010),
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      'assets/Image/Preview_1_AstonVill.png',
                      height: 90,
                      width: 98,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      'assets/Image/Preview_2_AstonVill.png',
                      height: 90,
                      width: 98,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      'assets/Image/Preview_3_AstonVill.png',
                      height: 90,
                      width: 98,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                  onPressed: (){},
                  child: Text(
                    'Booking Now',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.center,
                  ),
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(MediaQuery.of(context).size.width, 53),
                  backgroundColor: Color(0xFF4C4DDC),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
