import 'package:get/get.dart';
import 'package:wedzy_duo/View/Home/Budget/budget.dart';
import 'package:wedzy_duo/View/Home/Budget/mywallet.dart';

import 'package:wedzy_duo/View/Home/Guests/guestlist.dart';
import 'package:wedzy_duo/View/Home/Guests/guestlistthirdpage.dart';
import 'package:wedzy_duo/View/Home/Guests/guestsecondpage.dart';
import 'package:wedzy_duo/View/Home/Sidemenu/Myorders/cancelorder.dart';
import 'package:wedzy_duo/View/Home/Sidemenu/Myorders/confirmcancelorder.dart';
import 'package:wedzy_duo/View/Home/Sidemenu/Myorders/myorders.dart';
import 'package:wedzy_duo/View/Home/Sidemenu/Myorders/returnproduct.dart';
import 'package:wedzy_duo/View/Home/Sidemenu/Settings/PasswordandSecurity/Pin.dart';
import 'package:wedzy_duo/View/Home/Sidemenu/Settings/PasswordandSecurity/Pin2.dart';
import 'package:wedzy_duo/View/Home/Sidemenu/Settings/PasswordandSecurity/fingerprintcompleted.dart';
import 'package:wedzy_duo/View/Home/Sidemenu/Settings/PasswordandSecurity/fingerprintscreen.dart';
import 'package:wedzy_duo/View/Home/Sidemenu/Settings/PasswordandSecurity/passwordanddecurity.dart';
import 'package:wedzy_duo/View/Home/Sidemenu/Settings/feedback.dart';
import 'package:wedzy_duo/View/Home/Sidemenu/Settings/privacypolicy.dart';
import 'package:wedzy_duo/View/Home/Sidemenu/Settings/settingsmain.dart';
import 'package:wedzy_duo/View/Home/Sidemenu/navdrawer.dart';
import 'package:wedzy_duo/View/Home/WeddingPlanner/weddingcalendar.dart';
import 'package:wedzy_duo/View/Home/Sidemenu/profile.dart';

import 'package:wedzy_duo/View/Home/einvites.dart';
import 'package:wedzy_duo/View/Home/notification.dart';

import 'package:wedzy_duo/View/Onboarding/family_reg2.dart';
import 'package:wedzy_duo/View/Onboarding/family_reg3.dart';

import 'package:wedzy_duo/View/Onboarding/loginscreen.dart';
import 'package:wedzy_duo/View/Onboarding/onboarding10.dart';
import 'package:wedzy_duo/View/Onboarding/onboarding11.dart';
import 'package:wedzy_duo/View/Onboarding/onboarding13.dart';
import 'package:wedzy_duo/View/Onboarding/onboarding14.dart';
import 'package:wedzy_duo/View/Onboarding/onboarding2.dart';
import 'package:wedzy_duo/Routes/route_name.dart';
import 'package:wedzy_duo/View/Onboarding/onboarding4.dart';
import 'package:wedzy_duo/View/Onboarding/onboarding5.dart';
import 'package:wedzy_duo/View/Onboarding/onboarding6.dart';
import 'package:wedzy_duo/View/Onboarding/onboarding7.dart';
import 'package:wedzy_duo/View/Onboarding/onboarding8.dart';
import 'package:wedzy_duo/View/Onboarding/splash_screen.dart';
import 'package:wedzy_duo/View/Home/Sidemenu/Settings/contactus.dart';
import 'package:wedzy_duo/View/custombottombar.dart';
import 'package:wedzy_duo/View/Home/Sidemenu/Settings/faqs.dart';
import '../View/Onboarding/family_friends_reg.dart';
import '../View/Onboarding/onboarding1.dart';
import 'package:wedzy_duo/View/Home/Sidemenu/Settings/aboutus.dart';
// import 'package:wedzy_duo/View/privacypolicy.dart';
import 'package:wedzy_duo/View/Home/Sidemenu/Settings/termsandconditions.dart';
import '../View/Onboarding/onboarding12.dart';
import '../View/Onboarding/onboarding3.dart';
import '../View/Onboarding/onboarding9.dart';

