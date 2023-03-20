import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(),
                color: Colors.amber,
                image: DecorationImage(
                    image: NetworkImage(
                        'https://media.istockphoto.com/id/1319613142/vector/abstract-blue-arrow-glowing-with-lighting-and-line-grid-on-blue-background-technology-hi.jpg?s=612x612&w=0&k=20&c=nveWBg0yYzoY74cVcbzMwTl5lBh46b1rwZcjY4l-OlU='),
                    fit: BoxFit.cover),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: MediaQuery.of(context).size.width / 3,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                            width: 10,
                          ),
                          image: DecorationImage(
                            image: NetworkImage(
                                'https://scontent.flos1-2.fna.fbcdn.net/v/t39.30808-6/294729383_1083666882554759_1704806770919479554_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=XgV8Djw3vC4AX-nWnVF&_nc_zt=23&_nc_ht=scontent.flos1-2.fna&oh=00_AfCSFTCQT5-o0s0KP5o-pyVNGvsCrOekW_boicQMUfxJvw&oe=641E8726'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width / 3,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          CustomText(
                            text:
                                "I'm ADEDEJI Idris Ayobami, a student of the Federal University of Agriculture, Abeokuta, Ogun State, Nigeria",
                          ),
                          CustomText(
                            text:
                                "I've been a Flutter developer with an experience of close to 2 years",
                          ),
                          CustomText(
                            text:
                                "I have experience in working with the popular backend for flutter (Firebase), http and rest APIs ",
                          ),
                          CustomText(
                            text:
                                "I also have experience in publishing apps to the Playstore which I have a verified account for the PlayStore",
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(),
              child: Center(
                child: Container(
                  height: MediaQuery.of(context).size.height / 4,
                  child: Row(
                    children: [
                      MaterialButton(
                        onPressed: () {
                          launchUrl(Uri.http('https://github.com/Heebu'));
                        },
                        child: Image(
                            image: NetworkImage(
                          'https://cdn4.iconfinder.com/data/icons/iconsimple-logotypes/512/github-512.png',
                        )),
                      ),
                      MaterialButton(
                        onPressed: () {
                          launchUrl(Uri.http(
                              'www.linkedin.com/in/idris-adedeji-1b3162246'));
                        },
                        child: Image(
                            image: NetworkImage(
                          'https://static.vecteezy.com/system/resources/previews/018/930/483/original/linkedin-logo-linkedin-icon-transparent-free-png.png',
                        )),
                      ),
                      MaterialButton(
                        onPressed: () {
                          launchUrl(
                              Uri.http('https://twitter.com/AdedejiIdrisAy1'));
                        },
                        child: Image(
                            image: NetworkImage(
                          'https://static.vecteezy.com/system/resources/previews/018/910/707/non_2x/twitter-logo-twitter-icon-twitter-symbol-free-free-vector.jpg',
                        )),
                      ),
                      MaterialButton(
                        onPressed: () {
                          launchUrl(Uri.http(
                              'https://web.facebook.com/idris.adedeji.9461'));
                        },
                        child: Image(
                            image: NetworkImage(
                          'https://static.vecteezy.com/system/resources/thumbnails/018/910/799/small/facebook-logo-facebook-icon-free-free-vector.jpg',
                        )),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.white,
        fontSize: 19,
        fontWeight: FontWeight.w600,
      ),
      textAlign: TextAlign.center,
    );
  }
}

// Center(
// child: TextButton(
// onPressed: () {
// launchUrl(Uri.http('www.google.com'));
// },
// child: Text('Click me'),
// ))
