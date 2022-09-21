import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({Key? key}) : super(key: key);

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  bool isSwitch = false;
  bool? isCheckbox = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                debugPrint('info');
              },
              icon: const Icon(
                Icons.info_outline,
              )),
        ],
        title: const Text('Learn Flutter'),
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'assets/images/galaxy.jpg',
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              color: Colors.black,
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(10.0),
              color: Colors.blueGrey,
              width: double.infinity,
              child: const Center(
                child: Text(
                  'This is a text widget',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: isSwitch ? Colors.blue : Colors.green,
              ),
              onPressed: () {
                debugPrint('button clicked');
              },
              child: const Text('Press me'),
            ),
            OutlinedButton(
              onPressed: () {
                debugPrint('button clicked');
              },
              child: const Text('Press me'),
            ),
            TextButton(
              onPressed: () {
                debugPrint('button clicked');
              },
              child: const Text('Press me'),
            ),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                debugPrint('this is the row');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.orange,
                  ),
                  Text('Row widget'),
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.orange,
                  )
                ],
              ),
            ),
            Switch(
              value: isSwitch,
              onChanged: (value) {
                setState(() {
                  isSwitch = value;
                });
              },
            ),
            Checkbox(
              value: isCheckbox,
              onChanged: (value) {
                setState(() {
                  isCheckbox = value;
                });
              },
            ),
            Image.network(
                'https://img.freepik.com/free-vector/gradient-galaxy-background_23-2148983655.jpg'),
          ],
        ),
      ),
    );
  }
}
