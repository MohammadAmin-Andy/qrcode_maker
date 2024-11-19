import 'package:flutter/material.dart';
import 'package:qrcode_maker/constans/constans.dart';

class AppScreen extends StatefulWidget {
  AppScreen({super.key, this.userUrl});
  String? userUrl;

  @override
  State<AppScreen> createState() => _AppScreenState();
}

class _AppScreenState extends State<AppScreen> {
  String? userUrl;
  void initState() {
    // TODO: implement initState
    super.initState();
    userUrl = widget.userUrl;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'QR Code',
          style: TextStyle(
            fontFamily: 'Digital',
            fontWeight: FontWeight.w600,
            fontSize: 35,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // ClipRRect(
                  //   borderRadius: BorderRadius.circular(8),
                  //   child: Container(
                  //     child: Text('$userUrl'),
                  //     color: greyColor,
                  //   ),
                  // ),
                  SizedBox(height: 170),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      child: Image.network(
                          'https://quickchart.io/qr?text=$userUrl'),
                      //Image.network(''),
                      color: greyColor,
                      width: 300,
                      height: 300,
                    ),
                  ),
                  SizedBox(height: 10),
                  Wrap(
                      // children: [
                      //   _getDownloadQR(),
                      // ],
                      )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  //Widget _getDownloadQR() {
  //  return IconButton(
  //    iconSize: 40,
  //    color: greenColor,
  //    onPressed: () async {
  //      String url = 'https://qr-code.ir/api/qr-code/?s=5&e=M&t=P&d=$userUrl';
  //      await GallerySaver.saveImage(url, albumName: 'QRcode Maker');
  //    },
  //    icon: Icon(Icons.download),
  //  );
  //}
}
