import 'package:flutter/material.dart';

class My_contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width * 0.7,
        padding: const EdgeInsets.all(30),
        decoration: BoxDecoration(
            color: Colors.deepPurpleAccent,
            //border: Border.all(width: 2),
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "¿ Do You Like What I Do ?",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(fontWeight: FontWeight.bold, color: Colors.white),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 25)),
                  overlayColor:
                      MaterialStateProperty.all(Colors.cyan.withOpacity(0.8)),
                  backgroundColor:
                      MaterialStateProperty.all(Colors.cyan.withOpacity(0.7)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40)))),
              onPressed: () {},
              child: const Text(
                "Contact Me",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
            ),
            const SizedBox(height: 20),
          ],
        )

        //child: Text("¿ Do You Like What I Do ?"),
        );
  }
}
