import 'package:flutter/material.dart';

void main() {
  runApp(baskaatt());
}

class baskaatt extends StatefulWidget {
  @override
  State<baskaatt> createState() => _baskaattState();
}

class _baskaattState extends State<baskaatt> {
  int teamAPoint = 0;

  int teamBPoint = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff304D68),
          title: Text(
            'Domin  Counter ',
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text('Team A', style: TextStyle(fontSize: 39)),
                    SizedBox(
                      width: 180,
                      height: 180,
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          '$teamAPoint',
                          style: const TextStyle(fontSize: 150),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(150, 50),
                        backgroundColor: Color(0xff304D68),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero,
                        ),
                      ),
                      onPressed: () {
                        teamAPoint = teamAPoint + 1;
                        setState(() {});
                      },
                      child: Text(
                        'ADD 1 point ',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                    const SizedBox(height: 14),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(150, 50),
                        backgroundColor: Color(0xff304D68),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero,
                        ),
                      ),
                      onPressed: () {
                        teamAPoint = teamAPoint + 2;
                        setState(() {});
                      },
                      child: Text(
                        'ADD 2 point ',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                    const SizedBox(height: 14),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(150, 50),
                        backgroundColor: Color(0xff304D68),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero,
                        ),
                      ),
                      onPressed: () {
                        teamAPoint = teamAPoint + 3;
                        setState(() {});
                      },
                      child: Text(
                        'ADD 3 point ',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                  ],
                ),

                const SizedBox(
                  height: 500,
                  child: VerticalDivider(color: Colors.grey, thickness: 1),
                ),
                Column(
                  children: [
                    Text('Team B', style: TextStyle(fontSize: 39)),
                    SizedBox(
                      width: 180,
                      height: 180,
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          '$teamBPoint',
                          style: const TextStyle(fontSize: 150),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(150, 50),
                        backgroundColor: Color(0xff304D68),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero,
                        ),
                      ),
                      onPressed: () {
                        teamBPoint = teamBPoint + 1;
                        setState(() {});
                      },
                      child: Text(
                        'ADD 1 point ',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                    const SizedBox(height: 14),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(150, 50),
                        backgroundColor: Color(0xff304D68),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero,
                        ),
                      ),
                      onPressed: () {
                        teamBPoint = teamBPoint + 2;
                        setState(() {});
                      },
                      child: Text(
                        'ADD 2 point ',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                    const SizedBox(height: 14),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(150, 50),
                        backgroundColor: Color(0xff304D68),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero,
                        ),
                      ),
                      onPressed: () {
                        teamBPoint = teamBPoint + 3;
                        setState(() {});
                      },
                      child: Text(
                        'ADD 3 point ',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 40),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(150, 50),
                backgroundColor: Color(0xff304D68),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
              ),
              onPressed: () {
                teamAPoint = 0;
                teamBPoint = 0;
                setState(() {});
              },
              child: Text(
                'Reset ',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
            SizedBox(height: 40),
            Text(' created by hichen '),
          ],
        ),
      ),
    );
  }
}
