import 'package:flutter/material.dart';
import 'package:boozimba/app/utils/signIn_signUp.dart';
import 'package:get/get.dart';

class ImagePreViewWidget extends StatelessWidget {
  final List<String> images = [
    "https://www.fabhotels.com/blog/wp-content/uploads/2018/10/Irish-House.jpg",
    "https://www.jointhegrid.in/wp-content/uploads/2018/05/Lego_Bar-1.jpg",
    "https://www.dineout.co.in/blog/wp-content/uploads/2019/08/1505109_300571723430399_1477425614_n-700x400.jpg"
  ];

  // ImagePreViewWidget({this.images});
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var responsive =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;

    return Scaffold(
      backgroundColor: Colors.black,
      body: PageView.builder(
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Stack(
            children: [
              Center(
                child: Container(
                  child: Image.network(images[index]),
                ),
              ),
              Positioned(
                top: responsive * 0.04,
                left: width * 0.002,
                child: IconButton(
                  onPressed: () => Get.back(),
                  icon: Icon(Icons.keyboard_arrow_left,
                      size: 40, color: Colors.white),
                ),
              )
              // child: Container(
              //   height: responsive * 0.05,
              //   width: width * 0.1,
              //   padding: EdgeInsets.only(left: 5),
              //   decoration: BoxDecoration(
              //       border: Border.all(color: Colors.white, width: 1),
              //       borderRadius: BorderRadius.only(
              //           topLeft: Radius.circular(6),
              //           topRight: Radius.circular(6),
              //           bottomLeft: Radius.circular(6),
              //           bottomRight: Radius.circular(6))),
              //   child: CustomPaint(
              //     painter: SignBoxPainter(),
              //     child: Icon(Icons.arrow_back_ios, //This here is the icon
              //         color: Colors.white,
              //         size: 15),
              //   ),
              // ),
            ],
          );
        },
      ),
    );
  }
}
