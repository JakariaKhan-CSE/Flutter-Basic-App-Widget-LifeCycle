import 'package:flutter/material.dart';

class MyStatefulwiget extends StatefulWidget {
  // first call constructor. program start here
   MyStatefulwiget({super.key}){  // see carefull {print methid} instead ;
    print('from constructor');
  }

   // second call create state.
  @override
  State<MyStatefulwiget> createState()  {  // i remove => arrow function and use { return state}
    print('from create state');
    return _MyStatefulwigetState();
  }
}

class _MyStatefulwigetState extends State<MyStatefulwiget> {
  late int abc;

  // third call init state.
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    abc = 10;
    print('from initState');
  }

  // four call didChange state.
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    print('from didChangeDependencies');
  }

  // get old state and change new update state
  @override
  void didUpdateWidget(covariant MyStatefulwiget oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    print('from didUpdateWidget');
  }

  // call at last. very useful for free memory
  // remove all the connection when app stop
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print('from dispose');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text(abc.toString() ),),
    );
  }
}
