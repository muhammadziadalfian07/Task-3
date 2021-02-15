part of 'pages.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: defaultMargin),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 69,
                ),
                Text(
                  "Sign In",
                  style: blackFontStyle.copyWith(
                    fontSize: 22,
                  ),
                ),
                Text(
                  "conversion made easy",
                  style: greyFontStyle,
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  "Username",
                  style: blackFontStyle.copyWith(
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Type your username",
                      hintStyle: greyFontStyle,
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  "Password",
                  style: blackFontStyle.copyWith(
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Type your password",
                      hintStyle: greyFontStyle,
                    ),
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width - 2 * defaultMargin,
                  child: RaisedButton(
                    color: purpleColor,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      "Sign In",
                      style: whiteFontStyle,
                    ),
                    onPressed: () {
                      String email = "udacodingid";
                      String pw = "udacodingJaya2021";
                      print(emailController.text);
                      print(passwordController.text);
                      if (!(emailController.text.trim() != "")) {
                        Flushbar(
                          duration: Duration(seconds: 2),
                          flushbarPosition: FlushbarPosition.TOP,
                          backgroundColor: Color(0xFFFF5C83),
                          message: "Username must not be empty",
                        ).show(context);
                      } else if (!(passwordController.text.trim() != "")) {
                        Flushbar(
                          duration: Duration(seconds: 2),
                          flushbarPosition: FlushbarPosition.TOP,
                          backgroundColor: Color(0xFFFF5C83),
                          message: "Password must not be empty",
                        ).show(context);
                      } else if (passwordController.text.length < 6) {
                        Flushbar(
                          duration: Duration(seconds: 2),
                          flushbarPosition: FlushbarPosition.TOP,
                          backgroundColor: Color(0xFFFF5C83),
                          message: "Password's length min 6 characters",
                        ).show(context);
                      } else if (emailController.text != email ||
                          passwordController.text != pw) {
                        Flushbar(
                          duration: Duration(seconds: 2),
                          flushbarPosition: FlushbarPosition.TOP,
                          backgroundColor: Color(0xFFFF5C83),
                          message: "Email or password is not registered",
                        ).show(context);
                      } else {
                        Duration(seconds: 1);
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MainPage(),
                            ));
                      }
                    },
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
