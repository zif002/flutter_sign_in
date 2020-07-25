import 'package:AUTH_SCREEN/constants.dart';
import 'package:flutter/material.dart';

class SingInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        width: deviceWidth,
        height: deviceHeight,
        child: Center(
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 3,
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    alignment: Alignment(0, .4),
                    image: AssetImage('assets/person.jpeg'),
                    fit: BoxFit.cover,
                  )),
                ),
              ),
              Expanded(
                flex: 4,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("SIGN IN",
                              style: Theme.of(context).textTheme.headline4),
                          Text("SIGN UP",
                              style: Theme.of(context).textTheme.button),
                        ],
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 30),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(right: 16),
                              child: Icon(Icons.alternate_email,
                                  color: kPrimaryColor),
                            ),
                            Expanded(
                                child: TextField(
                              decoration:
                                  InputDecoration(hintText: "Email Address"),
                            )),
                          ],
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(right: 16),
                            child: Icon(Icons.lock, color: kPrimaryColor),
                          ),
                          Expanded(
                              child: TextField(
                            decoration: InputDecoration(hintText: "Password"),
                          )),
                        ],
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Row(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.white.withOpacity(.5),
                                ),
                              ),
                              child: Icon(Icons.android,
                                  color: Colors.white.withOpacity(.5)),
                            ),
                            SizedBox(width: 20),
                            Container(
                              padding: EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.white.withOpacity(.5),
                                ),
                              ),
                              child: Icon(Icons.chat,
                                  color: Colors.white.withOpacity(.5)),
                            ),
                            Spacer(),
                            Container(
                              padding: EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: kPrimaryColor),
                              child: Icon(
                                Icons.arrow_forward,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
