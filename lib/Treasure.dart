import 'package:flutter/material.dart';

class TreasureFound extends StatelessWidget {
  const TreasureFound({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[50], // Light background color
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Padding around the screen
        child: Center(
          child: Align(
            alignment: Alignment.center,
            child: Card(
              elevation: 10, // Slight elevation for the card
              color: Colors.white, // Card color
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15), // Rounded corners
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0), // Padding inside the card
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    Text(
                      "Senti tu bohot achha hai tere sath rehne me aur jine me majjaa ata haii, tu cute aur sweet aur thoda sa soft-hearted h pr usk sath bohot jyada senti bhiii, pr shyd isiliye tu achha lgta hai.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.teal[800], // Text color
                        fontWeight: FontWeight.w400, // Slightly lighter font weight
                      ),
                    ),
                    SizedBox(height: 20), // Spacing between texts
                    Text(
                      "Ab last sem hai tu chala jayega itna bura ni hai sochana pr, lgata hai ki mera dost choot jayega. Pta ni phr kabhi hum milenge ki nahi, pr ye hai ki tu humesha yaad ayega.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.teal[800],
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Me shayd tere jane pe rou na pr hn bura zaroor lagega",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.teal[800],
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Pr kehte hai ki jate hue log waps ate ni 😢😢\n\n",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.teal[800],
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      "BBYE SENTI I WILL MISS YOU, hope yha se jaak tuj achhe dost mile, tu hapiiii rhe aur hn dalu mt pina aur thoda sambhal k rehna, ladkiyon k age vaise hi tera pav phisl jata aur thodi unwanted chiz km dekhna😉(ahleel wali)\nMajje lena clips k ni life k\nIsi k sath tere liye ek end me",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.teal[800],
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "\nHar ek notebook k pichhe,\nHar ek notebook k pichhe kuchh na kuchh khas likha hai,\nkuch iss tarah se maine teri meri dosti ka itihas likha hai\nAur tum duniyan me chahe jaha kahi bhi raho\nApni diary me to maine tumhe pass likha hai\nHar ek notebook k pichhe kuchh na kuchh khas likha haii",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.teal[800],
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      "\n\n\nLove you Chuzeeeee.....❤️😍💖",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
