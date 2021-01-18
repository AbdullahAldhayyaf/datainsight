import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool value1 = false;
  bool value2 = false;
  bool value3 = false;
  bool value4 = false;
  bool value5 = false;
  void onChangedvalue1(bool value) {
    setState(() {
      value1 = value;
    });
  }

  void onChangedvalue2(bool value) {
    setState(() {
      value2 = value;
    });
  }

  void onChangedvalue3(bool value) {
    setState(() {
      value3 = value;
    });
  }

  void onChangedvalue4(bool value) {
    setState(() {
      value4 = value;
    });
  }

  void onChangedvalue5(bool value) {
    setState(() {
      value5 = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: <Widget>[
                Image(
                  image: AssetImage('assets/images/logo.png'),
                  width: 120,
                  height: 120,
                ),
                Text(
                  "تسجيل مخالفة جديدة",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
                SizedBox(
                  height: 20.0,
                ),
                RaisedButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.camera_alt,
                    size: 30.0,
                  ),
                  label: Text(
                    "تصوير رقم الرخصة",
                    style: TextStyle(fontSize: 20.0),
                  ),
                  shape: Border.all(color: Colors.black, width: 1.0),
                  color: Colors.white,
                ),
                SizedBox(
                  height: 40.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      "اختيار المخالفة",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.0),
                    ),
                  ],
                ),
                new CheckboxListTile(
                  title: new Text("غير المتلزمين بلبس الكمامة"),
                  value: value1,
                  onChanged: onChangedvalue1,
                  activeColor: Colors.green,
                ),
                new CheckboxListTile(
                  title: new Text("تجمع للمتسوقين"),
                  value: value2,
                  onChanged: onChangedvalue2,
                  activeColor: Colors.green,
                ),
                new CheckboxListTile(
                  title: new Text("عدم قياس درجة الحرارة"),
                  value: value3,
                  onChanged: onChangedvalue3,
                  activeColor: Colors.green,
                ),
                new CheckboxListTile(
                  title: new Text("عدم تطهير العربات"),
                  value: value4,
                  onChanged: onChangedvalue4,
                  activeColor: Colors.green,
                ),
                new CheckboxListTile(
                  title: new Text("عدم تامين النطهرات والمعقمات"),
                  value: value5,
                  onChanged: onChangedvalue5,
                  activeColor: Colors.green,
                ),
                SizedBox(height: 10.0),
                RaisedButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.camera_alt,
                    size: 30.0,
                  ),
                  label: Text(
                    "رفع صورة المخالفة",
                    style: TextStyle(fontSize: 20.0),
                  ),
                  shape: Border.all(color: Colors.black, width: 1.0),
                  color: Colors.white,
                ),
                SizedBox(
                  height: 10.0,
                ),
                RaisedButton(
                  onPressed: () {},
                  elevation: 10.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  color: Colors.green,
                  child: Text(
                    "حفظ المخالفة",
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  textColor: Colors.white,
                  padding:
                      EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
