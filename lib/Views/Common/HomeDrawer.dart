import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personalizeguidanceforahealthyheart/Controllers/Auth/AuthController.dart';
import 'package:personalizeguidanceforahealthyheart/Models/Colors.dart';
import 'package:personalizeguidanceforahealthyheart/Models/Utils.dart';
import 'package:personalizeguidanceforahealthyheart/Views/Auth/Login.dart';
import 'package:personalizeguidanceforahealthyheart/Views/Common/Schedule.dart';
import 'package:personalizeguidanceforahealthyheart/Views/Excercise/Fitness.dart';
import 'package:personalizeguidanceforahealthyheart/Views/Stress/stressHome.dart';

class HomeDrawer extends StatefulWidget {
  int selection = 1;

  HomeDrawer({this.selection});

  @override
  _HomeDrawerState createState() => _HomeDrawerState(selection: this.selection);
}

class _HomeDrawerState extends State<HomeDrawer> {
  int selection;

  _HomeDrawerState({this.selection});

  AuthController _authController = new AuthController();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          width: double.infinity,
          height: Utils.displaySize.height * 0.15,
          decoration: Utils.getGradientBackground(),
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  height: 70.0,
                  width: 70.0,
                  child: ClipOval(
                    child: Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTt-JmDfLz7ErRiTZ9vIme55A9JGQqdx8qJ_xQ_lB2UIqGAFELpsKQQ8xuTSrlqrly-tSQ&usqp=CAU',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      Utils.profileUser.name.toString().toUpperCase(),
                      style: GoogleFonts.openSans(
                          color: UtilColors.whiteColor,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      Utils.profileUser.email.toString(),
                      style: GoogleFonts.openSans(
                          color: UtilColors.whiteColor,
                          fontSize: 10.0,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5.0),
                      decoration: BoxDecoration(
                          color: UtilColors.blackColor.withOpacity(0.8),
                          border: Border.all(color: UtilColors.blackColor),
                          borderRadius: BorderRadius.circular(10.0)),
                      padding:
                          EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
                      child: Text(
                        'Member since 2019'.toUpperCase(),
                        style: GoogleFonts.openSans(
                            fontSize: Utils.smallFonts,
                            color: UtilColors.whiteColor,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        ListTile(
          tileColor: (this.selection == 1)
              ? UtilColors.primaryColor.withOpacity(0.3)
              : UtilColors.whiteColor,
          leading: Icon(
            Icons.home,
            color: UtilColors.blackColor.withOpacity(0.8),
          ),
          title: Text(
            'Home',
            style: GoogleFonts.openSans(
                color: UtilColors.blackColor, fontWeight: FontWeight.w400),
          ),
          trailing: Icon(
            Icons.arrow_forward_ios,
            color: UtilColors.primaryColor,
            size: 15.0,
          ),
        ),
        ListTile(
          tileColor: (this.selection == 2)
              ? UtilColors.primaryColor.withOpacity(0.3)
              : UtilColors.whiteColor,
          leading: Icon(
            Icons.home_work,
            color: UtilColors.blackColor.withOpacity(0.8),
          ),
          title: Text(
            'Stress Calculator',
            style: GoogleFonts.openSans(
                color: UtilColors.blackColor, fontWeight: FontWeight.w400),
          ),
          trailing: Icon(
            Icons.arrow_forward_ios,
            color: UtilColors.primaryColor,
            size: 15.0,
          ),
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: ((_) => StressPredictHome())));
          },
        ),
        ListTile(
          tileColor: (this.selection == 3)
              ? UtilColors.primaryColor.withOpacity(0.3)
              : UtilColors.whiteColor,
          leading: Icon(
            Icons.food_bank,
            color: UtilColors.blackColor.withOpacity(0.8),
          ),
          title: Text(
            'Meal Suggetions',
            style: GoogleFonts.openSans(
                color: UtilColors.blackColor, fontWeight: FontWeight.w400),
          ),
          trailing: Icon(
            Icons.lock,
            color: UtilColors.redColor,
            size: 15.0,
          ),
        ),
        ListTile(
          tileColor: (this.selection == 4)
              ? UtilColors.primaryColor.withOpacity(0.3)
              : UtilColors.whiteColor,
          leading: Icon(
            Icons.fitness_center,
            color: UtilColors.blackColor.withOpacity(0.8),
          ),
          title: Text(
            'Fitness Scheduler',
            style: GoogleFonts.openSans(
                color: UtilColors.blackColor, fontWeight: FontWeight.w400),
          ),
          trailing: Icon(
            Icons.arrow_forward_ios,
            color: UtilColors.primaryColor,
            size: 15.0,
          ),
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: ((_) => FitnessScheduler())));
          },
        ),
        ListTile(
          tileColor: (this.selection == 5)
              ? UtilColors.primaryColor.withOpacity(0.3)
              : UtilColors.whiteColor,
          leading: Icon(
            Icons.indeterminate_check_box,
            color: UtilColors.blackColor.withOpacity(0.8),
          ),
          title: Text(
            'Reminders',
            style: GoogleFonts.openSans(
                color: UtilColors.blackColor, fontWeight: FontWeight.w400),
          ),
          trailing: Icon(
            Icons.arrow_forward_ios,
            color: UtilColors.primaryColor,
            size: 15.0,
          ),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => Reminders()));
          },
        ),
        ListTile(
          tileColor: (this.selection == 7)
              ? UtilColors.primaryColor.withOpacity(0.3)
              : UtilColors.whiteColor,
          leading: Icon(
            Icons.privacy_tip,
            color: UtilColors.blackColor.withOpacity(0.8),
          ),
          title: Text(
            'Privacy Policy',
            style: GoogleFonts.openSans(
                color: UtilColors.blackColor, fontWeight: FontWeight.w400),
          ),
          trailing: Icon(
            Icons.arrow_forward_ios,
            color: UtilColors.primaryColor,
            size: 15.0,
          ),
        ),
        ListTile(
          tileColor: (this.selection == 8)
              ? UtilColors.primaryColor.withOpacity(0.3)
              : UtilColors.whiteColor,
          leading: Icon(
            Icons.settings,
            color: UtilColors.blackColor.withOpacity(0.8),
          ),
          title: Text(
            'Settings',
            style: GoogleFonts.openSans(
                color: UtilColors.blackColor, fontWeight: FontWeight.w400),
          ),
          trailing: Icon(
            Icons.arrow_forward_ios,
            color: UtilColors.primaryColor,
            size: 15.0,
          ),
        ),
        ListTile(
          leading: Icon(
            Icons.logout,
            color: UtilColors.blackColor.withOpacity(0.8),
          ),
          onTap: () {
            Utils.showLoader(context);
            _authController.logout(context).then((value) {
              Utils.hideLoaderCurrrent(context);
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (_) => Login()));
            });
          },
          title: Text(
            'Logout',
            style: GoogleFonts.openSans(
                color: UtilColors.blackColor, fontWeight: FontWeight.w400),
          ),
          trailing: Icon(
            Icons.arrow_forward_ios,
            color: UtilColors.primaryColor,
            size: 15.0,
          ),
        ),
      ],
    );
  }
}
