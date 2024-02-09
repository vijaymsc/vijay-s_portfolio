import 'dart:convert';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';
import 'package:vijays_portfolio/responsive_constant/responcive_data.dart';

import 'constants/constant_value.dart';
import 'main_Screen.dart';

void main() {
  runApp(
    const Home(),
  );
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: MyCustomScrollBehavior(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        useMaterial3: true,
        primaryColor: primaryColor,
        scaffoldBackgroundColor: backGroundColour,
        canvasColor: backGroundColour,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white)
            .copyWith(
              bodyText1: const TextStyle(color: bodyTextColor),
              bodyText2: const TextStyle(color: bodyTextColor),
            ),
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const MainScreen(
      children: [
        Responsive(
          mobile: ProfileSummery(childAspectRatio: 0.5),
          mobileLarge: ProfileSummery(childAspectRatio: 0.46),
          tablet: ProfileSummery(childAspectRatio: 0.6),
          desktop: ProfileSummery(childAspectRatio: 2),
        ),
        // Responsive(
        //   mobile: ProfileAbout(childAspectRatio: 0.5),
        //   mobileLarge: ProfileAbout(childAspectRatio: 0.5),
        //   tablet: ProfileAbout(childAspectRatio: 0.6),
        //   desktop: ProfileAbout(childAspectRatio: 2),
        // ),
        Responsive(
          mobile: ProfileExperience(
              childAspectRatio: 0.5,
              companyName: organizationName,
              experienceDescription: experienceData),
          mobileLarge: ProfileExperience(
              childAspectRatio: 0.6,
              companyName: organizationName,
              experienceDescription: experienceData),
          tablet: ProfileExperience(
              childAspectRatio: 0.6,
              companyName: organizationName,
              experienceDescription: experienceData),
          desktop: ProfileExperience(
              childAspectRatio: 2,
              companyName: organizationName,
              experienceDescription: experienceData),
        ),
        Responsive(
          mobile: ProfileProjects(childAspectRatio: 0.5),
          mobileLarge: ProfileProjects(childAspectRatio: 0.6),
          tablet: ProfileProjects(childAspectRatio: 0.6),
          desktop: ProfileProjects(childAspectRatio: 2),
        ),
        Responsive(
          mobile: ProfileEducation(childAspectRatio: 0.5),
          mobileLarge: ProfileEducation(childAspectRatio: 0.6),
          tablet: ProfileEducation(childAspectRatio: 0.6),
          desktop: ProfileEducation(childAspectRatio: 2),
        ),
        Responsive(
          mobile: ProfileContacts(childAspectRatio: 1),
          mobileLarge: ProfileContacts(childAspectRatio: 1),
          tablet: ProfileContacts(childAspectRatio: 2.38),
          desktop: ProfileContacts(childAspectRatio: 4),
        )
      ],
    );
  }
}

