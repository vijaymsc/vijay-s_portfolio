import 'package:enefty_icons/enefty_icons.dart';
import 'package:flutter/material.dart';

import '../constants/constant_value.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            const Header(),
            Expanded(child:SingleChildScrollView(
              child: Padding(
                padding:const EdgeInsets.all(defaultPadding),
                child:  Column(
                  children: const[
                    Contact(),
                    SizedBox(
                      height: defaultPadding,
                    ),
                    Divider(),
                  ],
                ),
              ),
            ) )
          ],
        ),
      ),
    );
  }
}
class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            'Contact',
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        const ContactInfo(icon: Icons.call,text: mobileNumber,),
        const ContactInfo(icon: Icons.email_outlined ,text: email,),
        const ContactInfo(icon:Icons.link ,text: linkedInUrl,),
        const ContactInfo(icon:Icons.location_on_outlined ,text: location,),
      ],
    );
  }
}
class ContactInfo extends StatelessWidget {
  const ContactInfo({Key? key, this.text, this.icon}) : super(key: key);

  final IconData? icon;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(icon),
          const SizedBox(width: defaultPaddingSmall,),
          Text(text!,maxLines: 1,overflow: TextOverflow.ellipsis,)],
      ),
    );
  }
}


class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.35,
      child: Container(
        color: Colors.white,
        child: Stack(
          alignment: Alignment.center,
          children: [
            //  const Spacer(flex: 2),
            Column(
              children: [
                Container(
                  height: 80,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(appBarBanner), fit: BoxFit.fill)),
                ),
                Expanded(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Spacer(),
                    const Spacer(),
                    Text(
                      profileName,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      jobRoll,
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontWeight: FontWeight.w200, height: 1.5),
                    ),
                    const Spacer(),
                    //  const Spacer(flex: 5,),
                  ],
                ))
              ],
            ),
            const Positioned(
              top: 30,
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage(
                  profileImg,
                ),
              ),
            ),
            // Image.asset("assets/user.png",color: Colors.white,fit: BoxFit.scaleDown,height: 80,width: 80,),
          ],
        ),
      ),
    );
  }
}
