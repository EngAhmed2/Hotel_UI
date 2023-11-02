import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Nearby_Hotel> nearby = [
    Nearby_Hotel(
        name: "The Aston Vill Hotel",
        location: "Alice Springs NT 0870, Australia",
        image: "assets/Image/Aston_Hotel.png",
        period: "night",
        price: 200.7,
        rate: 5.0
    ),
    Nearby_Hotel(
        name: "Golden Pelece",
        location: "Wilora NT 0872, Australia",
        image: "assets/Image/Golden_Pelece.png",
        period: "morning",
        price: 175.3,
        rate: 4.5
    ),
    Nearby_Hotel(
        name: "The Aston Vill Hotel",
        location: "Alice Springs NT 0870, Australia",
        image: "assets/Image/Aston_Hotel.png",
        period: "night",
        price: 200.7,
        rate: 5.0
    ),
    Nearby_Hotel(
        name: "Golden Pelece",
        location: "Wilora NT 0872, Australia",
        image: "assets/Image/Golden_Pelece.png",
        period: "morning",
        price: 175.3,
        rate: 4.5
    ),
  ];

  int current_Index = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(icon:Icon(Icons.home_filled),label: "Home",),
              BottomNavigationBarItem(icon:Icon(Icons.calendar_month_rounded),label: "Schedule",),
              BottomNavigationBarItem(icon:Icon(Icons.bookmark_outlined),label: "BookMark",),
              BottomNavigationBarItem(icon:Icon(Icons.person),label: "Profile",),
            ],
          enableFeedback: true,
          type: BottomNavigationBarType.fixed,
          currentIndex: current_Index,
          onTap: (int index){
            setState(() {
              current_Index = index;
            });
          },
          showUnselectedLabels: false,
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              const SizedBox( height: 16 ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Current location",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff878787),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.location_on_rounded,
                            color: Color(0xff4C4DDC),
                            size: 23,
                          ),
                          Text(
                            "Wallace, Australia",
                            style: TextStyle(
                              color: Color(0xff101010),
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Icon(
                            Icons.keyboard_arrow_down_outlined,
                            color: Color(0xff4C4DDC),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      color: Color(0xffEDEDED),
                    ),
                    child: Icon(Icons.notifications_rounded),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Search Hotel",
                  prefixIcon: Icon(
                    Icons.search_rounded,
                    size: 30,
                  ),
                  suffixIcon: Image.asset("assets/Image/setting_Icon.png"),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffD6D6D6)),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              //Nearby your location      See all//
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Nearby your location",
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
              const SizedBox(height: 10),
              Container(
                height: 303,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: nearby.length,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 308,
                      margin: EdgeInsets.only(right: 16),
                      decoration: BoxDecoration(color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [BoxShadow(
                            color: Color(0x1212120F),
                            offset: Offset(4, 4),
                            blurRadius: 5
                        ),
                        ]
                      ),
                      child: Column(
                        children: [
                          Image.asset(
                            nearby[index].image,
                            width: 257,
                            height: 209,
                           // fit: BoxFit.fill,
                          ),
                          Container(
                            padding: EdgeInsets.all(12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                //name of Hotel and rate//
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      nearby[index].name,
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xff101010),
                                      ),
                                    ),
                                    const SizedBox(width: 35,),
                                    Icon(Icons.star,color: Colors.amber,),
                                    const SizedBox(width: 8),
                                    Text("${nearby[index].rate}")
                                  ],
                                ),

                                const SizedBox(height: 8),

                                //address of Hotel//
                                Text(
                                  nearby[index].location,
                                  style: TextStyle(
                                    color: Color(0xff878787),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),

                                 SizedBox(height: 8),

                                //price and period//
                                Row(
                                  children: [
                                    Text(
                                      "\$${nearby[index].price}",
                                      style: TextStyle(
                                        color: Color(0xff4C4DDC),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Text(
                                      "/${nearby[index].period}",
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
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 10),
              //Popular Destination       See all//
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Popular Destination",
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
              const SizedBox(height: 1),
              Container(
                height: 108,
                decoration: BoxDecoration(color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [BoxShadow(
                        color: Color(0x1212120F),
                        offset: Offset(4, 4),
                        blurRadius: 5
                    ),
                    ]
                ),
                child: Row(
                  children: [
                    Image.asset("assets/Image/Asteria_hotel_84.png"),
                    Container(
                      padding: EdgeInsets.only(top: 16 ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(width: 16),
                              Text(
                                  "Asteria hotel   ",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff101010),
                                ),
                              ),
                              SizedBox(width: 16),
                              Text(
                                "\$165.3",
                                style: TextStyle(
                                  color: Color(0xff4C4DDC),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
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
                          Container(
                            padding: EdgeInsets.only(left: 16, top: 8),
                            child: Text(
                              "Wilora NT 0872, Australia",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff878787),
                              ),
                            ),
                          ),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              const SizedBox(width: 16),
                              Container(
                                width: 5*20,
                                height: 20,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  physics: NeverScrollableScrollPhysics(),
                                  itemCount: 5,
                                  itemBuilder: (BuildContext context, int index) {
                                    return Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                      size: 20,
                                    );},
                                ),
                              ),
                              const SizedBox(width: 4),
                              Text("5.0")
                            ],
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
    );
  }
}

class Nearby_Hotel {
  final String name;
  final String location;
  final String image;
  final String period;
  final double price;
  final double rate;

  Nearby_Hotel(
      {required this.name,
      required this.location,
      required this.image,
      required this.period,
      required this.price,
      required this.rate});
}