class ProfileSummery extends StatelessWidget {
  const ProfileSummery({super.key, this.childAspectRatio = 1.3});
  final double childAspectRatio;
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    return Container(
     // color: Colors.deepPurpleAccent,
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: Responsive.isMobileLarge(context) ||
                    Responsive.isMobile(context)
                ? 40
                : Responsive.isTablet(context)
                    ? h / 5.0
                    : h / 4.5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hi, my name is",
              style: GoogleFonts.abel(
                  fontSize: 30,
                  fontWeight: FontWeight.w400,
                  color: primaryColour),
            ),
            const SizedBox(
              height: defaultPadding,
            ),
            Text(
              "Vijay V",
              style: GoogleFonts.abel(
                  fontSize: 35,
                  height: 2,
                  wordSpacing: 8,
                  letterSpacing: 1,
                  fontWeight: FontWeight.w800,
                  color: secondaryTextColour),
            ),
            const SizedBox(
              height: defaultPadding,
            ),
            Text(
              "I build things for the Flutter Application",
              style: GoogleFonts.abel(
                  fontSize: 35,
                  wordSpacing: 5,
                  letterSpacing: 1,
                  fontWeight: FontWeight.w800,
                  color: primaryTextColour),
            ),
            const SizedBox(
              height: defaultPadding,
            ),
            ReadMoreText(
              profileSummery,
              trimLines: 6,
              style: GoogleFonts.abel(
                  fontSize: 20,
                  height: 2,
                  wordSpacing: 2,
                  letterSpacing: 1,
                  fontWeight: FontWeight.w400,
                  color: primaryTextColour),
              colorClickableText: primaryColour,
              trimMode: TrimMode.Line,
              trimCollapsedText: 'Show more',
              trimExpandedText: 'Show less',
              moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: defaultPadding,
            ),
            const SizedBox(
              height: defaultPadding,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 35),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: primaryColour, width: 1)),
                child: Text(
                  'Contact  Us',
                  style: GoogleFonts.abel(
                      fontSize: 15,
                      fontWeight: FontWeight.w800,
                      color: primaryColour),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileAbout extends StatelessWidget {
  const ProfileAbout({super.key, this.childAspectRatio = 1.3});
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: childAspectRatio,
      child: Container(
          color: Colors.black,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TittleHeadLine(subTitle: "01 ", title: " About Me  "),
              Text(
                " ibulum, vel laoreet purus imperdiet. Nullam at ex et neque viverra interdum. Quisque pretium lorem sed dolor gravida, quis vehicula arcu iaculis. Praesent eget porttitor turpis. Mauris dapibus arcu vitae tellus gravida, et tempor lorem faucibus. Aliquam eget lacinia tortor. Phasellus justo nisi, feugiat a neque sit amet, malesuada cursus lectus. Cras laoreet, quam vitae volutpat aliquam, diam diam lacinia dui, in vulputate massa sapien at dui. Sed mattis dolor vitae dolor auctor, at euismod diam posuere.",
                style: customStyle(
                    textColor: primaryTextColour,
                    fontSize: 20.0,
                    weight: FontWeight.w800,
                    letterSpacing: 0.5,
                    wordSpacing: 4.0),
              ),
              Text(
                "\n ibulum, vel laoreet purus imperdiet. Nullam at ex et neque viverra interdum. Quisque pretium lorem sed dolor gravida, quis vehicula arcu iaculis. Praesent eget porttitor turpis. Mauris dapibus arcu vitae tellus gravida, et tempor lorem faucibus. Aliquam eget lacinia tortor. Phasellus justo nisi, feugiat a neque sit amet, malesuada cursus lectus. Cras laoreet, quam vitae volutpat aliquam, diam diam lacinia dui, in vulputate massa sapien at dui. Sed mattis dolor vitae dolor auctor, at euismod diam posuere.",
                style: customStyle(
                    textColor: primaryTextColour,
                    fontSize: 20.0,
                    weight: FontWeight.w800,
                    letterSpacing: 0.5,
                    wordSpacing: 4.0),
              ),
              Text(
                  '\nHere are a few technologies I’ve been working with recently:',
                  style: customStyle(
                      textColor: primaryTextColour,
                      fontSize: 18.0,
                      wordSpacing: 1.0))
            ],
          )),
    );
  }
}

class ProfileExperience extends StatelessWidget {
  const ProfileExperience(
      {super.key,
      required this.experienceDescription,
      this.childAspectRatio = 1.3,
      required this.companyName});
  final double childAspectRatio;
  final String companyName, experienceDescription;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPaddingBig),
      child: Container(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TittleHeadLine(subTitle: "02 ", title: " Where I’ve Worked  "),
          const SizedBox(
            height: defaultPaddingBig,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              companyName,
              style: customStyle(
                  fontSize: 30,
                  textColor: secondaryTextColour,
                  weight: FontWeight.w800),
            ),
          ),
          const SizedBox(
            height: defaultPaddingBig,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: ListTile(
                contentPadding: EdgeInsets.zero,
                subtitle: Column(
                    children:
                        LineSplitter.split(experienceDescription).map((value) {
                  return Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "• ",
                            style: customStyle(fontSize: 25.0),
                          ),
                          Expanded(
                            child: Text(
                              value,
                              style: customStyle(
                                  textColor: primaryTextColour,
                                  fontSize: 20.0,
                                  weight: FontWeight.w800,
                                  letterSpacing: 0.5,
                                  wordSpacing: 4.0),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: defaultPaddingSmall,
                      )
                    ],
                  );
                }).toList())),
          ),
        ],
      )),
    );
  }
}

