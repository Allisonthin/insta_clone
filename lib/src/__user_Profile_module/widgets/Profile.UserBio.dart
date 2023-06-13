import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:insta_clone/resources/sharedPref.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserBio extends StatefulWidget {
  const UserBio({super.key});

  @override
  State<UserBio> createState() => _UserBioState();
}

class _UserBioState extends State<UserBio> {
  final CollectionReference _referrencingUserDataList =
      FirebaseFirestore.instance.collection("Users");

  late Stream<QuerySnapshot> streamUserData;

  final Future<SharedPreferences> pref = SharedPreferences.getInstance();
  // late final String? uname;

  UserSharedPreference upref = UserSharedPreference();

  String? username;
  String? email;

  @override
  initState() {
    super.initState();
    getdata();
    streamUserData = _referrencingUserDataList.snapshots();
  }

  getdata() async {
    var u = await UserSharedPreference.getusername();
    var e = await UserSharedPreference.getemail();
    if (u != null && e != null) {
      setState(() {
        username = u;
        email = e;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: streamUserData,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasError) {
          return Center(child: Text(snapshot.error.toString()));
        }
        if (snapshot.connectionState == ConnectionState.active) {
          QuerySnapshot querySnapshot = snapshot.data;

          List<QueryDocumentSnapshot> documentSnapshot = querySnapshot.docs;

          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 17),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Text(username ?? ""), Text(email ?? "email")],
            ),
          );
        }
        return const CircularProgressIndicator();
      },
    );
  }
}
