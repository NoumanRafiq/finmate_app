import 'package:finmate_app/screens/reusables/home_tabview_list.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    // TODO: implement initState
    controller = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          spacing: 16,
          children: [
            AppBar(
              // toolbarHeight: 200,
              // backgroundColor: Colors.red.shade200,
              leading: CircleAvatar(child: Icon(Icons.person)),
              title: Container(
                // padding: EdgeInsets.all(10),
                // color: Colors.red,
                child: Column(
                  spacing: 4,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Welcome back!', style: TextStyle(fontSize: 16)),
                    Text('Theodore', style: TextStyle(fontSize: 15)),
                  ],
                ),
              ),
              actions: [
                IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.more_vert_rounded),
                ),
              ],
            ),
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  width: double.infinity,
                  height: size.width / 1.3,
                  decoration: BoxDecoration(
                    color: Colors.teal.shade700,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Center(
                    child: Text(
                      'Chart',
                      style: TextStyle(fontSize: 22, color: Colors.white),
                    ),
                  ),
                ),
                Positioned(
                  bottom: -45,
                  child: Container(
                    width: size.width / 1.3,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black38,
                          blurRadius: 12,
                          spreadRadius: 2,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Row(
                      spacing: 5,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'income',
                              style: TextStyle(color: Colors.green, fontSize: 19, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '+\$344',
                              style: TextStyle(color: Colors.green, fontSize: 19, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'expense',
                              style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                                fontSize: 19,
                              ),
                            ),
                            Text(
                              '-\$128',
                              style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                                fontSize: 19,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'shift',
                              style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                fontSize: 19,
                              ),
                            ),
                            Text(
                              '-\$128',
                              style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                fontSize: 19,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Transactions',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    spacing: 7,
                    children: [
                      Icon(Icons.calendar_month),
                      Text(
                        '27/08/2025',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Icon(Icons.arrow_drop_down),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              // width: 100,
              // height: 50,
              decoration: BoxDecoration(
                color: Colors.teal.shade600,
                borderRadius: BorderRadius.circular(50),
              ),
              child: TabBar(
                // isScrollable: true,
                controller: controller,
                dividerColor: Colors.transparent,
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                labelStyle: TextStyle(fontWeight: FontWeight.bold),
                unselectedLabelStyle: TextStyle(color: Colors.black),
                indicator: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  color: Colors.white,
                ),
                // labelPadding: EdgeInsets.all(10),
                indicatorSize: TabBarIndicatorSize.tab,
                tabAlignment: TabAlignment.fill,
                tabs: [
                  Tab(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [Icon(Icons.receipt), Text('Upcoming')],
                    ),
                  ),
                  Tab(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.health_and_safety),
                        Text(
                          'Health',
                          overflow: TextOverflow.fade,
                          maxLines: 1,
                        ),
                      ],
                    ),
                  ),
                  Tab(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.build),
                        Text(
                          'Utilities',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: controller,
                children: [
                  HomeTabViewList(
                    title: 'Upcoming',
                    typeOfBill: 'Electricity Bill',
                  ),
                  HomeTabViewList(
                    title: 'Health',
                    typeOfBill: 'Health Checkup',
                  ),
                  HomeTabViewList(title: 'Utilities'),
                  // HomeTabViewList(title: 'Utilities'),
                  // HomeTabViewList(title: 'Utilities'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
