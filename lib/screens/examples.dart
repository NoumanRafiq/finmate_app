import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class ResponsiveText extends StatelessWidget {
  const ResponsiveText({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: buildWithAutoSizeText(context: context)
      ),
    );
  }
}

Widget buildWithHeight(){
  return Container(
    color: Colors.red,
    // height: 50,
    child: FittedBox(
      // fit: BoxFit.contain,
      child: Text(
        'This is some text that is too long to display',
        style: TextStyle(fontSize: 64),
      ),
    ),
  );
}

Widget buildWithAutoSizeText({required BuildContext context}){
  return Container(
    color: Colors.blue,
    width: MediaQuery.of(context).size.width*0.3,
    // constraints: BoxConstraints(maxWidth: 180),
    child: AutoSizeText(
      'Autosize: ',
      style: TextStyle(
        fontSize: 64
      ),
      stepGranularity: 10,
      minFontSize: 20,
      // presetFontSizes: [
      //   64, 48, 42, 32
      // ],
      // minFontSize: 12,
      // maxFontSize: 40,
      maxLines: 1,
    ),
  );
}