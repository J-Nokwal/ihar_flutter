import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ihar_flutter/core/injection.dart';
import 'package:ihar_flutter/core/modals/userModal.dart';
import 'package:ihar_flutter/core/requests/userRequests.dart';
import 'package:ihar_flutter/features/homeScreen/screens/Drawer.dart';
import 'package:ihar_flutter/features/feed/screens/FeedTiles.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../core/firebase_classes/firebase_auth.dart';
import '../../feed/bloc/feed_bloc/feed_bloc.dart';
import '../../login/bloc/sign_in_screen_bloc/sign_in_screen_bloc.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  ScrollController scrollController = ScrollController();
  FloatingSearchBarController floatingSearchBarController = FloatingSearchBarController();
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(

        // maxMobileWidth: 7000,
        builder: (context, orientation, screentype) {
      if (Device.screenType == ScreenType.mobile) {
        floatingSearchBarController.hide();
      } else {
        floatingSearchBarController.show();
      }
      // if (Device.screenType == ScreenType.mobile) {
      //   return Scaffold(
      //     drawer: Drawer(child: AppDrawer()),
      //     body: _HomeBody(floatingSearchBarController: floatingSearchBarController, scrollController: scrollController),
      //   );
      // }
      SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.white,
      ));
      return Scaffold(
        drawer: (Device.screenType == ScreenType.mobile) ? Drawer(child: AppDrawer()) : null,
        body: SearchBar(
          floatingSearchBarController: floatingSearchBarController,
          scrollController: scrollController,
          child:
              _HomeBody(floatingSearchBarController: floatingSearchBarController, scrollController: scrollController),
        ),
      );
    });
  }
}

class SearchBar extends StatefulWidget {
  SearchBar({Key? key, required this.child, required this.scrollController, required this.floatingSearchBarController})
      : super(key: key);
  final Widget child;
  final ScrollController scrollController;
  final FloatingSearchBarController floatingSearchBarController;

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  List<dynamic> ls = ["sd", "sdss", "sss"];
  final ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    bool isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;
    return FloatingSearchBar(
      controller: widget.floatingSearchBarController,
      hint: 'Search...',
      scrollPadding: const EdgeInsets.only(top: 16, bottom: 56),

      transitionDuration: const Duration(milliseconds: 50),
      transitionCurve: Curves.easeInOut,
      physics: const BouncingScrollPhysics(),
      // axisAlignment: isPortrait ? 0.0 : -1.0,
      openAxisAlignment: 0.0,
      // width: (ScreenType.tablet == Device.screenType) ? 250 : 700,
      width: (ScreenType.tablet == Device.screenType) ? 27.w : 100.w,
      debounceDelay: const Duration(milliseconds: 200),
      // isScrollControlled: true,
      scrollController: scrollController,

      automaticallyImplyBackButton: false,
      initiallyHidden: (ScreenType.mobile == Device.screenType),
      automaticallyImplyDrawerHamburger: false,

      leadingActions: [
        FloatingSearchBarAction.icon(icon: const Icon(Icons.search), onTap: () {}),
        FloatingSearchBarAction.back(showIfClosed: false)
      ],
      actions: [
        FloatingSearchBarAction.searchToClear(
          showIfClosed: false,
        ),
      ],
      transition: CircularFloatingSearchBarTransition(),
      onFocusChanged: (isUnfocused) {
        if (!isUnfocused) {
          if (Device.screenType == ScreenType.mobile) {
            widget.floatingSearchBarController.hide();
          }
        }
      },
      onSubmitted: (String query) {
        // BlocProvider.of<SearchBloc>(context)..add(SearchVideosPressButton(query: query));
        Navigator.of(context).pushNamed('/home/searchResults', arguments: query);
        widget.floatingSearchBarController.close();
        if (Device.screenType == ScreenType.mobile) {
          widget.floatingSearchBarController.hide();
        }
      },
      clearQueryOnClose: true,
      onQueryChanged: (String query) async {
        if (query == "") {
          setState(() {
            ls = [];
          });
          return;
        }
        // Call your model, bloc, controller here.
        final Response response = await Dio().get(
          "https://suggestqueries.google.com/complete/search",
          queryParameters: {
            "client": "firefox",
            "ds": "yt",
            "q": query,
          },
          options: Options(
            headers: {
              "Access-Control-Allow-Origin": "*",
              "Access-Control-Allow-Headers": "Content-Type",
              "Referrer-Policy": "no-referrer-when-downgrade",
            },
          ),
        );
        List<dynamic> data = jsonDecode(response.data) as List<dynamic>;
        // debugPrint(data[1]);
        setState(() {
          ls = data[1] as List<dynamic>;
        });
      },
      elevation: 1,
      builder: (context, transition) {
        if (ls.isEmpty) {
          return Container();
        }
        return ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Material(
            color: Colors.white,
            elevation: 4.0,
            child: ListView.builder(
              controller: scrollController,
              itemCount: ls.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                // print('build $index');

                return InkWell(
                  onTap: () {
                    // BlocProvider.of<SearchBloc>(context)..add(SearchVideosPressButton(query: ls[index]));
                    Navigator.of(context).pushNamed('/home/searchResults', arguments: ls[index]);

                    widget.floatingSearchBarController.query = ls[index];
                    widget.floatingSearchBarController.close();
                  },
                  child: Container(
                    color: Colors.white,
                    padding: const EdgeInsets.only(bottom: 24, left: 16, right: 16),
                    child: Text(ls[index]),
                  ),
                );
              },
            ),
          ),
        );
      },
      body: widget.child,
      // body: (ScreenType.mobile == Device.screenType)
      // ? FloatingSearchBarScrollNotifier(child: widget.child)
      // : widget.child,
      // body: FloatingSearchBarScrollNotifier(child: widget.child),
    );
  }
}

