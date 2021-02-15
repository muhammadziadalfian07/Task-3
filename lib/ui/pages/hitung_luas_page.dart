part of 'pages.dart';

class CalculateArea extends StatefulWidget {
  @override
  _CalculateAreaState createState() => _CalculateAreaState();
}

class _CalculateAreaState extends State<CalculateArea> {
  TextEditingController lebarController = TextEditingController();
  TextEditingController panjangController = TextEditingController();
  int screenText = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: purpleColor,
          ),
          SafeArea(
            child: Container(
              color: Colors.white,
            ),
          ),
          SafeArea(
            child: ListView(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 113,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: purpleColor,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: defaultMargin,
                        top: 34,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              padding: EdgeInsets.all(5),
                              margin: EdgeInsets.only(right: 10),
                              decoration: BoxDecoration(
                                color: Colors.white12,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                                size: 25,
                              ),
                            ),
                          ),
                          Text(
                            "Calculate Area",
                            style: whiteFontStyle.copyWith(
                              fontSize: 30,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        "Hasil",
                        style: blackFontStyle.copyWith(
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Container(
                        height: 100,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          border: Border.all(color: greyColor),
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.grey[100],
                        ),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "${screenText.toString()} M",
                                    style:
                                        blackFontStyle.copyWith(fontSize: 30),
                                  ),
                                  WidgetSpan(
                                    child: Transform.translate(
                                      offset: Offset(2, -4),
                                      child: Text(
                                        '2',
                                        textScaleFactor: 1.5,
                                        style: blackFontStyle.copyWith(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w100,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Panjang",
                                  style: blackFontStyle.copyWith(
                                    fontSize: 15,
                                  ),
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                Container(
                                  height: 50,
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  decoration: BoxDecoration(
                                    border: Border.all(color: greyColor),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: TextField(
                                    controller: panjangController,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Panjang",
                                      hintStyle: greyFontStyle,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Lebar",
                                  style: blackFontStyle.copyWith(
                                    fontSize: 15,
                                  ),
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                Container(
                                  height: 50,
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  decoration: BoxDecoration(
                                    border: Border.all(color: greyColor),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: TextField(
                                    controller: lebarController,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Lebar",
                                      hintStyle: greyFontStyle,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 50,
                        child: RaisedButton(
                          elevation: 0,
                          onPressed: () {
                            if (!(panjangController.text.trim() != "")) {
                              Flushbar(
                                duration: Duration(seconds: 2),
                                flushbarPosition: FlushbarPosition.TOP,
                                backgroundColor: Color(0xFFFF5C83),
                                message: "Panjang must not be empty",
                              ).show(context);
                            } else if (!(lebarController.text.trim() != "")) {
                              Flushbar(
                                duration: Duration(seconds: 2),
                                flushbarPosition: FlushbarPosition.TOP,
                                backgroundColor: Color(0xFFFF5C83),
                                message: "Lebar must not be empty",
                              ).show(context);
                            } else {
                              var panjang = int.parse(panjangController.text);
                              var lebar = int.parse(lebarController.text);
                              int hasil = hitungLuas(panjang, lebar);
                              setState(() {
                                screenText = hasil;
                              });
                            }
                          },
                          color: purpleColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            "Count",
                            style: whiteFontStyle,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 50,
                        child: RaisedButton(
                          elevation: 0,
                          onPressed: () {
                            setState(() {
                              screenText = 0;
                              lebarController.text = '';
                              panjangController.text = '';
                            });
                          },
                          color: greyColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            "Reset",
                            style: whiteFontStyle,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