class ProfileProjects extends StatelessWidget {
  const ProfileProjects({super.key, this.childAspectRatio = 1.3});
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25),
      child: Container(
          // color: Colors.black,
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const TittleHeadLine(
              subTitle: "03 ", title: " Some Things I’ve Built  "),
          const SizedBox(
            height: defaultPaddingBig,
          ),
          Responsive.isMobile(context) || Responsive.isMobileLarge(context)
              ? Column(
                  children: const [
                    ProjectGrid(
                      backGroundImageUrl: 'assets/project_banner1.jpg',
                      projectTitle: projectTitle,
                      projectDescription: projectDescription,
                      projectShortDescription: projectShortDescription,
                    ),
                    SizedBox(
                      height: defaultPaddingSmall,
                    ),
                    ProjectGrid(
                      backGroundImageUrl: 'assets/project_banner2.jpg',
                      projectTitle: projectTitle1,
                      projectDescription: projectDescription1,
                      projectShortDescription: projectShortDescription1,
                    ),
                  ],
                )
              : Row(
                  mainAxisAlignment: Responsive.isDesktop(context)
                      ? MainAxisAlignment.spaceEvenly
                      : MainAxisAlignment.spaceBetween,
                  children: [
                    ProjectGrid(
                      backGroundImageUrl: 'assets/project_banner1.jpg',
                      projectTitle: projectTitle,
                      projectDescription: projectDescription,
                      projectShortDescription: projectShortDescription,
                      customWidth: Responsive.isTablet(context) ? 300 : 600,
                    ),
                    ProjectGrid(
                      backGroundImageUrl: 'assets/project_banner2.jpg',
                      projectTitle: projectTitle1,
                      projectDescription: projectDescription1,
                      projectShortDescription: projectShortDescription1,
                      customWidth: Responsive.isTablet(context) ? 300 : 600,
                    ),
                  ],
                )
        ],
      )),
    );
  }
}

class ProfileEducation extends StatelessWidget {
  const ProfileEducation({super.key, this.childAspectRatio = 1.3});
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPaddingBig),
      child: Container(
          // color: Colors.black,
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          TittleHeadLine(subTitle: "04 ", title: "Educations  "),
          SizedBox(
            height: defaultPaddingBig,
          ),
          EducationProfile(
            institutionName:
                "St.Joseph’s College Of Arts And Science College - cuddalore",
            startYear: "2020",
            endYear: "2022",
            department: "MSC - Information Technology ",
            percentage: "80.00 %",
            itermCount: 'i',
          ),
           SizedBox(
            height: defaultPaddingLarge,
          ),
          EducationProfile(
            institutionName:
            "St.Joseph’s College Of Arts And Science College - cuddalore",
            startYear: "2017",
            endYear: "2020",
            department: "BCA - Bachelor of Computer Application",
            percentage: "65.00 %",
            itermCount: "ii",
          )
        ],
      )),
    );
  }
}

