part of 'pages.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
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
                      height: 190,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                        color: purpleColor,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 44,
                          ),
                          Text(
                            "Unit Converter",
                            style: whiteFontStyle.copyWith(
                              fontSize: 30,
                            ),
                          ),
                          Text(
                            "Conversion Made Easy",
                            style: whiteFontStyle.copyWith(
                              fontSize: 15,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Search",
                                  fillColor: Colors.white,
                                  filled: true,
                                  hintStyle: greyFontStyle.copyWith(
                                    fontWeight: FontWeight.w300,
                                  ),
                                  prefixIcon: Icon(
                                    Icons.search,
                                    color: greyColor,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: defaultMargin,
                    vertical: 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Calculate",
                        style: blackFontStyle.copyWith(
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        children: [
                          ItemWidgets(
                            picturePath: "assets/luas.png",
                            title: "Luas",
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => CalculateArea(),
                                ),
                              );
                            },
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          ItemWidgets(
                            picturePath: "assets/volume.png",
                            title: "Volume",
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => CalculateVolume(),
                                ),
                              );
                            },
                          )
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        "Converter",
                        style: blackFontStyle.copyWith(
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ConverterPage()));
                        },
                        child: Container(
                          height: 150,
                          width: MediaQuery.of(context).size.width -
                              2 * defaultMargin,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.black26,
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/chart.png",
                                width: 100,
                                height: 100,
                              ),
                              Text(
                                "Converter",
                                style: blackFontStyle,
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
