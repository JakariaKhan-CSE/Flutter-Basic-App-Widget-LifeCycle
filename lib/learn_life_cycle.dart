import 'package:flutter/material.dart';

class LearnLifeCycle extends StatefulWidget {
  const LearnLifeCycle({super.key});

  @override
  State<LearnLifeCycle> createState() => _LearnLifeCycleState();
}

class _LearnLifeCycleState extends State<LearnLifeCycle> with WidgetsBindingObserver {

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this); // this means (ai class)
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    WidgetsBinding.instance.removeObserver(this);
  }

  // app close kora hosse kina. App background running state a ase kina
  // apps again open korse kina tracking kora jai didChangeAppLifecycleState function diye
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    // TODO: implement didChangeAppLifecycleState
    super.didChangeAppLifecycleState(state);
    print(state);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Hello"),),
    );
  }
}
