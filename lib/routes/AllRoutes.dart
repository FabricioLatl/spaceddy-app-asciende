import 'package:flutter/material.dart';
import 'package:flutter_ready_rental/routes/Routes.dart';
import 'package:flutter_ready_rental/screens/WelcomeScreen.dart';
import 'package:flutter_ready_rental/screens/SignupScreen.dart';
import 'package:flutter_ready_rental/screens/LoginScreen.dart';
import 'package:flutter_ready_rental/screens/SignupConfirmNumberScreen.dart';
import 'package:flutter_ready_rental/screens/SignupConfirmNumSuccessScreen.dart';
import 'package:flutter_ready_rental/screens/ForgotScreen.dart';
import 'package:flutter_ready_rental/screens/ForgotConfirmNumberScreen.dart';
import 'package:flutter_ready_rental/screens/ResetPasswordScreen.dart';
import 'package:flutter_ready_rental/screens/ForgotPasswordSuccessScreen.dart';
import 'package:flutter_ready_rental/screens/MainScreen.dart';
import 'package:flutter_ready_rental/screens/CurrentLocationScreen.dart';
import 'package:flutter_ready_rental/screens/ProfileScreen.dart';
import 'package:flutter_ready_rental/screens/ProfileEditScreen.dart';
import 'package:flutter_ready_rental/screens/AddIdentityScreen.dart';
import 'package:flutter_ready_rental/screens/IdentityVerificationScreen.dart';
import 'package:flutter_ready_rental/screens/CameraScreen.dart';
import 'package:flutter_ready_rental/screens/EmergencyContactScreen.dart';
import 'package:flutter_ready_rental/screens/EmergencyContactDetailScreen.dart';
import 'package:flutter_ready_rental/screens/SelectPreferredLanguageScreen.dart';
import 'package:flutter_ready_rental/screens/MyRentalPropertyScreen.dart';
import 'package:flutter_ready_rental/screens/ActivePropertyScreen.dart';
import 'package:flutter_ready_rental/screens/HistoryPropertyScreen.dart';
import 'package:flutter_ready_rental/screens/PaymentMathodScreen.dart';
import 'package:flutter_ready_rental/screens/AddPaymentMathodScreen.dart';
import 'package:flutter_ready_rental/screens/ChangePasswordScreen.dart';
import 'package:flutter_ready_rental/screens/SafetyCenterScreen.dart';
import 'package:flutter_ready_rental/screens/CallEmergencyServicesScreen.dart';
import 'package:flutter_ready_rental/screens/SelectCountryRegionScreen.dart';
import 'package:flutter_ready_rental/screens/HelpCenterScreen.dart';
import 'package:flutter_ready_rental/screens/TermsServiceScreen.dart';
import 'package:flutter_ready_rental/screens/FeedbackScreen.dart';
import 'package:flutter_ready_rental/screens/NotificationScreen.dart';
import 'package:flutter_ready_rental/screens/ConfirmAndPayScreen.dart';
import 'package:flutter_ready_rental/screens/PropertyDetailsScreen.dart';
import 'package:flutter_ready_rental/screens/ChoosePaymentOptionScreen.dart';
import 'package:flutter_ready_rental/screens/WishlistScreen.dart';
import 'package:flutter_ready_rental/screens/FilterScreen.dart';
import 'package:flutter_ready_rental/screens/PopularDestionationScreen.dart';
import 'package:flutter_ready_rental/screens/ChatListScreen.dart';
import 'package:flutter_ready_rental/screens/ChatDetailScreen.dart';

Map<String, WidgetBuilder> allRoutes = {
  kInitialRoute: (BuildContext context) => const WelcomeScreen(),
  kSignupScreenRoute: (BuildContext context) => const SignupScreen(),
  kLoginScreenRoute: (BuildContext context) => const LoginScreen(),
  kSignupConfirmNumberScreenRoute: (BuildContext context) => const SignupConfirmNumberScreen(),
  kSignupConfirmNumSuccessScreenRoute: (BuildContext context) => const SignupConfirmNumSuccessScreen(),
  kForgotScreenRoute: (BuildContext context) => const ForgotScreen(),
  kForgotConfirmNumberScreenRoute: (BuildContext context) => const ForgotConfirmNumberScreen(),
  kResetPasswordScreenRoute: (BuildContext context) => const ResetPasswordScreen(),
  kForgotPasswordSuccessScreenRoute: (BuildContext context) => const ForgotPasswordSuccessScreen(),
  kMainScreenRoute: (BuildContext context) => const MainScreen(),
  kCurrentLocationScreenRoute: (BuildContext context) => const CurrentLocationScreen(),
  kProfileScreenRoute: (BuildContext context) => const ProfileScreen(),
  kProfileEditScreenRoute: (BuildContext context) => const ProfileEditScreen(),
  kAddIdentityScreenRoute: (BuildContext context) => const AddIdentityScreen(),
  kIdentityVerificationScreenRoute: (BuildContext context) => const IdentityVerificationScreen(),
  kCameraScreenRoute: (BuildContext context) => const CameraScreen(),
  kEmergencyContactScreenRoute: (BuildContext context) => const EmergencyContactScreen(),
  kEmergencyContactDetailScreenRoute: (BuildContext context) => const EmergencyContactDetailScreen(),
  kSelectPreferredLanguageScreenRoute: (BuildContext context) => const SelectPreferredLanguageScreen(),
  kMyRentalPropertyScreenRoute: (BuildContext context) => const MyRentalPropertyScreen(),
  kActivePropertyScreenRoute: (BuildContext context) => const ActivePropertyScreen(),
  kHistoryPropertyScreenRoute: (BuildContext context) => const HistoryPropertyScreen(),
  kPaymentMathodScreenRoute: (BuildContext context) => const PaymentMathodScreen(),
  kAddPaymentMathodScreenRoute: (BuildContext context) => const AddPaymentMathodScreen(),
  kChangePasswordScreenRoute: (BuildContext context) => const ChangePasswordScreen(),
  kSafetyCenterScreenRoute: (BuildContext context) => const SafetyCenterScreen(),
  kCallEmergencyServicesScreenRoute: (BuildContext context) => const CallEmergencyServicesScreen(),
  kSelectCountryRegionScreenRoute: (BuildContext context) => const SelectCountryRegionScreen(),
  kHelpCenterScreenRoute: (BuildContext context) => const HelpCenterScreen(),
  kTermsServiceScreenRoute: (BuildContext context) => const TermsServiceScreen(),
  kFeedbackScreenRoute: (BuildContext context) => const FeedbackScreen(),
  kNotificationScreenRoute: (BuildContext context) => const NotificationScreen(),
  kConfirmAndPayScreenRoute: (BuildContext context) => const ConfirmAndPayScreen(),
  kPropertyDetailsScreenRoute: (BuildContext context) => const PropertyDetailsScreen(),
  kChoosePaymentOptionScreenRoute: (BuildContext context) => const ChoosePaymentOptionScreen(),
  kWishlistScreenRoute: (BuildContext context) => const WishlistScreen(),
  kFilterScreenRoute: (BuildContext context) => const FilterScreen(),
  kPopularDestionationScreenRoute: (BuildContext context) => const PopularDestionationScreen(),
  kChatListScreenRoute: (BuildContext context) => const ChatListScreen(),
  kChatDetailScreenRoute: (BuildContext context) => const ChatDetailScreen(),
};
