import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:wikigame/bloc/switch_bloc.dart';
//import 'package:igdbapp/style/theme.dart' as Style;

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  PageController _pageController;
  SwitchBloc _switchBloc;
  GlobalKey bottomNavigationKey = GlobalKey();
  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _switchBloc = SwitchBloc();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  void _showGrid() {
    _switchBloc.showGrid();
  }
  void _showList(){
   _switchBloc.showList();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2032A),
      appBar: PreferredSize(child: Container(), 
      preferredSize: Size.fromHeight(0.0)),
      body: SizeBox.expand(
       child: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: _pageController,
        onPageChanged: (index){
          setState(() => _currentIndex = index);
        },
        children: [
         Container(
          child: Text("Screen 1"),
         ),
         Container(
          child: Text("Screen 2"),
         ),
          Container(
          child: Text("Screen 3"),
          ),
            Container(
          child: Text("Screen 4"),
          )
         ],
        ),
       ),
       bottomNavigationBar: Container(
        child: BottomNavyBar(
          containerHeight: 56.0,
          backgroundColor: ,
        ),
       ),
      );
  }
}