class AppRoutes {
  static appRoutes() => [
        GetPage(name: RouteName.splashScreen, page: () => const SplashScreen()),
        GetPage(
            name: RouteName.onboarding1,
            page: () => const Onboarding1(),
            transition: Transition.leftToRightWithFade),
        GetPage(
            name: RouteName.onboarding2,
            page: () => const Onboarding2(),
            transition: Transition.leftToRightWithFade),
        GetPage(
            name: RouteName.onboarding3,
            page: () => const Onboarding3(),
            transition: Transition.leftToRightWithFade),
        GetPage(
            name: RouteName.onboarding4,
            page: () => const Onboarding4(),
            transition: Transition.leftToRightWithFade),
        GetPage(
            name: RouteName.onboarding5,
            page: () => const Onboarding5(),
            transition: Transition.leftToRightWithFade),
        GetPage(
            name: RouteName.onboarding6,
            page: () => const Onboarding6(),
            transition: Transition.leftToRightWithFade),
        GetPage(
            name: RouteName.onboarding7,
            page: () => const Onboarding7(),
            transition: Transition.leftToRightWithFade),
        GetPage(
            name: RouteName.onboarding8,
            page: () => const Onboarding8(),
            transition: Transition.leftToRightWithFade),
        GetPage(
            name: RouteName.onboarding9,
            page: () => const Onboarding9(),
            transition: Transition.leftToRightWithFade),
        GetPage(
            name: RouteName.onboarding10,
            page: () => const Onboarding10(),
            transition: Transition.leftToRightWithFade),
        GetPage(
            name: RouteName.onboarding11,
            page: () => const Onboarding11(),
            transition: Transition.leftToRightWithFade),
        GetPage(
            name: RouteName.onboarding12,
            page: () => const Onboarding12(),
            transition: Transition.leftToRightWithFade),
        GetPage(
            name: RouteName.onboarding13,
            page: () => const Onboarding13(),
            transition: Transition.leftToRightWithFade),
        GetPage(
            name: RouteName.onboarding14,
            page: () => const Onboarding14(),
            transition: Transition.leftToRightWithFade),
        GetPage(
            name: RouteName.familyFriendsReg,
            page: () => const FamilyFriendsReg(),
            transition: Transition.leftToRightWithFade),
        GetPage(
            name: RouteName.familyReg2,
            page: () => const FamilyReg2(),
            transition: Transition.leftToRightWithFade),
        GetPage(
            name: RouteName.familyReg3,
            page: () => const FamilyReg3(),
            transition: Transition.leftToRightWithFade),
        // GetPage(name: RouteName.searchPage, page: () => const SearchPage()),

        GetPage(
          name: RouteName.termsduo,
          page: () => const TermsAndConditionsDuo(),
        ),
        GetPage(
          name: RouteName.privacyduo,
          page: () => const PrivacyDuo(),
        ),
        GetPage(
          name: RouteName.aboutusduo,
          page: () => const AboutusDuo(),
        ),
        GetPage(
          name: RouteName.contactus,
          page: () => const Contactus(),
        ),
        GetPage(
          name: RouteName.mywallet,
          page: () => const MyWallet(),
        ),
        GetPage(
          name: RouteName.budgetpage,
          page: () => const BudgetPage(),
        ),
        GetPage(
          name: RouteName.faqspage,
          page: () => const FaqsPage(),
        ),
        GetPage(
          name: RouteName.loginscreen,
          page: () => const LoginScreen(),
        ),
        GetPage(
          name: RouteName.custombottombar,
          page: () => const Custombottombar(),
        ),
        GetPage(
          name: RouteName.notificationpage,
          page: () => const NotificationPage(),
        ),
        GetPage(
          name: RouteName.einvitepage,
          page: () => const Einvitespage(),
        ),
        GetPage(
          name: RouteName.navdrawer,
          page: () => const NavDrawer(),
        ),
        GetPage(name: RouteName.profile, page: () => const Profile()),
        GetPage(
          name: RouteName.guestlist,
          page: () => const GuestList(),
        ),
        GetPage(
          name: RouteName.guestlistsecondpage,
          page: () => const GuestListSecondPage(),
        ),
        GetPage(
          name: RouteName.guestlistthirdpage,
          page: () => const GuestListThirdPage(),
        ),
        GetPage(
          name: RouteName.weddingcalendar,
          page: () => const WeddingCalendar(),
        ),
         GetPage(
          name: RouteName.settingsmain,
          page: () => const SettingsmainPage(),
        ),
        GetPage(
          name: RouteName.passwordandsecurity,
          page: () => const PasswordandSecurity(),
        ),
        GetPage(
          name: RouteName.fingerprintmain,
          page: () => const Fingerprintmain(),
        ),
        GetPage(
          name: RouteName.fingerprintcompleted,
          page: () => const Fingercompleted(),
        ),
        GetPage(
          name: RouteName.setPin1,
          page: () => const SetPin(),
        ),
        GetPage(
          name: RouteName.setPin2,
          page: () => const SetPin2(),
        ),
        GetPage(
          name: RouteName.feedbackpage,
          page: () => const Feedbackpage(),
        ),
        GetPage(
          name: RouteName.myorders,
          page: () => const MyOrders(),
        ),
        GetPage(
          name: RouteName.returnorder,
          page: () => const Returnorder(),
        ),
        GetPage(
          name: RouteName.cancelorder,
          page: () => const CancelOrder(),
        ),
        GetPage(
          name: RouteName.confirmcancelorder,
          page: () => const Confirmcancelorder(),
        ),
      ];
}
