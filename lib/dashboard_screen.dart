import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _selectedIndex = 2;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Image.asset('images/ellipse.png'),
                  Column(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 34, right: 34, top: 32),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(4.0),
                              child: Image.asset(
                                'images/user.jpg',
                                width: 30,
                              ),
                            ),
                            Image.asset(
                              'images/logo.png',
                              width: 90,
                              height: 23,
                            ),
                            Image.asset(
                              'images/gear.png',
                              width: 18,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 34,
                          right: 34,
                          top: 24,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Hello, welcome',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'NunitoRegular',
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Bruno Neptune',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontFamily: 'NunitoBold',
                                  ),
                                ),
                                Text(
                                  'PT Del Sol Valley Company',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'NunitoRegular',
                                  ),
                                ),
                              ],
                            ),
                            Image.asset(
                              'images/business.png',
                              width: 150,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(left: 34, right: 34),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Search everything here...'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 34, right: 34, top: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 110,
                      width: 110,
                      child: Card(
                        elevation: 4,
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                'images/document.png',
                                width: 46,
                              ),
                              const Text(
                                'Documents',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'NunitoRegular',
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 110,
                      width: 110,
                      child: Card(
                        elevation: 4,
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                'images/template.png',
                                width: 46,
                              ),
                              const Text(
                                'Templates',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'NunitoRegular',
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 110,
                      width: 102,
                      child: Card(
                        elevation: 4,
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                'images/scan.png',
                                width: 46,
                              ),
                              const Text(
                                'Scan\nDocuments',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'NunitoRegular',
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 34,
                  right: 34,
                  top: 12,
                ),
                child: Card(
                  elevation: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          'images/workflow.png',
                          width: 46,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Workflow List',
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'NunitoRegular',
                              ),
                            ),
                            Text(
                              'you have 1 submission left to submit',
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 12,
                                fontFamily: 'NunitoRegular',
                              ),
                            ),
                          ],
                        ),
                        Image.asset('images/play.png'),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 34,
                  right: 34,
                  top: 8,
                ),
                child: Card(
                  elevation: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          'images/time.png',
                          width: 46,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Attendance',
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'NunitoRegular',
                              ),
                            ),
                            Text(
                              'Check attendance and clock in - out',
                              style: TextStyle(
                                color: Color(0xFF898B96),
                                fontSize: 12,
                                fontFamily: 'NunitoRegular',
                              ),
                            ),
                          ],
                        ),
                        Image.asset('images/play.png'),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 34),
                child: Text(
                  'Features',
                  style: TextStyle(fontSize: 14, fontFamily: 'NunitoBold'),
                  textAlign: TextAlign.left,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 34,
                  right: 34,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 110,
                      height: 110,
                      child: Card(
                        elevation: 4,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                'images/clock.png',
                                width: 46,
                              ),
                              const Text(
                                'Clocking Reports',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'NunitoRegular',
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 110,
                      height: 110,
                      child: Card(
                        elevation: 4,
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                'images/warning.png',
                                width: 46,
                              ),
                              const Text(
                                'Incident Reports',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'NunitoRegular',
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 110,
                      child: Card(
                        elevation: 4,
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                'images/sos.png',
                                width: 46,
                              ),
                              const Text(
                                'SOS Reports',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'NunitoRegular',
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              color: Colors.grey,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.article_outlined,
              color: Colors.grey,
            ),
            label: 'Docs',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.qr_code_scanner_outlined,
              color: Colors.grey,
            ),
            label: 'Scan',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings_outlined,
              color: Colors.grey,
            ),
            label: 'Settings',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline_outlined,
              color: Colors.grey,
            ),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0xFF000000),
        onTap: _onItemTapped,
      ),
    );
  }
}
