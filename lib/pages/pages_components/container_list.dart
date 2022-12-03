import 'package:flutter/cupertino.dart';

class Containerlist extends StatefulWidget {
  const Containerlist(
      {super.key,
      this.containerlistimage,
      required this.assetNames,
      required this.index});
  final ImageProvider<Object>? containerlistimage;
  final List<String> assetNames;
  final int index;

  @override
  State<Containerlist> createState() => _ContainerlistState();
}

class _ContainerlistState extends State<Containerlist> {
  final List<String> type = const ['LifeStyle', 'IT', 'Travel'];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding:
            const EdgeInsets.only(top: 2.0, left: 6.0, right: 6.0, bottom: 6.0),
        child: SizedBox(
          height: 600,
          width: 200,
          child: Image(
              image: AssetImage(widget.assetNames[widget.index]),
              fit: BoxFit.cover),
        ),
      ),
    );
  }
}