class EducationProfile extends StatelessWidget {
  const EducationProfile(
      {super.key,
      required this.institutionName,
      required this.startYear,
      required this.endYear,
      required this.percentage,
      required this.department,required this.itermCount});
  final String institutionName, startYear, endYear, percentage, department,itermCount;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('[ $itermCount ]',  style: customStyle(fontSize: 20.0, weight: FontWeight.w800),),
          const SizedBox(width: defaultPaddingSmall,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text('$startYear - $endYear',
                      style: customStyle(
                          textColor: secondaryTextColour,
                          fontSize: 18.0,
                          weight: FontWeight.w500)),
                  const SizedBox(
                    width: defaultPaddingSmall,
                  ),
                  Container(
                    height: 22,
                    color: primaryTextColour,
                    width: 2,
                  ),
                  const SizedBox(
                    width: defaultPaddingSmall,
                  ),
                  Text(institutionName,
                      style: customStyle(
                          textColor: secondaryTextColour,
                          fontSize: 18.0,
                          weight: FontWeight.w500))
                ],
              ),
              const SizedBox(
                height: defaultPadding,
              ),
              Row(
                children: [
                  Text(department,
                      style: customStyle(
                          textColor: secondaryTextColour,
                          fontSize: 18.0,
                          weight: FontWeight.w500)),
                  const SizedBox(
                    width: defaultPadding,
                  ),
                  Text('percentage : $percentage',
                      style: customStyle(
                          textColor: secondaryTextColour,
                          fontSize: 18.0,
                          weight: FontWeight.w500))
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}

class ProjectGrid extends StatelessWidget {
  const ProjectGrid(
      {super.key,
      required this.backGroundImageUrl,
      required this.projectTitle,
      required this.projectDescription,
      this.playStoreUrl,
      this.appStoreUrl,
      required this.projectShortDescription,
      this.customWidth = 400});
  final String backGroundImageUrl,
      projectTitle,
      projectDescription,
      projectShortDescription;
  final String? playStoreUrl, appStoreUrl;
  final double customWidth;
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Container(
        //height: 500,
        width: customWidth,
        decoration: BoxDecoration(
          color: imageBlur,
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            fit: BoxFit.cover,
            colorFilter:
                ColorFilter.mode(imageBlur.withOpacity(0.2), BlendMode.dstATop),
            image: AssetImage(
              backGroundImageUrl,
              //'assets/project_banner1.jpg',
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Featured projects', style: customStyle(fontSize: 25.0)),
              const SizedBox(
                height: defaultPadding,
              ),
              Text(projectTitle,
                  style: customStyle(
                      textColor: secondaryTextColour,
                      fontSize: 30.0,
                      weight: FontWeight.w700)),
              const SizedBox(
                height: defaultPadding,
              ),
              Text(projectShortDescription,
                  style: customStyle(
                      textColor: secondaryTextColour,
                      fontSize: 16.0,
                      weight: FontWeight.w500)),
              const SizedBox(
                height: defaultPadding,
              ),
              ListTile(
                  subtitle: Column(
                      children:
                          LineSplitter.split(projectDescription).map((value) {
                return Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "• ",
                          style: customStyle(fontSize: 25.0),
                        ),
                        Expanded(
                          child: Text(
                            value,
                            style: customStyle(
                                textColor: primaryTextColour,
                                fontSize: 20.0,
                                weight: FontWeight.w800,
                                letterSpacing: 0.5,
                                wordSpacing: 4.0),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: defaultPaddingSmall,
                    )
                  ],
                );
              }).toList())),
              const SizedBox(
                height: defaultPadding,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    iconSize: 30,
                    alignment: Alignment.center,
                    icon: Image.asset(
                      'assets/playstore.png',
                      color: secondaryTextColour,
                      height: 30,
                      width: 30,
                    ),
                  ),
                  const SizedBox(
                    width: defaultPadding,
                  ),
                  IconButton(
                    onPressed: () {},
                    iconSize: 30,
                    alignment: Alignment.center,
                    icon: Image.asset(
                      'assets/appStore.png',
                      color: secondaryTextColour,
                      height: 30,
                      width: 30,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileContacts extends StatelessWidget {
  const ProfileContacts({super.key, this.childAspectRatio = 1.3});
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: childAspectRatio,
      child: Container(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const TittleHeadLine(
              subTitle: "04. ",
              title: "What’s Next?  ",
              isDividerEnabled: false),
          const SizedBox(height: defaultPadding),
          Text(
            "Get In Touch",
            style: customStyle(
                textColor: secondaryTextColour,
                fontSize: 30.0,
                wordSpacing: 3.0,
                weight: FontWeight.w800),
          ),
          const SizedBox(height: defaultPaddingBig),
          Text(
            "Although I’m currently looking for any new opportunities, my inbox is always open. Whether you have a question or just want to say hi, I’ll try my best to get back to you!",
            style: customStyle(
              textColor: primaryTextColour,
              fontSize: 20.0,
              wordSpacing: 3.5,
              weight: FontWeight.w700,
              textHeight: 1.1,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: defaultPaddingBig),
          InkWell(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 35),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: primaryColour, width: 1)),
              child: Text(
                'Say  Hello',
                style: GoogleFonts.abel(
                    fontSize: 15,
                    fontWeight: FontWeight.w800,
                    color: primaryColour),
              ),
            ),
          ),
        ],
      )),
    );
  }
}

class TittleHeadLine extends StatelessWidget {
  const TittleHeadLine(
      {super.key,
      required this.title,
      required this.subTitle,
      this.isDividerEnabled = true});
  final String title, subTitle;
  final bool isDividerEnabled;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          subTitle,
          style: customStyle(fontSize: 30.0, weight: FontWeight.w800),
        ),
        Text(title,
            style: customStyle(
                textColor: secondaryTextColour,
                fontSize: 30.0,
                weight: FontWeight.w800)),
        if (isDividerEnabled)
          const Expanded(
              child: Divider(
            height: 5,
            color: primaryTextColour,
          ))
        //   Divider(height: 2,color: Colors.red,)
      ],
    );
  }
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}
