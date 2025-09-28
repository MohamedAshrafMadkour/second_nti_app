import 'package:doctor_app/feature/main/presentation/view/widget/bottom_nav_bar.dart';
import 'package:doctor_app/feature/main/presentation/view/widget/fav_section.dart';
import 'package:doctor_app/feature/main/presentation/view/widget/home_section.dart';
import 'package:flutter/material.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});
  static const routeName = 'main_view';

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBar(
        onItemTapped: (value) {
          setState(() {
            currentIndex = value;
          });
        },
      ),
      body: _widgetOptions[currentIndex],
    );
  }
}

List<Widget> _widgetOptions = <Widget>[
  const HomeSection(),
  const FavoriteSection(),
  const MessageSection(),
  const ChatSection(),
];

class MessageSection extends StatelessWidget {
  const MessageSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class ChatSection extends StatelessWidget {
  const ChatSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
