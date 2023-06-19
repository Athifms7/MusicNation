import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
// import 'package:markdown/markdown.dart' ;

class PolicyDialog extends StatelessWidget {
  const PolicyDialog({Key? key, this.radius = 8, required this.mdFileName})
      : super(key: key);

  final double radius;
  final String mdFileName;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius)),
      child: Column(
        children: [
          Expanded(
            child: FutureBuilder<String>(
              future: rootBundle.loadString('assets/$mdFileName'),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (snapshot.hasError) {
                  return Center(
                    child: Text('Error loading Markdown'),
                  );
                } else {
                  return Markdown(data: snapshot.data ?? '');
                }
              },
            ),
          ),
          ElevatedButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text('Close'),
          ),
        ],
      ),
    );
  }
}
