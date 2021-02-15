part of 'widgest.dart';

class ItemWidgets extends StatelessWidget {
  final String title;
  final String picturePath;
  final Function onTap;

  ItemWidgets({
    @required this.picturePath,
    @required this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {
          if (onTap != null) {
            onTap();
          }
        },
        child: Container(
          height: 150,
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
                picturePath,
                width: 100,
                height: 100,
              ),
              Text(
                title,
                style: blackFontStyle,
              )
            ],
          ),
        ),
      ),
    );
  }
}
