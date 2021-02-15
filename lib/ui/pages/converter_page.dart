part of 'pages.dart';

class ConverterPage extends StatefulWidget {
  @override
  _ConverterPageState createState() => _ConverterPageState();
}

class _ConverterPageState extends State<ConverterPage> {
  TextEditingController nilaiController1 = TextEditingController();
  TextEditingController nilaiController2 = TextEditingController();
  int screenText = 0;
  List<String> satuan1 = [];
  List<String> satuan2 = [];
  String selectedSatuan1;
  String selectedSatuan2;
  String currentSelectedSatuan1;
  String currentSelectedSatuan2;

  @override
  void initState() {
    super.initState();
    satuan1 = [
      "KM",
      "HM",
      "DAM",
      "M",
      "DM",
      "CM",
      "MM",
    ];
    selectedSatuan1 = satuan1[0];

    satuan2 = [
      "KM",
      "HM",
      "DAM",
      "M",
      "DM",
      "CM",
      "MM",
    ];
    selectedSatuan2 = satuan2[0];
    currentSelectedSatuan1 = satuan1[0];
    currentSelectedSatuan2 = satuan2[0];
  }

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
                            "Converter",
                            style: whiteFontStyle.copyWith(
                              fontSize: 30,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            "Satuan Panjang",
                            style: blackFontStyle.copyWith(
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  height: 50,
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  decoration: BoxDecoration(
                                    border: Border.all(color: greyColor),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: TextField(
                                    controller: nilaiController1,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Nilai",
                                      hintStyle: greyFontStyle,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Container(
                                  height: 50,
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  decoration: BoxDecoration(
                                    border: Border.all(color: greyColor),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: DropdownButton(
                                    isExpanded: true,
                                    underline: SizedBox(),
                                    value: selectedSatuan1,
                                    items: satuan1
                                        .map(
                                          (e) => DropdownMenuItem(
                                            child: Text(
                                              e,
                                              style: blackFontStyle,
                                            ),
                                            value: e,
                                          ),
                                        )
                                        .toList(),
                                    onChanged: (item) {
                                      setState(() {
                                        currentSelectedSatuan1 = item;
                                        print(currentSelectedSatuan1);
                                        selectedSatuan1 = item;
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            "Konversi Satuan Panjang",
                            style: blackFontStyle.copyWith(
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  height: 50,
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  decoration: BoxDecoration(
                                    border: Border.all(color: greyColor),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: TextField(
                                    enabled: false,
                                    controller: nilaiController2,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Hasil",
                                      hintStyle: greyFontStyle,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Container(
                                  height: 50,
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  decoration: BoxDecoration(
                                    border: Border.all(color: greyColor),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: DropdownButton(
                                    isExpanded: true,
                                    underline: SizedBox(),
                                    value: selectedSatuan2,
                                    items: satuan2
                                        .map(
                                          (e) => DropdownMenuItem(
                                            child: Text(
                                              e,
                                              style: blackFontStyle,
                                            ),
                                            value: e,
                                          ),
                                        )
                                        .toList(),
                                    onChanged: (item) {
                                      setState(() {
                                        currentSelectedSatuan2 = item;
                                        print(currentSelectedSatuan2);
                                        selectedSatuan2 = item;
                                      });
                                    },
                                  ),
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
                                if (!(nilaiController1.text.trim() != "")) {
                                  Flushbar(
                                    duration: Duration(seconds: 2),
                                    flushbarPosition: FlushbarPosition.TOP,
                                    backgroundColor: Color(0xFFFF5C83),
                                    message: "Nilai 1 must not be empty",
                                  ).show(context);
                                } else {
                                  double hasil = ConvertServices.convertUnit(
                                    double.tryParse(nilaiController1.text),
                                    double.tryParse(nilaiController2.text),
                                    selectedSatuan1,
                                    selectedSatuan2,
                                  );

                                  nilaiController2.text = hasil.toString();
                                }
                              },
                              color: purpleColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Text(
                                "Convert",
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
                                  nilaiController1.text = '';
                                  nilaiController2.text = '';
                                  selectedSatuan1 = satuan1[0];
                                  selectedSatuan2 = satuan2[0];
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
                    Positioned(
                      top: 98,
                      right: 25,
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            selectedSatuan1 = currentSelectedSatuan2;
                            selectedSatuan2 = currentSelectedSatuan1;
                            currentSelectedSatuan1 = selectedSatuan1;
                            currentSelectedSatuan2 = selectedSatuan2;
                          });
                        },
                        child: Container(
                          width: 25,
                          height: 25,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            border: Border.all(color: greyColor),
                          ),
                          child: Icon(
                            Icons.flip_camera_android_outlined,
                            color: greyColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
