import 'package:flutter/material.dart';
import 'package:qrcode_maker/constans/constans.dart';
import 'package:qrcode_maker/screens/appScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String userUrl = '';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: greyColor,
        appBar: AppBar(
          backgroundColor: lightBlueColor,
          centerTitle: true,
          title: Text(
            'QR Code Maker',
            style: TextStyle(
                fontFamily: 'Digital',
                fontWeight: FontWeight.w600,
                fontSize: 35),
          ),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.asset(
                    'images/logo1.jpg',
                    width: 250,
                  ),
                ),
                SizedBox(height: 25),
                //SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    onChanged: (value) {
                      setState(() {
                        userUrl = value;
                      });
                    },
                    cursorColor: darkBlack,
                    decoration: InputDecoration(
                        hintText: 'past or write your Url',
                        hintStyle: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide:
                              BorderSide(width: 2, style: BorderStyle.none),
                        ),
                        filled: true,
                        fillColor: greyColor),
                  ),
                ),
                //SizedBox(height: 15),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    backgroundColor: darkBlack,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => AppScreen(userUrl: userUrl)),
                      ),
                    );
                  },
                  child: Text(
                    'Generate QRCode',
                    style: TextStyle(
                      color: whiteColor,
                      fontSize: 20,
                    ),
                  ),
                ),
                // Column(
                //   children: [
                //     OutlinedButton(
                //       style: OutlinedButton.styleFrom(
                //         backgroundColor: darkBlack,
                //         maximumSize: Size(500, 100),
                //       ),
                //       onPressed: () {
                //         Navigator.push(
                //           context,
                //           MaterialPageRoute(
                //             builder: ((context) => appScreen()),
                //           ),
                //         );
                //       },
                //       child: Text(
                //         'QR for Url',
                //         style: TextStyle(color: whiteColor),
                //       ),
                //     ),
                //     // _getUrlQrButton(),
                //   ],
                // )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
