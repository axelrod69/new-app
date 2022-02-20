import 'dart:ui';

import 'package:boozimba/app/models/UserModel.dart';
import 'package:boozimba/app/models/storesModel.dart';
import 'package:boozimba/app/modules/booking/view/booking_view.dart';
import 'package:boozimba/app/modules/home/views/home_tab_view.dart';
import 'package:fab_circular_menu/fab_circular_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/route_manager.dart';
import 'package:blur/blur.dart';

class StoryScreen extends StatefulWidget {
  final List<Story>? stories;

  const StoryScreen({@required this.stories});

  @override
  _StoryScreenState createState() => _StoryScreenState();
}

class _StoryScreenState extends State<StoryScreen>
    with SingleTickerProviderStateMixin {
  final GlobalKey<FabCircularMenuState> fabKey = GlobalKey();
  final GlobalKey<FabCircularMenuState> fabKeyOne = GlobalKey();
  // SystemChrome.setEnabledSystemUIOverlays([]);

  PageController? _pageController;
  AnimationController? _animController;
  // VideoPlayerController _videoController;
  int _currentIndex = 0;

  bool _isButtonPreesd = false;
  bool _isOpen = false;
  double blurValue = 0;

  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIOverlays([]);
    _pageController = PageController();
    _animController = AnimationController(vsync: this);

    final Story firstStory = widget.stories!.first;
    _loadStory(story: firstStory, animateToPage: false);

    _animController!.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _animController!.stop();
        _animController!.reset();
        setState(() {
          if (_currentIndex + 1 < widget.stories!.length) {
            _currentIndex += 1;
            _loadStory(story: widget.stories![_currentIndex]);
          } else {
            // Out of bounds - loop story
            // You can also Navigator.of(context).pop() here
            _currentIndex = 0;
            _loadStory(story: widget.stories![_currentIndex]);
          }
        });
      }
    });
  }

  @override
  void dispose() {
    _pageController!.dispose();
    _animController!.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Story story = widget.stories![_currentIndex];
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    //Bottom Circular Menu
    return Scaffold(
      // floatingActionButton: Padding(
      //   padding: EdgeInsets.only(top: height * 0.01),
      //   child: FabCircularMenu(
      //     // key: fabKeyOne,
      //     onDisplayChange: (isOpen) {
      //       // isPressed ? _pressed = true : _pressed = false;
      //       isOpen
      //           ? setState(() {
      //               blurValue = 8;
      //             })
      //           : setState(() {
      //               blurValue = 0;
      //             });
      //       print('Post Click ${blurValue}');
      //     },
      //     alignment: Alignment.topLeft,
      //     ringColor: Colors.transparent,
      //     ringDiameter: 300.0,
      //     ringWidth: 100.0,
      //     fabSize: 50.0,
      //     fabElevation: 8.0,
      //     fabColor: Colors.transparent,
      //     fabOpenIcon: Image.asset('assets/images/logo.png'),
      //     fabCloseIcon: Image.asset('assets/images/logo.png'),
      //     fabMargin: const EdgeInsets.all(25.0),
      //     animationDuration: const Duration(milliseconds: 200),
      //     animationCurve: Curves.bounceIn,
      //     children: <Widget>[
      //       Padding(
      //         padding:
      //             EdgeInsets.only(right: width * 0.03, bottom: height * 0.08),
      //         // padding:
      //         //     EdgeInsets.only(right: width * 0.04, bottom: height * 0.08),
      //         child: RawMaterialButton(
      //           onPressed: () {},
      //           shape: CircleBorder(),
      //           child: SvgPicture.asset('assets/svgs/user.svg'),
      //         ),
      //       ),
      //       Padding(
      //         padding:
      //             EdgeInsets.only(right: width * 0.07, bottom: height * 0.065),
      //         child: RawMaterialButton(
      //           onPressed: () {},
      //           shape: CircleBorder(),
      //           child: SvgPicture.asset('assets/svgs/notification.svg'),
      //         ),
      //       ),
      //       Padding(
      //         padding:
      //             EdgeInsets.only(right: width * 0.1, bottom: height * 0.03),
      //         child: RawMaterialButton(
      //           onPressed: () {},
      //           shape: CircleBorder(),
      //           child: SvgPicture.asset('assets/svgs/search.svg'),
      //         ),
      //       ),
      //       Padding(
      //         padding:
      //             EdgeInsets.only(right: width * 0.1, bottom: height * 0.001),
      //         child: RawMaterialButton(
      //           onPressed: () {},
      //           shape: CircleBorder(),
      //           child: SvgPicture.asset('assets/svgs/home.svg',
      //               color: Colors.blue),
      //         ),
      //       )
      //     ],
      //   ),
      // ),
      body: Stack(
        children: [
          GestureDetector(
            onTapDown: (details) => _onTapDown(details, story),
            child: Stack(
              children: <Widget>[
                Blur(
                  blur: blurValue,
                  colorOpacity: 0.01,
                  child: PageView.builder(
                    controller: _pageController,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: widget.stories!.length,
                    itemBuilder: (context, i) {
                      final Story story = widget.stories![i];

                      return HomeTabView(
                        backgroundImagePath: story.url!,
                      );
                    },
                  ),
                ),
                Blur(
                  blur: blurValue,
                  colorOpacity: 0.01,
                  child: Positioned(
                    top: 20.0,
                    left: 10.0,
                    right: 10.0,
                    child: Container(
                      height: height * 0.3,
                      width: double.infinity,
                      // color: Colors.red,
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: widget.stories!
                                .asMap()
                                .map((i, e) {
                                  return MapEntry(
                                    i,
                                    AnimatedBar(
                                      animController: _animController!,
                                      position: i,
                                      currentIndex: _currentIndex,
                                    ),
                                  );
                                })
                                .values
                                .toList(),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // InkWell(
          //   onTap: () => Get.toNamed("/slot-machine"),
          //   child: Center(child: SvgPicture.asset("assets/svgs/slot-icon.svg")),
          // ),
          Positioned(
            right: width * 0.02,
            child: Container(
              height: height * 0.2,
              width: width * 0.3,
              // color: Colors.red,
              child: InkWell(
                  onTap: () => Get.toNamed("/slot-machine"),
                  child: SvgPicture.asset('assets/svgs/slot-icon.svg')),
            ),
          ),
          Padding(
            padding:
                EdgeInsets.only(bottom: height * 0.05, right: width * 0.05),
            child: FabCircularMenu(
              key: fabKey,
              // Cannot be `Alignment.center`
              alignment: Alignment.bottomRight,
              // ringColor: Colors.white.withOpacity(0.1),
              ringColor: Colors.transparent,
              ringDiameter: 250.0,
              ringWidth: 60.0,
              fabSize: MediaQuery.of(context).size.width * 0.12,
              fabElevation: 8.0,
              fabIconBorder: CircleBorder(),
              fabColor: Colors.white,
              fabOpenIcon: Center(
                child: SvgPicture.asset(
                  "assets/svgs/filter-icon.svg",
                ),
              ),
              onDisplayChange: (isOpen) {
                isOpen
                    ? setState(() {
                        blurValue = 8;
                      })
                    : setState(() {
                        blurValue = 0;
                      });
              },

              fabCloseIcon: SvgPicture.asset("assets/svgs/sideBar.svg"),
              fabMargin: const EdgeInsets.all(16.0),
              animationDuration: const Duration(milliseconds: 1000),
              animationCurve: Curves.easeInOutBack,

              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: height * 0.04),
                  child: RawMaterialButton(
                    elevation: 5,
                    onPressed: () {
                      // _showSnackBar(context, "You pressed 1");
                      // Get.toNamed('/profile-page');
                    },
                    shape: CircleBorder(),
                    // padding: const EdgeInsets.all(10.0),
                    child: SvgPicture.asset("assets/svgs/ll.svg",
                        height: 45, width: 45),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: height * 0.02),
                  child: RawMaterialButton(
                    onPressed: () {
                      // _showSnackBar(context, "You pressed 2");
                    },
                    shape: CircleBorder(),
                    // padding: const EdgeInsets.all(10.0),
                    elevation: 5,
                    child: SvgPicture.asset("assets/svgs/filter-01.svg",
                        height: 50, width: 50),
                  ),
                ),
                // padding: EdgeInsets.only(left: width * 0.04, top: height * 0.005),
                Padding(
                  padding:
                      EdgeInsets.only(left: width * 0.04, top: height * 0.005),
                  child: RawMaterialButton(
                    onPressed: () => Get.toNamed("/filter"),
                    shape: CircleBorder(),
                    // padding: const EdgeInsets.all(10.0),
                    elevation: 5,
                    child: SvgPicture.asset("assets/svgs/location.svg",
                        height: 50, width: 50),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: width * 0.08, top: height * 0.015),
                  child: RawMaterialButton(
                    onPressed: () {
                      // _showSnackBar(
                      // context, "You pressed 4. This one closes the menu on tap");
                      // fabKey.currentState!.close();
                      setState(() {
                        _isButtonPreesd = !_isButtonPreesd;
                      });
                    },
                    shape: CircleBorder(),
                    // padding: const EdgeInsets.all(10.0),
                    elevation: 5,
                    // child: !_isButtonPreesd
                    //     ? SvgPicture.asset("assets/svgs/heart.svg",
                    //         height: 45, width: 45)
                    //     : IconButton(
                    //         onPressed: () => setState(() {
                    //           _isButtonPreesd = !_isButtonPreesd;
                    //         }),
                    //         icon: Icon(Icons.favorite, color: Colors.red),
                    //       ),
                    child: SvgPicture.asset("assets/svgs/heart.svg",
                        height: 45, width: 45),
                  ),
                )
              ],
            ),
          ),

          FabCircularMenu(
            key: fabKeyOne,
            onDisplayChange: (isOpen) {
              // isPressed ? _pressed = true : _pressed = false;
              isOpen
                  ? setState(() {
                      blurValue = 8;
                    })
                  : setState(() {
                      blurValue = 0;
                    });
              print('Post Click ${blurValue}');
            },
            alignment: Alignment.topLeft,
            ringColor: Colors.transparent,
            ringDiameter: 300.0,
            ringWidth: 100.0,
            fabSize: 50.0,
            fabElevation: 8.0,
            fabColor: Colors.transparent,
            fabOpenIcon: Image.asset('assets/images/logo.png'),
            fabCloseIcon: Image.asset('assets/images/logo.png'),
            fabMargin: const EdgeInsets.all(25.0),
            animationDuration: const Duration(milliseconds: 200),
            animationCurve: Curves.bounceIn,
            children: <Widget>[
              Padding(
                padding:
                    EdgeInsets.only(right: width * 0.03, bottom: height * 0.08),
                child: RawMaterialButton(
                  onPressed: () => Get.toNamed('/profile-page'),
                  shape: CircleBorder(),
                  child: SvgPicture.asset('assets/svgs/user.svg'),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    right: width * 0.07, bottom: height * 0.065),
                child: RawMaterialButton(
                  onPressed: () => Get.toNamed("/notify"),
                  shape: CircleBorder(),
                  child: SvgPicture.asset('assets/svgs/notification.svg'),
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(right: width * 0.1, bottom: height * 0.03),
                child: RawMaterialButton(
                  onPressed: () {},
                  shape: CircleBorder(),
                  child: SvgPicture.asset('assets/svgs/search.svg'),
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(right: width * 0.1, bottom: height * 0.001),
                child: RawMaterialButton(
                  onPressed: () => Get.toNamed('/home'),
                  shape: CircleBorder(),
                  child: SvgPicture.asset('assets/svgs/home.svg',
                      color: Colors.blue),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  void _onTapDown(TapDownDetails details, Story story) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double dx = details.globalPosition.dx;
    if (dx < screenWidth / 3) {
      setState(() {
        if (_currentIndex - 1 >= 0) {
          _currentIndex -= 1;
          _loadStory(story: widget.stories![_currentIndex]);
        }
      });
    } else if (dx > 2 * screenWidth / 3) {
      setState(() {
        if (_currentIndex + 1 < widget.stories!.length) {
          _currentIndex += 1;
          _loadStory(story: widget.stories![_currentIndex]);
        } else {
          // Out of bounds - loop story
          // You can also Navigator.of(context).pop() here
          _currentIndex = 0;
          _loadStory(story: widget.stories![_currentIndex]);
        }
      });
    } else {
      // if (story.media == MediaType.video) {
      //   if (_videoController.value.isPlaying) {
      //     _videoController.pause();
      //     _animController.stop();
      //   } else {
      //     _videoController.play();
      //     _animController.forward();
      //   }
      // }
    }
  }

  void _loadStory({Story? story, bool animateToPage = true}) {
    _animController!.stop();
    _animController!.reset();
    switch (story!.media!) {
      case MediaType.image:
        _animController!.duration = story.duration!;
        _animController!.forward();
        break;
      case MediaType.video:
        // _videoController = null;
        // _videoController?.dispose();
        // _videoController = VideoPlayerController.network(story.url)
        //   ..initialize().then((_) {
        //     setState(() {});
        //     if (_videoController.value.initialized) {
        //       _animController.duration = _videoController.value.duration;
        //       _videoController.play();
        //       _animController.forward();
        //     }
        //   });
        break;
    }
    if (animateToPage) {
      _pageController!.animateToPage(
        _currentIndex,
        duration: const Duration(milliseconds: 1),
        curve: Curves.easeInOut,
      );
    }
  }
}

class AnimatedBar extends StatelessWidget {
  final AnimationController? animController;
  final int? position;
  final int? currentIndex;

  const AnimatedBar({
    @required this.animController,
    @required this.position,
    @required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 1.5),
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Stack(
              children: <Widget>[
                _buildContainer(
                  double.infinity,
                  position! < currentIndex!
                      ? Colors.white
                      : Colors.white.withOpacity(0.5),
                ),
                position! == currentIndex!
                    ? AnimatedBuilder(
                        animation: animController!,
                        builder: (context, child) {
                          return _buildContainer(
                            constraints.maxWidth * animController!.value,
                            Colors.white,
                          );
                        },
                      )
                    : const SizedBox.shrink(),
              ],
            );
          },
        ),
      ),
    );
  }

  Container _buildContainer(double width, Color color) {
    return Container(
      height: 5.0,
      width: width,
      decoration: BoxDecoration(
        color: color,
        border: Border.all(
          color: Colors.black26,
          width: 0.8,
        ),
        borderRadius: BorderRadius.circular(3.0),
      ),
    );
  }
}

class UserInfo extends StatelessWidget {
  final User? user;

  const UserInfo({
    @required this.user,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        InkWell(
          onTap: () => Get.toNamed('/profile-page'),
          child: CircleAvatar(
            radius: 20.0,
            backgroundColor: Colors.grey[300],
            backgroundImage: NetworkImage(
              user!.profileImageUrl!,
            ),
          ),
        ),
        const SizedBox(width: 10.0),
        Expanded(
          child: Text(
            user!.name!,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        IconButton(
          icon: const Icon(
            Icons.close,
            size: 30.0,
            color: Colors.white,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ],
    );
  }
}
