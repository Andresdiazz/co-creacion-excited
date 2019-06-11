import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:excited/utils/homeData.dart';
import 'package:excited/screens/homePageItem.dart';
import 'package:excited/style/homeTransformer.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:excited/screens/login_signup_page.dart';

class IntroPageView extends StatelessWidget {
  final UserDetails detailsUser;

  final FirebaseAuth _auth = FirebaseAuth.instance;

  IntroPageView({Key key, @required this.detailsUser}): super (key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
        Image.asset(
        'assets/images/EXCITED_R_BCO.png',
        fit: BoxFit.fill,
        height: 100,

      ),
      ],
    ),
        backgroundColor: Colors.black12,
      ),

      body: Center(


        child: SizedBox.fromSize(

          size: const Size.fromHeight(500.0),
          child: PageTransformer(
            pageViewBuilder: (context, visibilityResolver) {
              return PageView.builder(
                controller: PageController(viewportFraction: 0.85),
                itemCount: sampleItems.length,
                itemBuilder: (context, index) {
                  final item = sampleItems[index];
                  final pageVisibility =
                  visibilityResolver.resolvePageVisibility(index);

                  return IntroPageItem(
                    item: item,
                    pageVisibility: pageVisibility,
                  );
                },
              );
            },
          ),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.black12,
        items: [
          //Icon(Icons.home, size: 30),
          Icon(Icons.person, size: 30,),
          Icon(Icons.exit_to_app, size: 30,
          ),
        ],onTap:
          (int i) {
            signOut();
            Navigator.pushNamed(context, '/'); //debugPrint("Elemento: $i"),
          },
     ),//BottomNavigationBar
    );
  }
}

void signOut() async{
  FirebaseAuth.instance.signOut();
}
