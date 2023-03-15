import 'package:flutter/material.dart';
import 'package:flutter_ready_rental/constants/ImageAssest.dart';
import 'package:flutter_ready_rental/screens/ChatListScreen.dart';
import 'package:flutter_ready_rental/screens/FilterScreen.dart';
import 'package:flutter_ready_rental/screens/HomeScreen.dart';
import 'package:flutter_ready_rental/screens/WishlistScreen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    const WishlistScreen(),
    const FilterScreen(),
    const ChatListScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(top: 10.h, left: 10.w, right: 10.w),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40.r),
            topRight: Radius.circular(40.r),
          ),
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.1),
              offset: Offset(0, -10),
              blurRadius: 40,
            ),
          ],
        ),
        child: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: const Color.fromRGBO(215, 215, 215, 1),
          ),
          child: SalomonBottomBar(
            itemPadding: EdgeInsets.symmetric(horizontal: 19.w, vertical: 16.w),
            selectedColorOpacity: 1,
            currentIndex: _selectedIndex,
            onTap: (i) => setState(() => _selectedIndex = i),
            items: [
              SalomonBottomBarItem(
                icon: Image.asset(
                  _selectedIndex == 0 ? activeHomeIcon : unHomeActiveIcon,
                  width: 20.w,
                  height: 20.w,
                  fit: BoxFit.contain,
                ),
                title: Text(
                  'Home',
                  style: TextStyle(
                      color: const Color.fromRGBO(250, 250, 250, 1),
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500),
                ),
                selectedColor: const Color.fromRGBO(13, 220, 132, 1),
              ),
              SalomonBottomBarItem(
                icon: Image.asset(
                  _selectedIndex == 1
                      ? activeFavouriteIcon
                      : unActiveFavouriteIcon,
                  width: 20.w,
                  height: 20.w,
                  fit: BoxFit.contain,
                ),
                title: Text(
                  'Favoritos',
                  style: TextStyle(
                      color: const Color.fromRGBO(250, 250, 250, 1),
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500),
                ),
                selectedColor: const Color.fromRGBO(13, 220, 132, 1),
              ),
              SalomonBottomBarItem(
                icon: Image.asset(
                  _selectedIndex == 2 ? activeBookIcon : unActiveBookIcon,
                  width: 20.w,
                  height: 20.w,
                  fit: BoxFit.contain,
                ),
                title: Text(
                  'Filtros',
                  style: TextStyle(
                      color: const Color.fromRGBO(250, 250, 250, 1),
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500),
                ),
                selectedColor: const Color.fromRGBO(13, 220, 132, 1),
              ),
              SalomonBottomBarItem(
                icon: Image.asset(
                  _selectedIndex == 3 ? activeChatIcon : unActiveChatIcon,
                  width: 20.w,
                  height: 20.w,
                  fit: BoxFit.contain,
                ),
                title: Text(
                  'Mensajes',
                  style: TextStyle(
                      color: const Color.fromRGBO(250, 250, 250, 1),
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500),
                ),
                selectedColor: const Color.fromRGBO(13, 220, 132, 1),
              ),
            ],
          ),
        ),
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
    );
  }
}
 
//todo
  //juntarnos con begazo en el transcurso de la semana -martes, lunes tarde
  //cambio de imagenes en base a colores del splash screen
  //frases en vez de Lorem ipsum.
  // actualizacion al nuevo manual de marca
  // listado assets iconos / traduccion.