import 'package:flutter/material.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
      ),
      // slide bar
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('hello'),
            ),
            Container(
              padding: const EdgeInsets.only(left: 20),
              child: const Text('All labels',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            ),
            ListTile(
              leading: const Icon(
                Icons.my_location_sharp,
              ),
              title: const Text('Location'),
              onTap: () {
                Navigator.pushNamed(context, '/location');
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.control_camera_rounded,
              ),
              title: const Text('Controller'),
              onTap: () {
                Navigator.pushNamed(context, '/controller');
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {
                Navigator.pushNamed(context, '/setting');
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.call,
              ),
              title: const Text('Contact Us'),
              onTap: () {
                Navigator.pushNamed(context, '/contact');
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.groups_sharp,
              ),
              title: const Text('About Us'),
              onTap: () {
                Navigator.pushNamed(context, '/about_us');
              },
            ),
            const Divider(
              color: Colors.black,
              height: 8,
            ),
            ListTile(
              leading: const Icon(
                Icons.help,
              ),
              title: const Text('help?'),
              onTap: () {
                Navigator.pushNamed(context, '/help');
              },
            ),
            const Divider(
              color: Colors.black,
              height: 8,
            )
          ],
        ),
      ),

      // body of page
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 50,
                ),
                SimpleCircularProgressBar(
                  startAngle: -180,
                  mergeMode: true,
                  onGetText: (double value) {
                    return Text('${value.toInt()}%');
                  },
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Battery Percentage',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                SimpleCircularProgressBar(
                  startAngle: -180,
                  progressColors: const [
                    Color.fromARGB(255, 231, 50, 50),
                    Colors.amberAccent,
                    Colors.cyan,
                    Colors.green,
                    Color.fromARGB(255, 224, 4, 4),
                  ],
                  backColor: Colors.blueGrey,
                  mergeMode: true,
                  onGetText: (double value) {
                    return Text('${value.toInt()}');
                  },
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'B.P.M',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      children: [
                        const SizedBox(
                          height: 250,
                        ),
                        FloatingActionButton(
                          elevation: 0.0,
                          child: const Icon(
                            Icons.call_rounded,
                            size: 40,
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, '/contact');
                          },
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
