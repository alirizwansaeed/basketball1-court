// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TrainerPost extends StatefulWidget {
  const TrainerPost({Key? key}) : super(key: key);

  @override
  _TrainerPostState createState() => _TrainerPostState();
}

class _TrainerPostState extends State<TrainerPost>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);

    _tabController.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: HorizontalDevicePadding(
          child: ElevatedButton(onPressed: () {}, child: Text('Sign Up'))),
      body: Stack(
        fit: StackFit.expand,
        children: [
          FractionallySizedBox(
            alignment: Alignment.topCenter,
            heightFactor: .3,
            child: Container(
              height: double.infinity,
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              alignment: Alignment.topLeft,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://image.freepik.com/free-photo/teenagers-basketball-field-together_23-2148800882.jpg'))),
              child: SafeArea(
                child: Row(
                  children: [
                    Icon(
                      Icons.chevron_left,
                      color: Colors.white,
                    ),
                    Spacer(),
                    Icon(
                      Icons.reply,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Icon(
                      Icons.turned_in,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
          ),
          FractionallySizedBox(
            alignment: Alignment.bottomCenter,
            heightFactor: .73,
            child: Container(
              padding: EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                color: Theme.of(context).scaffoldBackgroundColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Column(
                children: [
                  Icon(
                    Icons.maximize_rounded,
                    size: 40,
                    color: Color(0xFFDADADA),
                  ),
                  HorizontalDevicePadding(
                    child: Row(
                      children: [
                        Text(
                          'Anderson Ladd Court',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18.sp),
                        ),
                        Spacer(),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            '1.6 km',
                            style: TextStyle(fontSize: 13.sp),
                          ),
                          style: ElevatedButton.styleFrom(
                              shape: StadiumBorder(),
                              visualDensity: VisualDensity(vertical: -2)),
                        )
                      ],
                    ),
                  ),
                  HorizontalDevicePadding(
                    child: Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          size: 15.sp,
                          color: Color(0xFF908C95),
                        ),
                        SizedBox(width: 4),
                        Text(
                          '3rd Ave road, Lagos',
                          style: TextStyle(
                              color: Color(0xFF908C95), fontSize: 13.5.sp),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8),
                  HorizontalDevicePadding(
                    child: Row(
                      children: [
                        Icon(
                          Icons.star,
                          size: 18,
                          color: Color(0xFFFFCA28),
                        ),
                        SizedBox(width: 2),
                        Text(
                          '4.0',
                          style: TextStyle(
                              fontSize: 11, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 10),
                        Icon(
                          Icons.verified,
                          size: 16,
                          color: Color(0xFFFFCA28),
                        ),
                        SizedBox(width: 4),
                        Text(
                          '10% discount',
                          style: TextStyle(
                              fontSize: 11, fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Text(
                          '\$5/\$20',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14.sp),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 10.h),
                  HorizontalDevicePadding(child: Divider(height: 0)),
                  HorizontalDevicePadding(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.map_outlined,
                          size: 60.sp,
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '2156 Dr Mike Posner, North Lekki toll gate',
                                maxLines: 1,
                                style: TextStyle(
                                    color: Color(0xFF908C95), fontSize: 15.sp),
                              ),
                              SizedBox(height: 3),
                              Text(
                                'Open in map',
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    color: Theme.of(context).primaryColor),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  HorizontalDevicePadding(
                      child: Divider(
                    height: 0,
                  )),
                  SizedBox(height: 10.h),
                  HorizontalDevicePadding(
                    child: TabBar(
                      controller: _tabController,
                      isScrollable: true,
                      indicator: UnderlineTabIndicator(
                        borderSide:
                            BorderSide(color: Color(0xFFFFBF00), width: 6),
                        insets: EdgeInsets.only(
                          right: _tabController.index == 3 ? 5 : 40.w,
                          left: 5,
                        ),
                      ),
                      labelColor: Colors.black,
                      unselectedLabelColor: Colors.grey,
                      indicatorWeight: 6,
                      padding: EdgeInsets.zero,
                      indicatorSize: TabBarIndicatorSize.label,
                      labelStyle: TextStyle(
                          fontSize: 13.sp, fontWeight: FontWeight.w500),
                      labelPadding:
                          EdgeInsets.only(bottom: 6, right: 0, left: 0),
                      tabs: [
                        TabBarLabel('Trainer'),
                        TabBarLabel('About Court'),
                        TabBarLabel('Reviews'),
                        Text('Opening Hours'),
                      ],
                    ),
                  ),
                  Divider(height: 0),
                  Expanded(
                    child: TabBarView(controller: _tabController, children: [
                      ListView(
                        padding: EdgeInsets.only(top: 20.h),
                        children: [
                          HorizontalDevicePadding(
                            child: Row(
                              children: [
                                CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      'https://image.freepik.com/free-photo/handsome-young-man-with-new-stylish-haircut_176420-19637.jpg'),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Shardark Simeon",
                                        maxLines: 1,
                                        style: TextStyle(
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black),
                                      ),
                                      Text(
                                        "115 Trainings 23 Followers",
                                        maxLines: 1,
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 12.sp),
                                      ),
                                    ],
                                  ),
                                ),
                                Icon(
                                  Icons.maps_ugc_outlined,
                                  size: 25.sp,
                                  color: Theme.of(context).primaryColor,
                                ),
                                SizedBox(width: 10.w),
                                OutlinedButton(
                                  style: OutlinedButton.styleFrom(
                                    shape: StadiumBorder(),
                                    side: BorderSide(
                                        color: Theme.of(context).primaryColor),
                                    visualDensity: VisualDensity(vertical: -2),
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    'Follow',
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        color: Color(0xFF5C5BDC)),
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          HorizontalDevicePadding(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Featured",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15.sp,
                                      color: Colors.black),
                                ),
                                Text(
                                  "See all",
                                  style: TextStyle(
                                    color: Color(0xFFFFBF00),
                                    fontSize: 13.sp,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10.h),
                          SizedBox(
                            height: 200.h,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              padding: EdgeInsets.only(left: 15),
                              itemBuilder: (context, index) => Card(
                                margin: EdgeInsets.only(right: 15),
                                clipBehavior: Clip.hardEdge,
                                child: SizedBox(
                                  width: 210.w,
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          'Training available for 50 slot at Anderson Ladd Court by Shardark Simeon',
                                          style: TextStyle(
                                              fontSize: 14.sp,
                                              color: Color(0xFF74707B)),
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                      Expanded(
                                        child: SizedBox(
                                          width: double.infinity,
                                          child: Image.network(
                                            'https://image.freepik.com/free-photo/cool-black-man-doing-sports-playing-basketball-sunrise-jumping-silhouette_285396-1438.jpg',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(color: Colors.amber),
                      Container(color: Colors.purple),
                      Container(color: Colors.green),
                    ]),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TabBarLabel extends StatelessWidget {
  final String text;
  const TabBarLabel(
    this.text,
  );

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(text),
        SizedBox(
          width: 35.w,
        )
      ],
    );
  }
}

class HorizontalDevicePadding extends StatelessWidget {
  final Widget child;
  const HorizontalDevicePadding({
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.symmetric(horizontal: 15), child: child);
  }
}
