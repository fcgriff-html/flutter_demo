import 'package:flutter/material.dart';

String baconText = 'Bacon ipsum dolor amet leberkas picanha reprehenderit eiusmod. Kielbasa consequat ea, filet mignon sunt do hamburger anim eu elit ut ball tip. Ham hock dolore boudin voluptate duis chuck. Chicken beef kielbasa elit fugiat chislic commodo tri-tip ut corned beef nulla consequat ribeye sausage. Cow sed irure officia nulla tongue incididunt. Turducken drumstick salami, cow anim pork chop turkey in enim buffalo duis sunt et ut brisket. Andouille chicken pastrami in. Fugiat frankfurter anim laboris. Ipsum brisket in leberkas pork loin t-bone sausage bacon jowl deserunt ut tempor mollit ham irure. Pancetta shoulder sunt duis, commodo doner chuck chislic. Lorem porchetta pork chop, meatball swine rump nisi.';

class GetRichQuickPage extends StatelessWidget {
  const GetRichQuickPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Griffy B'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Image.asset('images/image2.jpg'),
              const Text('How to get rich', 
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              )
              ),
              const SizedBox(height: 20.0),
              Text(
                baconText,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.justify,
              )
      
            ],
            ),
        ),
      ),
    );
  }
}