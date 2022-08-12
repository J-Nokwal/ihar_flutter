import 'dart:math';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterfire_ui/auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:horizontal_card_pager/horizontal_card_pager.dart';
import 'package:ihar_flutter/core/firebase_classes/firebase_auth.dart';
import 'package:ihar_flutter/core/injection.dart';
import 'package:ihar_flutter/core/modals/searchResultModal.dart';
import 'package:ihar_flutter/features/common/loadingAnimation.dart';
import 'package:ihar_flutter/features/common/userAvatarWidget.dart';
import 'package:ihar_flutter/features/homeScreen/bloc/search_bloc.dart/search_bloc.dart';
import 'package:octo_image/octo_image.dart';

import '../../../core/modals/postModal.dart';
import '../../feed/screens/FeedTiles.dart';

class SearchResultScreen extends StatelessWidget {
  const SearchResultScreen({Key? key, required this.query}) : super(key: key);
  final String query;
  @override
  Widget build(BuildContext context) {
    return BlocProvider<SearchBloc>(
      create: (context) => getIt<SearchBloc>()..add(SearchEvent.started(query)),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white.withOpacity(0.7),
          title: Text("Search: $query", style: const TextStyle(color: Colors.black54)),
          leading: IconButton(
              icon: const Icon(
                Icons.arrow_back_rounded,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              }),
        ),
        body: BlocBuilder<SearchBloc, SearchState>(
          builder: (context, state) {
            return state.map(
              loading: (s) => const LoadingAnimation(),
              noResultFound: (s) => const Center(
                child: Text("No Result Found"),
              ),
              result: (s) => _ShowResult(searchResultModal: s.searchResultModal),
              onError: (s) => Center(child: Text(s.errorMessage)),
            );
          },
        ),
      ),
    );
  }
}

class _ShowResult extends StatelessWidget {
  const _ShowResult({Key? key, required this.searchResultModal}) : super(key: key);
  final SearchResultModal searchResultModal;
  @override
  Widget build(BuildContext context) {
    // if (searchResultModal.users.isNotEmpty)
    return ListView(
      children: [
        if (searchResultModal.users.isNotEmpty)
          const Padding(
            padding: EdgeInsets.only(left: 15, top: 20, bottom: 10),
            child: Text("Users", textScaleFactor: 1.5),
          ),
        if (searchResultModal.users.isNotEmpty)
          SizedBox(
            height: 225,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: searchResultModal.users.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.of(context)
                        .pushNamed("/home/user", arguments: [searchResultModal.users[index], getIt<AppAuth>()]);
                  },
                  child: SizedBox(
                    width: 200,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(15, 2, 1, 2),
                      child: Material(
                        elevation: 3,
                        borderRadius: BorderRadius.circular(15),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              const SizedBox(height: 10),
                              AppUserAvatar(userModals: searchResultModal.users[index], size: 120),
                              // CircleAvatar(
                              //   backgroundColor: Colors.primaries[Random().nextInt(Colors.primaries.length)],
                              //   minRadius: 60,
                              //   foregroundImage: (searchResultModal.users[index].profilePhotoLink != "")
                              //       ? NetworkImage(searchResultModal.users[index].profileLink!)
                              //       : null,
                              //   child: (searchResultModal.users[index].profilePhotoLink == "")
                              //       ? Text(
                              //           searchResultModal.users[index].userId[0].toUpperCase(),
                              //           textScaleFactor: 2.5,
                              //         )
                              //       : null,
                              // ),
                              const SizedBox(height: 10),
                              SizedBox(
                                height: 40,
                                child: Text(
                                  "${searchResultModal.users[index].firstName} ${searchResultModal.users[index].lastName}",
                                  maxLines: 2,
                                  textAlign: TextAlign.center,
                                  overflow: TextOverflow.fade,
                                ),
                              ),
                              // const SizedBox(height: 10),
                              Text(
                                searchResultModal.users[index].userId,
                                maxLines: 1,
                                textScaleFactor: 0.7,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        if (searchResultModal.posts.isNotEmpty)
          const Padding(
            padding: EdgeInsets.only(left: 15, top: 20, bottom: 10),
            child: Text("Posts", textScaleFactor: 1.5),
          ),
        ...searchResultModal.posts.map((e) => MobileFeedTiles(
            post: e,
            onLikeButtonPressed: (s) async {
              return s;
            },
            onProfileOpen: () {},
            onCommentsopen: () async {},
            onShareButtonPressed: () {}))
      ],
    );
  }
}
