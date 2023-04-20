import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class My_custom_appBar extends StatefulWidget {
  //final Widget Function (bool isHovered) builder;
  const My_custom_appBar({Key? key}) : super(key: key);

  @override
  _My_custom_appBar createState() => _My_custom_appBar();
}

class _My_custom_appBar extends State<My_custom_appBar> {
  bool isHovered = false;
  bool isClik = false;
  @override
  Widget build(BuildContext context) {
    //final textColor = StateProvider((ref) => );
    //final textColor = StateNotifierProvider<Color>(Colors.white);
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
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          /*Text(
            'frasser',
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(fontWeight: FontWeight.bold, color: Colors.white),
          ),*/
          MouseRegion(
            onEnter: (event) => onEntered(true),
            onExit: (event) => onEntered(false),
            child: Row(
              children: [
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    //primary: Colors.red,
                    //onSurface: Colors.blue,
                    foregroundColor: isHovered ? Colors.amber : Colors.white,
                    //backgroundColor: Colors.deepOrange,
                    disabledForegroundColor: Colors.transparent,
                    elevation: 10,
                    textStyle: TextStyle(
                        // color: Colors.amber,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  child: const Text(
                    'ABOUT',
                  ),
                ),
                TextButton(
                    onPressed: () => clicked(true),
                    child: const Text(
                      'WORKS',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    )),
                TextButton(
                  onPressed: () {},
                  child: Text(
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
            ),
          )
        ],
      ),
    );
  }

  onEntered(bool isHovered) => setState(() {
        this.isHovered = isHovered;
      });

  clicked(bool isClik) => setState(() {
        this.isClik = isClik;
      });
}