class _HomeBody extends StatefulWidget {
  const _HomeBody({Key? key, required this.scrollController, required this.floatingSearchBarController})
      : super(key: key);

  final ScrollController scrollController;
  final FloatingSearchBarController floatingSearchBarController;
  @override
  State<_HomeBody> createState() => __HomeBodyState();
}

class __HomeBodyState extends State<_HomeBody> {
  final gkey = GlobalKey();
  @override
  void initState() {
    // TODO: implement initState
    showAppBar = true;
    super.initState();
    // widget.scrollController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    widget.scrollController.removeListener(_scrollListener);
    super.dispose();
  }

  late bool showAppBar;
  @override
  Widget build(BuildContext context) {
    if (ScreenType.mobile == Device.screenType) {
      widget.scrollController.addListener(_scrollListener);
    } else {
      widget.scrollController.removeListener(_scrollListener);
      showAppBar = true;
    }
    ScrollController scrollController = widget.scrollController;
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(fit: BoxFit.cover, image: AssetImage("assets/imgaes/background.png"))),
            child: Center(
              child: Container(
                color: Colors.white,
                // height: 500,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    (Device.screenType == ScreenType.mobile) ? Text("mobile") : Text("web"),
                    Text(Device.screenType.toString()),
                    TextButton(
                      child: const Text("sign out"),
                      onPressed: () async {
                        print(Theme.of(context).platform);
                        // await signInWithGoogle();
                        AppAuth appAuth = getIt<AppAuth>();
                        await appAuth.signOut();

                        // await appAuth.sendSignInLinkToEmail();
                      },
                    ),
                    TextButton(
                      child: const Text("showbar"),
                      onPressed: () async {
                        if (widget.floatingSearchBarController.isVisible) {
                          widget.floatingSearchBarController.hide();
                        } else if (widget.floatingSearchBarController.isHidden) {
                          widget.floatingSearchBarController.show();
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          // FeedTiles(scrollController: scrollController),
          BlocProvider(
            create: (context) => getIt<FeedBloc>()..add(const FeedEvent.getPosts()),
            child: FeedTiles(scrollController: scrollController),
          ),
          // CustomFeed(scrollController: scrollController, gkey: gkey),
          if (Device.width > 760)
            Positioned(
              width: 360,
              left: size.width / 2,
              child: ConstrainedBox(
                constraints: BoxConstraints(),
                child: Row(children: [
                  // Expanded(child: Container()),
                  Expanded(
                      child: Container(
                    height: 400,
                    color: Colors.amber,
                    child: Center(
                      child: GestureDetector(
                        onTap: () {
                          print("gesture detector prict");
                        },
                        child: TextButton(
                          child: Text("ddf"),
                          onPressed: () {
                            print("object");
                            // final RenderBox? renderBox = gkey.currentContext?.findRenderObject();

                            // final Size size = renderBox; // or _widgetKey.currentContext?.size
                            // print('Size: ${size.width}, ${size.height}');

                            // final Offset offset = renderBox.localToGlobal(Offset.zero);
                            // print('Offset: ${offset.dx}, ${offset.dy}');
                            // print('Position: ${(offset.dx + size.width) / 2}, ${(offset.dy + size.height) / 2}');

                            WidgetsBinding.instance.addPostFrameCallback((_) {
                              final RenderBox box = gkey.currentContext?.findRenderObject() as RenderBox;
                              final ofset = box.localToGlobal(Offset.zero);
                              print(ofset);
                              scrollController.animateTo(ofset.dy,
                                  duration: Duration(seconds: 1), curve: Curves.easeIn);

                              // size = box.size;
                            });
                          },
                        ),
                      ),
                    ),
                  )),
                ]),
              ),
            ),
          AnimatedPositioned(
            top: showAppBar ? 0 : -70,
            // bottom: showAppBar ? 10 : 0,
            // left: 100,
            duration: const Duration(milliseconds: 350),
            curve: Curves.easeInOut,
            child: Material(
              color: Colors.white.withOpacity(0.9),
              elevation: 2,
              child: Container(
                // decoration: BoxDecoration(color: Colors.transparent),
                width: Device.width,
                height: 70,
                child: Row(
                  children: [
                    if (Device.screenType != ScreenType.mobile) SizedBox(width: 20),
                    if (Device.screenType == ScreenType.mobile)
                      IconButton(
                        icon: Icon(Icons.menu),
                        onPressed: () {
                          Scaffold.of(context).openDrawer();
                        },
                      ),
                    Container(
                        width: (Device.screenType == ScreenType.mobile) ? 130 : 200,
                        child: Image.asset(
                          "assets/imgaes/AppIconFlat@3x.png",
                          fit: BoxFit.fitWidth,
                        )),
                    Expanded(child: Container()),
                    if (Device.screenType == ScreenType.mobile)
                      IconButton(
                          icon: Icon(Icons.search),
                          onPressed: () async {
                            if (widget.floatingSearchBarController.isClosed) {
                              widget.floatingSearchBarController.show();
                              widget.floatingSearchBarController.open();
                            }
                          }),
                    const SizedBox(width: 10),
                    InkWell(
                      onTap: () async {
                        final appAuth = getIt<AppAuth>();
                        UserModals? user = appAuth.userModal;
                        if (user == null) {
                          appAuth.userModal = await UsersRequests.getUser(getIt<Dio>(),
                              id: appAuth.firebaseAuthInstance.currentUser!.uid);
                          user = appAuth.userModal;
                        }
                        Navigator.of(context).pushNamed("/home/user", arguments: [user, appAuth]);
                      },
                      child: CircleAvatar(
                        backgroundColor: Theme.of(context).backgroundColor,
                      ),
                    ),
                    const SizedBox(width: 20),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  _scrollListener() {
    if (widget.scrollController.position.userScrollDirection == ScrollDirection.reverse &&
        showAppBar &&
        widget.scrollController.offset > 70) {
      print('scrolled down');
      setState(() {
        showAppBar = false;
      });
    } else if (widget.scrollController.position.userScrollDirection == ScrollDirection.forward && !showAppBar) {
      print('scrolled up');
      setState(() {
        showAppBar = true;
      });
    }
  }
}

class CustomFeed extends StatelessWidget {
  const CustomFeed({
    Key? key,
    required this.scrollController,
    required this.gkey,
  }) : super(key: key);

  final ScrollController scrollController;
  final GlobalKey<State<StatefulWidget>> gkey;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding:
          (Device.width < 761) ? null : EdgeInsets.only(left: (Device.width - 760) / 2, right: (Device.width) / 2 + 20),
      children: [
        Container(
          key: gkey,
          height: 400,
          color: Colors.purple,
          child: Center(
              child: TextButton(
            child: Text("ddf"),
            onPressed: () {
              print("object left");
            },
          )),
        ),
        Container(
          height: 400,
          color: Colors.red,
          child: Center(),
        ),
        Container(
          height: 400,
          color: Colors.green,
          child: Center(),
        ),
        Container(
          height: 400,
          color: Colors.orange,
          child: Center(),
        )
      ],
    );
  }
}

class CustomFeed2 extends StatelessWidget {
  const CustomFeed2({
    Key? key,
    required this.scrollController,
    required this.gkeyd,
  }) : super(key: key);

  final ScrollController scrollController;
  final GlobalKey<State<StatefulWidget>> gkeyd;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: scrollController,
      child: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: (Device.width > 760) ? 760 : 760),
          child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
              width: (Device.width > 760) ? 360 : Device.width,
              child: Column(
                // controller: scrollController,
                children: [
                  SizedBox(height: 70),
                  Container(
                    key: gkeyd,
                    height: 400,
                    color: Colors.purple,
                    child: Center(
                        child: TextButton(
                      child: Text("ddf"),
                      onPressed: () {
                        print("object left");
                      },
                    )),
                  ),
                  Container(
                    height: 400,
                    color: Colors.red,
                    child: Center(),
                  ),
                  Container(
                    height: 400,
                    color: Colors.green,
                    child: Center(),
                  ),
                  Container(
                    height: 400,
                    color: Colors.orange,
                    child: Center(),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                height: 1,
                color: Colors.pink,
                child: Center(),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
