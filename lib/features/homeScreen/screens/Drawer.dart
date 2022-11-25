import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ihar_flutter/core/firebase_classes/firebase_auth.dart';
import 'package:ihar_flutter/core/firebase_classes/firebase_storage.dart';
import 'package:ihar_flutter/core/injection.dart';
import 'package:ihar_flutter/core/modals/userModal.dart';
import 'package:ihar_flutter/core/requests/AvatarGeneratorRequests.dart';
import 'package:image_picker/image_picker.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../common/userAvatarWidget.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({Key? key, required this.user}) : super(key: key);
  final UserModals user;
  @override
  _AppDrawerState createState() => _AppDrawerState();
}

// class _AppDrawerState extends State<AppDrawer> {
//   @override
//   Widget build(BuildContext context) {
//     return ListView(

//       children: [
//         const SizedBox(height: 10),
//         Padding(
//           padding: const EdgeInsets.all(15.0),
//           child: Row(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               CircleAvatar(
//                 minRadius: 30,
//                 maxRadius: 30,
//                 // foregroundImage:
//                 //     (widget.user.profilePhotoLink != "") ? NetworkImage(widget.user.profilePhotoLink) : null,
//                 child: (widget.user.profilePhotoLink == "")
//                     ? Text(
//                         widget.user.userId[0].toUpperCase(),
//                         textScaleFactor: 2.5,
//                       )
//                     : AppUserAvatar(userModals: widget.user, size: 60),
//               ),
//               const SizedBox(width: 10),
//               Expanded(
//                   child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   Text("${widget.user.firstName} ${widget.user.lastName}", style: TextStyle(fontSize: 20)),
//                   SizedBox(
//                     child: Text(" id: ${widget.user.userId.toString()}",
//                         maxLines: 2, style: TextStyle(color: Colors.black54, fontSize: 11)),
//                   )
//                 ],
//               ))
//             ],
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Material(
//             elevation: 2,
//             child: ListTile(
//               title: Text("upload image"),
//               onTap: () async {
//                 final ImagePicker _picker = ImagePicker();

//                 final XFile? image = await _picker.pickImage(source: ImageSource.gallery);

//                 if (image != null) {
//                   final s = await getIt<AppFireBaseStorage>().uploadImage(image);
//                   await s.task;
//                   print(await s.mountainsRef.getDownloadURL());
//                   print("file uploaded");
//                 } else {
//                   print("dddddddddd xfile is null");
//                 }
//               },
//             ),
//           ),
//         ),
//         ListTile(
//           title: Text("Post Screen "),
//           onTap: () async {
//             Navigator.of(context).pushNamed("/home/createPost");
//           },
//         ),
//         ListTile(
//           title: Text("test request "),
//           onTap: () async {
//             final dio = getIt<Dio>();
//           },
//         ),
//         ListTile(
//           title: const Text("seacdrch 'hii'"),
//           onTap: () async {
//             // Navigator.of(context).pushNamed('/home/searchResults', arguments: "hii");
//             final a = await AvatarGenerator.getNewAvatar(getIt<Dio>());
//             Navigator.of(context).push(MaterialPageRoute(builder: (context) {
//               return Scaffold(body: Image.memory(a));
//             }));
//           },
//         ),
//         ListTile(
//           title: Text("Sign Out"),
//           onTap: () async {
//             getIt<AppAuth>().signOut();
//           },
//         ),
//         // Spacer(flex: 1),
//         SvgPicture.asset("assets/imgaes/appLogo.svg", height: 100),
//       ],
//     );
//   }
// }

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate(
              [
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        minRadius: 30,
                        maxRadius: 30,
                        // foregroundImage:
                        //     (widget.user.profilePhotoLink != "") ? NetworkImage(widget.user.profilePhotoLink) : null,
                        child: (widget.user.profilePhotoLink == "")
                            ? Text(
                                widget.user.userId[0].toUpperCase(),
                                textScaleFactor: 2.5,
                              )
                            : AppUserAvatar(userModals: widget.user, size: 60),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("${widget.user.firstName} ${widget.user.lastName}", style: TextStyle(fontSize: 20)),
                          SizedBox(
                            child: Text(" id: ${widget.user.userId.toString()}",
                                maxLines: 2, style: TextStyle(color: Colors.black54, fontSize: 11)),
                          )
                        ],
                      ))
                    ],
                  ),
                ),
                const SizedBox(height: 50),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: ElevatedButton.icon(
                    icon: const Icon(Icons.edit),
                    label: const SizedBox(
                      height: 50,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Create a Rumor",
                        ),
                      ),
                    ),
                    onPressed: () async {
                      Navigator.of(context)
                          .pushNamed("/home/createPost", arguments: RepositoryProvider.of<UserModals>(context));
                      Scaffold.of(context).closeDrawer();
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: ElevatedButton.icon(
                    icon: const Icon(Icons.logout_outlined),
                    label: const SizedBox(
                      height: 50,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Sign Out",
                        ),
                      ),
                    ),
                    onPressed: () async {
                      getIt<AppAuth>().signOut();
                      Scaffold.of(context).closeDrawer();
                    },
                  ),
                ),
                // ListTile(
                //   title: Text("test request "),
                //   onTap: () async {
                //     final dio = getIt<Dio>();
                //   },
                // ),
                // ListTile(
                //   title: const Text("seacdrch 'hii'"),
                //   onTap: () async {
                //     // Navigator.of(context).pushNamed('/home/searchResults', arguments: "hii");
                //     final a = await AvatarGenerator.getNewAvatar(getIt<Dio>());
                //     Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                //       return Scaffold(body: Image.memory(a));
                //     }));
                //   },
                // ),
                // ListTile(
                //   title: Text("Sign Out"),
                //   onTap: () async {
                //     getIt<AppAuth>().signOut();
                //   },
                // ),
                // SvgPicture.asset("assets/imgaes/appLogo.svg", height: 100),
              ],
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SvgPicture.asset("assets/imgaes/appLogo.svg", height: 150),
                const Text("Made with ❤ by Jagrit Nokwal"),
                // const SizedBox(height: 5),
                InkWell(
                  onTap: () async {
                    if (!await launchUrl(Uri.parse("https://github.com/J-Nokwal"),
                        mode: LaunchMode.externalApplication)) {
                      throw 'Could not launch https://github.com/J-Nokwal';
                    }
                  },
                  child: const Text(
                    "Check Out My GitHub Profile",
                    style: TextStyle(
                        color: Colors.grey, fontStyle: FontStyle.italic, decoration: TextDecoration.underline),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SearchWid extends StatefulWidget {
  const SearchWid({Key? key}) : super(key: key);

  @override
  State<SearchWid> createState() => _SearchWidState();
}

class _SearchWidState extends State<SearchWid> {
  List<dynamic> ls = ["sd", "sdss", "sss"];
  @override
  Widget build(BuildContext context) {
    return buildFloatingSearchBar();
    // return Scaffold(
    //   // This is handled by the search bar itself.
    //   resizeToAvoidBottomInset: false,
    //   body: Stack(
    //     fit: StackFit.expand,
    //     children: [
    //       // buildMap(),
    //       // buildBottomNavigationBar(),
    //       buildFloatingSearchBar(),
    //     ],
    //   ),
    // );
  }

  Widget buildFloatingSearchBar() {
    final isPortrait = true;

    return FloatingSearchBar(
      hint: 'Search...',
      scrollPadding: const EdgeInsets.only(top: 16, bottom: 56),
      transitionDuration: const Duration(milliseconds: 50),
      transitionCurve: Curves.easeInOut,
      physics: const BouncingScrollPhysics(),
      axisAlignment: isPortrait ? 0.0 : -1.0,
      openAxisAlignment: 0.0,
      width: isPortrait ? 600 : 500,
      debounceDelay: const Duration(milliseconds: 200),
      body: Container(
        height: 60,
        color: Colors.amber,
        child: Container(),
      ),
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
        // HttpRequest request= HttpRequest();
        // http.Response response = await http.get(
        //   Uri.parse("https://suggestqueries.google.com/complete/search"),
        //   // headers: {"Access-Control-Allow-Origin": "*", "Access-Control-Allow-Methods": "GET"},
        // );
        // http.Request request = http.Request();
        List<dynamic> data = jsonDecode(response.data) as List<dynamic>;
        // debugPrint(data[1]);
        setState(() {
          ls = data[1] as List<dynamic>;
        });
      },
      // Specify a custom transition to be used for
      // animating between opened and closed stated.
      transition: CircularFloatingSearchBarTransition(),
      actions: [
        FloatingSearchBarAction(
          showIfOpened: false,
          child: CircularButton(
            icon: const Icon(Icons.place),
            onPressed: () {},
          ),
        ),
        FloatingSearchBarAction.searchToClear(
          showIfClosed: false,
        ),
      ],
      builder: (context, transition) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Material(
            color: Colors.white,
            elevation: 4.0,
            child: Column(
              // mainAxisSize: MainAxisSize.min,
              // children: Colors.accents.map((color) {
              //   return Container(height: 112, color: color);
              // }).toList(),
              children: ls
                  .map((e) => InkWell(
                      onTap: () {
                        // BlocProvider.of<SearchBloc>(context)..add(SearchVideosPressButton(query: e));
                      },
                      child: SizedBox(height: 20, child: Text(e))))
                  .toList(),
            ),
          ),
        );
      },
    );
  }
}
