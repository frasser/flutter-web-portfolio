
import 'package:flutter/material.dart';

class My_custom_appBar extends StatelessWidget {
  //const My_custom_appBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 60),
      height: 50,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.transparent,
        //border: Border.all(color: Colors.black, width: 2),
        //borderRadius: BorderRadius.circular(40)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'frasser',
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(fontWeight: FontWeight.bold, color: Colors.white),
          ),
          Row(
            children: [
              TextButton(
                onPressed: () {},
                child: const Text(
                  'ABOUT',
                  style: TextStyle(
                      color: Colors.yellow,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "WORKS",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'CONTACT ME',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
              ),
/*
                    ElevatedButton(
                      style: ButtonStyle(
                          overlayColor: MaterialStateProperty.all(
                              Colors.black.withOpacity(0.8)),
                          backgroundColor: MaterialStateProperty.all(
                              Colors.black.withOpacity(0.7)),
                          padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(
                                  horizontal: 40, vertical: 20)),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)))),
                      onPressed: () {},
                      child: Text(
                        "login",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    )*/
            ],
          )
        ],
      ),
    );
  }
}
