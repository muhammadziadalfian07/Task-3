part of 'pages.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.add_chart,
              size: 200,
              color: purpleColor,
            ),
            Text(
              "Unit Converter",
              style: blackFontStyle.copyWith(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text("Conversion Made Easy", style: greyFontStyle),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: defaultMargin),
              child: Container(
                margin: EdgeInsets.only(top: 30, bottom: 30),
                height: 50,
                width: MediaQuery.of(context).size.width - 2 * defaultMargin,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => SignInPage()));
                  },
                  elevation: 0,
                  color: purpleColor,
                  child: Text(
                    "Get Started",
                    style: whiteFontStyle.copyWith(
                      fontSize: 18,
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
