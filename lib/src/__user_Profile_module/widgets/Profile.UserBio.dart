import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UserBio extends StatefulWidget {
  const UserBio({super.key});

  @override
  State<UserBio> createState() => _UserBioState();
}

class _UserBioState extends State<UserBio> {
  CollectionReference _referrencingUserDataList =
      FirebaseFirestore.instance.collection("Users");

  late Stream<QuerySnapshot> streamUserData;

  @override
  initState() {
    super.initState();

    streamUserData = _referrencingUserDataList.snapshots();
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(documentSnapshot[1]["username"]),
                Text(documentSnapshot[1]["bio"]),
              ],
            ),
          );
        }
        return const CircularProgressIndicator();
      },
    );
  }
}
