import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const primaryColor = Color(0xFFFFC107);
const secondaryColor = Color(0xFF242430);
const darkColor = Color(0xFF191923);
const bodyTextColor = Color(0xFF8B8B8D);
const bgColor = Color(0xFF1E1E28);
const  imageBlur = Color(0xFF0c2135);

const defaultPadding = 20.0;
const defaultPaddingBig = 30.0;
const defaultPaddingLarge = 50.0;
const defaultPaddingSmall = 10.0;
const defaultDuration = Duration(seconds: 1);
const maxWidth = 1440.0;

///Profile Head
const profileName = "Vijay V";
const jobRoll = "Flutter Developer";
const appBarBanner = "assets/cover_image.jpeg";
const profileImg = "assets/user.png";

///contact info
const mobileNumber = "6381761920";
const email = "vijayvsjc15@gmail.com";
const linkedInUrl = "https://www.linkedin.com/in/vijaysjc/";
const location = "chennai";

///new
///Color constant
const backGroundColour = Color(0xFF0a1930);
const appBarBackGroundColour = Color(0xFF0a1a2f);
const primaryColour = Color(0xFF64ffda);
const primaryTextColour = Color(0xFF848faa);
const secondaryTextColour = Color(0xFFccd6f6);

///Text style

TextStyle customStyle({
  double fontSize = 15,
  FontWeight weight = FontWeight.w500,
  Color textColor = primaryColour,
  double textHeight = 1.0,
  letterSpacing = 0.5,
  wordSpacing = 2.0,
}) {
  return GoogleFonts.abel(
      fontSize: fontSize,
      fontWeight: weight,
      height: textHeight,
      letterSpacing: letterSpacing,
      wordSpacing: wordSpacing,
      color: textColor);
}


///progile summery
const profileSummery = 'Dedicated and results-driven Flutter Developer with 2 years of hands-on experience in building robust and efficient mobile applications for both iOS and Android platforms. Proficient in leveraging the Dart programming language and Flutter framework to create intuitive user interfaces and deliver seamless user experiences.';

///project Description
const projectTitle = "uLektz";
const projectDescription = '''Stay Informed with Feeds: Keep up to date with real-time feeds, news, and updates from the education and industry world.\n  Network with a Purpose: Join a vibrant community of 1 million+ students, faculty, and industry professionals from across India . \n Connect through Messages: Seamlessly communicate with your peers, mentors, and colleagues \nJoin Communities: Find and participate in tailored communities that match your interests, fields of study, and career aspirations .\n Access 360 Resources: Explore a vast digital library filled with educational resources, industry insights, and skill development materials. \nEarn Wallet Rewards: Get rewarded for your active participation within the uLektz platform. Collect wallet rewards to unlock exclusive benefits and further your educational journey.''';
const projectShortDescription = 'An application is used to Social Learning Platform for Higher Education. Connect with peers and industry professionals. Get Al- based personalised recommendations and resources for education, skills and careers .';
const projectTitle1 = "Pragati";
const projectShortDescription1 = "Pragati Books is one of the Woocommerce project. An application is used to purchase a Books, have to purchase physical and virtual books like EPUB and PDF.";
const projectDescription1 = "Books delivered or get access to Ebook immediately on the Pragati Books app at reasonable price from any part of India \nPragati Books App is the Digital Book Store Mobile Version for Pragationline.com, where one can order Books, E-Books, Stationery and other Educational Aids.\nThe Pragati Books App provides a solution to get access to the Ebook immediately when you place the order until your book is being delivered to you. \n Our Reader gives users an option to take Notes, so that they have the freedom to engrave their thoughts without any kind of limitations.\nUsers can Highlight, important points of the eBooks, so that they can later review only the important points of the eBook, and even share them among friends.\nDigital Ebook Library. All book purchased will be listed on the library and you can easily locate and access the book anytime anywhere.";

///profile experience

const organizationName ='uLektz Learning Solutions Pvt Ltd';
const experienceData ='2 years of IT experience, specializing in Flutter mobile applications.\nBuilding and maintaining both iOS and Android applications. \nSuccessfully deployed apps on Google Play Store and Apple App Store. \nExperience in Dart, Android & iOS,MVVM, Firebase,Provider and Git . \nDemonstrated experience in integrating third-party libraries and APIs to enhance functionality in software development projects. \nHave Experience in UI/UX, Troubleshooting, ';