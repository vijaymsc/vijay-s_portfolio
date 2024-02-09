import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vijays_portfolio/responsive_constant/responcive_data.dart';

import 'constants/constant_value.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key, required this.children}) : super(key: key);
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(80), child: DynamicAppBar()),
      endDrawer: const EndAppDrawe(),
      //drawer: SideMenu(),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: Responsive.isMobileLarge(context) ? 15
                    : Responsive.isMobile(context) ? 15
                    : Responsive.isTablet(context)?80:100),
            child: Column(
              children: [...children],
            ),
          ),
        ),
      ),
    );
  }
}

class EndAppDrawe extends StatelessWidget {
  const EndAppDrawe({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Drawer(
        backgroundColor: backGroundColour,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppBarAction(title: "About", count: "01", titleAction: () {}),
            AppBarAction(
                title: "Experience", count: "02", titleAction: () {}),
            AppBarAction(title: "work", count: "03", titleAction: () {}),
            AppBarAction(title: "contact", count: "04", titleAction: () {}),
          ],
        ),
      ),

    );
  }
}

class DynamicAppBar extends StatelessWidget {
  const DynamicAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: appBarBackGroundColour,
      centerTitle: true,
      automaticallyImplyLeading: false,
      elevation: 0,
      //appBarBackGroundColour,
      leading: IconButton(
          onPressed: () {},
          icon: const ImageIcon(
            AssetImage("assets/v.png"),
            size: 55,
            color: primaryColour,
          )),

      actions: Responsive.isDesktop(context)
          ? [
              const Spacer(),
              AppBarAction(title: "About", count: "01", titleAction: () {}),
              AppBarAction(
                  title: "Experience", count: "02", titleAction: () {}),
              AppBarAction(title: "work", count: "03", titleAction: () {}),
              AppBarAction(title: "contact", count: "04", titleAction: () {}),
              InkWell(
                onTap: () {},
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: primaryColour, width: 1)),
                  child: Text(
                    'Resume',
                    style: GoogleFonts.abel(
                        fontSize: 15,
                        fontWeight: FontWeight.w800,
                        color: primaryColour),
                  ),
                ),
              ),
              const SizedBox(
                width: defaultPadding,
              )
              // const Spacer(),
            ]
          : [
              Builder(
                builder: (BuildContext context) => IconButton(
                    onPressed: () {
                      Scaffold.of(context).openEndDrawer();
                    },
                    icon: const ImageIcon(
                      AssetImage("assets/menus.png"),
                      size: 35,
                    )),
              ),
            ],
    );
  }
}

class AppBarAction extends StatelessWidget {
  const AppBarAction(
      {Key? key,
      required this.title,
      required this.count,
      required this.titleAction})
      : super(key: key);
  final String title, count;
  final Function titleAction;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width / 35.0),
      child: Responsive.isMobileLarge(context)?
      Column(
        children: [
          InkWell(
            onTap: () => titleAction,
            child: Container(
              alignment: Alignment.center,
              color: Colors.red,
              child: Row(
                children: [
                  Text(
                    '$count. ',
                    style: GoogleFonts.abel(
                        fontSize: 15,
                        fontWeight: FontWeight.w800,
                        color: primaryColour),
                  ),
                  Text(
                    title,
                    style: GoogleFonts.abel(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: primaryTextColour),
                  ),
                ],
              ),
            ),
          ),
        ],
      ):
      Row(
        children: [
          InkWell(
            onTap: () => titleAction,
            child: Container(
              alignment: Alignment.center,
             // color: Colors.red,
              child: Row(
                children: [
                  Text(
                    '$count. ',
                    style: GoogleFonts.abel(
                        fontSize: 15,
                        fontWeight: FontWeight.w800,
                        color: primaryColour),
                  ),
                  Text(
                    title,
                    style: GoogleFonts.abel(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: primaryTextColour),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
