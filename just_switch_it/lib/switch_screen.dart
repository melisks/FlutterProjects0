import 'package:flutter/material.dart';
import 'package:just_switch_it/switches.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SwitchScreen extends StatefulWidget {
  const SwitchScreen({Key? key}) : super(key: key);

  @override
  State<SwitchScreen> createState() => _SwitchScreenState();
}

class _SwitchScreenState extends State<SwitchScreen> {
  List<SwitchData> switchDataList = [];

  @override
  void initState() {
    super.initState();
    loadSwitchData();
  }

  Future<void> loadSwitchData() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final int? counter = prefs.getInt('counter');
    if (counter != null) {
      for (var i = 1; i <= counter; i++) {
        print(i);
        final String? switchName = prefs.getString('name$i');
        final String? switchLink = prefs.getString('link$i');
        if (switchName != null && switchLink != null) {
          setState(() {
            switchDataList
                .add(SwitchData(name: [switchName], link: [switchLink]));
          });
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: switchDataList.length,
      itemBuilder: (context, index) {
        var switchData = switchDataList[index];

        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: List.generate(switchData.name.length, (nameIndex) {
            final switchName = switchData.name[nameIndex];
            final switchLink = switchData.link[nameIndex];

            return Switches(
              name: switchName,
              link: switchLink,
            );
          }),
        );
      },
    );
  }
}

class SwitchData {
  List<String> name = [];
  List<String> link = [];

  SwitchData({required this.name, required this.link});
}
