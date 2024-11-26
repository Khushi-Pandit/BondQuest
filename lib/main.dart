import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Treasure.dart';

void main() => runApp(BondQuestApp());

class BondQuestApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: WelcomePage(),
    );
  }
}

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              elevation: 12,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              margin: EdgeInsets.only(left: 30, right: 30),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    SizedBox(height: 30),
                    Text(
                      "Think you're ready to uncover what's at the end? 💖\n\nProve your friendship and pass the test!",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.caveat(
                        textStyle: const TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    SizedBox(height: 20),
                    Image.asset('assets/images/Love.gif'),
                    SizedBox(height: 30),
                    Text(
                      "Let's move forward with BondQuest",
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => QuestionPage()),
                        );
                      },
                      child: Text(
                        "Next",
                        style: TextStyle(color: Colors.black),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFFFD1D8),
                        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                        textStyle: TextStyle(fontSize: 18),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class QuestionPage extends StatefulWidget {
  @override
  _QuestionPageState createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  final List<Map<String, String>> questions = [
    {
      "question": "Recent movie I watched??(Be honest, no cheating no held!!!)",
      "answer": "Do Patti",
    },
    {
      "question": "Who is the most loveliest person I have met??",
      "answer": "Sanidhaya",
    },
    {
      "question": "What's his/her nickname",
      "answer": "Senti",
    },
    {
      "question": "Which part of my your personality I loved the most???",
      "answer": "Everything",
    },
  ];

  int currentQuestion = 0;
  List<int> attempts = [0, 0, 0, 0];
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(height: 1,),
            Text("Level ${currentQuestion + 1}",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
            SizedBox(height: 1,),
          ],
        ),
        backgroundColor: Colors.pink,
      ),
      backgroundColor: Color(0xFFFFE6F0),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              questions[currentQuestion]['question']!,
              textAlign: TextAlign.center,
              style: GoogleFonts.caveat(
                textStyle: const TextStyle(
                  fontSize: 35,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(height: 20),
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                hintText: "Your Answer",
                hintStyle: TextStyle(color: Colors.black45),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                focusColor: null,
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black)
                )
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  attempts[currentQuestion]++;
                });

                if (_controller.text.trim().toLowerCase() ==
                    questions[currentQuestion]['answer']!.toLowerCase()) {
                  if (currentQuestion < questions.length - 1) {
                    setState(() {
                      currentQuestion++;
                      _controller.clear();
                    });
                  } else {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => FinalPage(attempts: attempts)),
                    );
                  }
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("You don't know me well enough 😢😒")),
                  );
                }
              },
              child: Text("Are you sure??...if yes click",style: TextStyle(color: Colors.black),),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                textStyle: TextStyle(fontSize: 18),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FinalPage extends StatelessWidget {
  final List<int> attempts;

  FinalPage({required this.attempts});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFE6F0),
    appBar: AppBar(
    title: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    SizedBox(height: 1,),
    Text("Treasure Found",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
    SizedBox(height: 1,),
    ],
    ),
        backgroundColor: Colors.pink,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Congratulations!!! 🎉❤️",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
            ),
            SizedBox(height: 20),
            Text(
              "You’ve reached the end, but guess what?",
              style: TextStyle(fontSize: 22, color: Colors.black),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            Text(
              "A last step still awaits!! 😄",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
            ),
            SizedBox(height: 20,),
            Text(
              "Share me the ss of this page😎",
              style: TextStyle(fontSize: 20 , color: Colors.black),
            ),
            SizedBox(height: 70),
            Text(
              "Here’s how many attempts you took for each question:",
              style: TextStyle(fontSize: 22, color: Colors.black),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            ...List.generate(
              attempts.length,
                  (index) => Text(
                "Question ${index + 1} : ${attempts[index]} attempts",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
            SizedBox(height: 30),
            TextButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => TreasureFound(),));
                },
                child: Text("Tresure is here --->>",style: TextStyle(fontSize: 20,color: Colors.red),),
            ),
          ],
        ),
      ),
    );
  }
}
