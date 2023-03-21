import 'package:flutter/material.dart';
import 'package:flutter_ready_rental/constants/ImageAssest.dart';
import 'package:flutter_ready_rental/utils/modals/Modals.dart';

import 'package:flutter_ready_rental/routes/Routes.dart' as route;
import 'package:flutter_screenutil/flutter_screenutil.dart';

final welcomeList = [
  WelcomeModal(
    image: welcomeImg1,
    heading: 'Encuentra tu nuevo hogar',
    paragraph: '',
  ),
  WelcomeModal(
    image: welcomeImg2,
    heading: 'Chatea con los propietarios',
    paragraph: '',
  ),
  WelcomeModal(
      image: welcomeImg3, heading: 'Facil de conversar', paragraph: ',')
];

final destinationSliderList = [
  DestinationSliderModal(
    propertyImage: houseImage1,
    propertyName: 'Casa',
    propertyLocation: 'La Molina, Lima',
    propertyRatingText: '4.8',
  ),
  DestinationSliderModal(
    propertyImage: houseImage2,
    propertyName: 'Casa',
    propertyLocation: 'San Miguel, Lima',
    propertyRatingText: '4.8',
  ),
  DestinationSliderModal(
    propertyImage: houseImage1,
    propertyName: 'Nomaden Sekut',
    propertyLocation: 'San Diego, California, USA',
    propertyRatingText: '4.8',
  ),
  DestinationSliderModal(
    propertyImage: houseImage2,
    propertyName: 'Real Bluesty',
    propertyLocation: 'San Diego, California, USA',
    propertyRatingText: '4.8',
  ),
];

final flatDestinationSliderList = [
  DestinationSliderModal(
    propertyImage: flatImage1,
    propertyName: 'Nomaden Sekut',
    propertyLocation: 'San Diego, California, USA',
    propertyRatingText: '4.8',
  ),
  DestinationSliderModal(
    propertyImage: flatImage2,
    propertyName: 'Real Bluesty',
    propertyLocation: 'San Diego, California, USA',
    propertyRatingText: '4.8',
  ),
  DestinationSliderModal(
    propertyImage: flatImage1,
    propertyName: 'Nomaden Sekut',
    propertyLocation: 'San Diego, California, USA',
    propertyRatingText: '4.8',
  ),
  DestinationSliderModal(
    propertyImage: flatImage2,
    propertyName: 'Real Bluesty',
    propertyLocation: 'San Diego, California, USA',
    propertyRatingText: '4.8',
  ),
];

final flatFirstBookingSliderList = [
  DestinationSliderModal(
    propertyImage: flatImage7,
    propertyName: 'Nomaden Sekut',
    propertyLocation: 'San Diego, California, USA',
    propertyRatingText: '4.8',
  ),
  DestinationSliderModal(
    propertyImage: flatImage2,
    propertyName: 'Real Bluesty',
    propertyLocation: 'San Diego, California, USA',
    propertyRatingText: '4.8',
  ),
  DestinationSliderModal(
    propertyImage: flatImage7,
    propertyName: 'Nomaden Sekut',
    propertyLocation: 'San Diego, California, USA',
    propertyRatingText: '4.8',
  ),
  DestinationSliderModal(
    propertyImage: flatImage2,
    propertyName: 'Real Bluesty',
    propertyLocation: 'San Diego, California, USA',
    propertyRatingText: '4.8',
  ),
];

final facilityList = [
  FacilityListModal(
    iconImage: bedIcon,
    text: '4 Camas',
  ),
  FacilityListModal(
    iconImage: bathIcon,
    text: '4 Baños',
  ),
  FacilityListModal(
    iconImage: sqftIcon,
    text: '100m2',
  ),
];

final propertyColumnList = [
  CategoryListModal(
    propartyImage: houseImage3,
    propartyName: 'Departamento',
    propartyLocation: 'San Isidro, Lima',
    propartyRentText: 'S/. 168,000',
    propartyRatingText: '4.8',
    facilityList: facilityList,
  ),
  CategoryListModal(
    propartyImage: houseImage4,
    propartyName: 'Vatsalya Bungalows',
    propartyLocation: 'San Diego, California, USA',
    propartyRentText: 'Rs. 1,68,000 / Year',
    propartyRatingText: '4.8',
    facilityList: facilityList,
  ),
  CategoryListModal(
    propartyImage: houseImage5,
    propartyName: 'Sakar Row House',
    propartyLocation: 'San Diego, California, USA',
    propartyRentText: 'Rs. 1,68,000 / Year',
    propartyRatingText: '4.8',
    facilityList: facilityList,
  ),
  CategoryListModal(
    propartyImage: houseImage6,
    propartyName: 'Mahavir Row House',
    propartyLocation: 'San Diego, California, USA',
    propartyRentText: 'Rs. 1,68,000 / Year',
    propartyRatingText: '4.8',
    facilityList: facilityList,
  ),
];

final flatPropertyColumnList = [
  CategoryListModal(
    propartyImage: flatImage3,
    propartyName: 'Oreeframe Row House',
    propartyLocation: 'San Diego, California, USA',
    propartyRentText: 'Rs. 1,68,000 / Year',
    propartyRatingText: '4.8',
    facilityList: facilityList,
  ),
  CategoryListModal(
    propartyImage: flatImage4,
    propartyName: 'Vatsalya Bungalows',
    propartyLocation: 'San Diego, California, USA',
    propartyRentText: 'Rs. 1,68,000 / Year',
    propartyRatingText: '4.8',
    facilityList: facilityList,
  ),
  CategoryListModal(
    propartyImage: flatImage5,
    propartyName: 'Sakar Row House',
    propartyLocation: 'San Diego, California, USA',
    propartyRentText: 'Rs. 1,68,000 / Year',
    propartyRatingText: '4.8',
    facilityList: facilityList,
  ),
  CategoryListModal(
    propartyImage: flatImage6,
    propartyName: 'Mahavir Row House',
    propartyLocation: 'San Diego, California, USA',
    propartyRentText: 'Rs. 1,68,000 / Year',
    propartyRatingText: '4.8',
    facilityList: facilityList,
  ),
];

final flatOurCollectionColumnList = [
  CategoryListModal(
    propartyImage: flatImage8,
    propartyName: 'Oreeframe Row House',
    propartyLocation: 'San Diego, California, USA',
    propartyRentText: 'Rs. 1,68,000 / Year',
    propartyRatingText: '4.8',
    facilityList: facilityList,
  ),
  CategoryListModal(
    propartyImage: flatImage9,
    propartyName: 'Vatsalya Bungalows',
    propartyLocation: 'San Diego, California, USA',
    propartyRentText: 'Rs. 1,68,000 / Year',
    propartyRatingText: '4.8',
    facilityList: facilityList,
  ),
  CategoryListModal(
    propartyImage: flatImage10,
    propartyName: 'Sakar Row House',
    propartyLocation: 'San Diego, California, USA',
    propartyRentText: 'Rs. 1,68,000 / Year',
    propartyRatingText: '4.8',
    facilityList: facilityList,
  ),
  CategoryListModal(
    propartyImage: flatImage11,
    propartyName: 'Mahavir Row House',
    propartyLocation: 'San Diego, California, USA',
    propartyRentText: 'Rs. 1,68,000 / Year',
    propartyRatingText: '4.8',
    facilityList: facilityList,
  ),
];

final currentLocationResultList = [
  CurrentLocationResultListModal(
    locationAddress: 'Vip road ( vesu ), Surat',
  ),
  CurrentLocationResultListModal(
    locationAddress: 'Ashok nagar',
  ),
  CurrentLocationResultListModal(
    locationAddress: 'Om sai row house',
  ),
  CurrentLocationResultListModal(
    locationAddress: 'Aura row house',
  ),
];

final profileMenuList = [
  ProfileMenuListModal(
    menuName: 'My Rental Property',
    menuIcon: myPropertyIcon,
    menuLink: route.kMyRentalPropertyScreenRoute,
  ),
  ProfileMenuListModal(
    menuName: 'Payment Mathod',
    menuIcon: paymentMathodIcon,
    menuLink: route.kPaymentMathodScreenRoute,
  ),
  ProfileMenuListModal(
    menuName: 'Change Password',
    menuIcon: lockIcon,
    menuLink: route.kChangePasswordScreenRoute,
  ),
  ProfileMenuListModal(
    menuName: 'Safety Center',
    menuIcon: clinicMedicalIcon,
    menuLink: route.kSafetyCenterScreenRoute,
  ),
  ProfileMenuListModal(
    menuName: 'Help Center',
    menuIcon: helpCenterInfoIcon,
    menuLink: route.kHelpCenterScreenRoute,
  ),
  ProfileMenuListModal(
    menuName: 'Terms of Service',
    menuIcon: documentIcon,
    menuLink: route.kTermsServiceScreenRoute,
  ),
  ProfileMenuListModal(
    menuName: 'Feedback',
    menuIcon: feedbackIcon,
    menuLink: route.kFeedbackScreenRoute,
  ),
  ProfileMenuListModal(
    menuName: 'Logout',
    menuIcon: logoutIcon,
    menuLink: route.kLoginScreenRoute,
  ),
];

final selectIdProofList = [
  SelectIdProofModal(
    idProofName: 'Driver’s license',
    radioValue: 'driverlicense',
  ),
  SelectIdProofModal(
    idProofName: 'Passport',
    radioValue: 'Passport',
  ),
  SelectIdProofModal(
    idProofName: 'Identity card',
    radioValue: 'Identitycard',
  ),
];

final languageList = [
  LanguageListModal(
    languageName: 'Afrikaans',
    radioValue: 'Afrikaans',
  ),
  LanguageListModal(
    languageName: 'Bengali',
    radioValue: 'Bengali',
  ),
  LanguageListModal(
    languageName: 'Chinese',
    radioValue: 'Chinese',
  ),
  LanguageListModal(
    languageName: 'Dutch',
    radioValue: 'Dutch',
  ),
  LanguageListModal(
    languageName: 'English',
    radioValue: 'English',
  ),
  LanguageListModal(
    languageName: 'French',
    radioValue: 'French',
  ),
  LanguageListModal(
    languageName: 'Gujarati',
    radioValue: 'Gujarati',
  ),
  LanguageListModal(
    languageName: 'Hindi',
    radioValue: 'Hindi',
  ),
  LanguageListModal(
    languageName: 'Indonesian',
    radioValue: 'Indonesian',
  ),
  LanguageListModal(
    languageName: 'Japanese',
    radioValue: 'Japanese',
  ),
  LanguageListModal(
    languageName: 'Kannada',
    radioValue: 'Kannada',
  ),
  LanguageListModal(
    languageName: 'Latin',
    radioValue: 'Latin',
  ),
  LanguageListModal(
    languageName: 'Malayalam',
    radioValue: 'Malayalam',
  ),
  LanguageListModal(
    languageName: 'Nepali',
    radioValue: 'Nepali',
  ),
  LanguageListModal(
    languageName: 'Odia',
    radioValue: 'Odia',
  ),
  LanguageListModal(
    languageName: 'Punjabi',
    radioValue: 'Punjabi',
  ),
  LanguageListModal(
    languageName: 'Romain',
    radioValue: 'Romain',
  ),
  LanguageListModal(
    languageName: 'Spanish',
    radioValue: 'Spanish',
  ),
  LanguageListModal(
    languageName: 'Tamil',
    radioValue: 'Tamil',
  ),
  LanguageListModal(
    languageName: 'Urdu',
    radioValue: 'Urdu',
  ),
  LanguageListModal(
    languageName: 'Vietnamese',
    radioValue: 'Vietnamese',
  ),
  LanguageListModal(
    languageName: 'Welsh',
    radioValue: 'Welsh',
  ),
  LanguageListModal(
    languageName: 'Xhosa',
    radioValue: 'Xhosa',
  ),
  LanguageListModal(
    languageName: 'Yiddish',
    radioValue: 'Yiddish',
  ),
  LanguageListModal(
    languageName: 'Zulu',
    radioValue: 'Zulu',
  ),
];

final myActivePropertyList = [
  MyRentalPropertyListModal(
    propartyImage: houseImage1,
    propartyName: 'Orchad House',
    propartyLocation: 'San Diego, California, USA',
    propartyRentText: '\$ 200 / Month ',
    propartyRatingText: '4.8',
    facilityList: facilityList,
    dateText: '01 Jul 2021',
  ),
  MyRentalPropertyListModal(
    propartyImage: flatImage1,
    propartyName: 'Raghuvir Silverstone',
    propartyLocation: 'San Diego, California, USA',
    propartyRentText: '\$ 1,70 / Per Month',
    propartyRatingText: '4.8',
    facilityList: facilityList,
    dateText: '01 Jul 2021',
  ),
];
final myHistoryPropertyList = [
  MyRentalPropertyListModal(
    propartyImage: houseImage2,
    propartyName: 'Orchad House',
    propartyLocation: 'San Diego, California, USA',
    propartyRentText: '\$ 200 / Month ',
    propartyRatingText: '4.8',
    facilityList: facilityList,
    dateText: '01 Jul 2021',
  ),
  MyRentalPropertyListModal(
    propartyImage: flatImage1,
    propartyName: 'Raghuvir Silverstone',
    propartyLocation: 'San Diego, California, USA',
    propartyRentText: '\$ 1,70 / Per Month',
    propartyRatingText: '4.8',
    facilityList: facilityList,
    dateText: '01 Jul 2021',
  ),
];

final rentalPropertyFacilityList = [
  FacilityListModal(
    iconImage: bedIcon,
    text: 'Bedroom',
  ),
  FacilityListModal(
    iconImage: bathIcon,
    text: 'Bathroom',
  ),
  FacilityListModal(
    iconImage: kitchenIcon,
    text: 'Kitchen',
  ),
  FacilityListModal(
    iconImage: livingRoomIcon,
    text: 'living room',
  ),
  FacilityListModal(
    iconImage: garageIcon,
    text: 'Garage',
  ),
  FacilityListModal(
    iconImage: kidRoomIcon,
    text: 'Kids room',
  ),
  FacilityListModal(
    iconImage: wifiIcon,
    text: 'Wifi',
  ),
  FacilityListModal(
    iconImage: poolIcon,
    text: 'Pool',
  ),
  FacilityListModal(
    iconImage: petsIcon,
    text: 'Pets',
  ),
];

final bookingPriceDetailList = [
  BookingPriceDetailListModal(
    bookingPriceDetailText: '\$ 200 / one month x 12 month',
    bookingPriceText: '\$ 2400',
  ),
  BookingPriceDetailListModal(
    bookingPriceDetailText: 'Service fee',
    bookingPriceText: '\$ 20',
  ),
  BookingPriceDetailListModal(
    bookingPriceDetailText: 'Agreements fee',
    bookingPriceText: '\$ 10',
  ),
];

final paymentMethodList = [
  PaymentMethodListModal(
    paymentIcon: bankIcon,
    paymentText: 'Net Banking',
  ),
  PaymentMethodListModal(
    paymentIcon: paytmIcon,
    paymentText: 'Paytm',
  ),
  PaymentMethodListModal(
    paymentIcon: googlePayIcon,
    paymentText: 'Google Pay',
  ),
  PaymentMethodListModal(
    paymentIcon: uPIIcon,
    paymentText: 'UPI',
  ),
];
final addPaymentMethodList = [
  PaymentMethodListModal(
    paymentIcon: cCMasterCardIcon,
    paymentText: 'Cards ( Credit/Debit )',
  ),
];

final countryRegionList = [
  CountryRegionListModal(
    countryRegionName: 'Australia',
    radioValue: 'Australia',
  ),
  CountryRegionListModal(
    countryRegionName: 'Brazil',
    radioValue: 'Brazil',
  ),
  CountryRegionListModal(
    countryRegionName: 'Canada',
    radioValue: 'Canada',
  ),
  CountryRegionListModal(
    countryRegionName: 'Denmark',
    radioValue: 'Denmark',
  ),
  CountryRegionListModal(
    countryRegionName: 'Ecuador',
    radioValue: 'Ecuador',
  ),
  CountryRegionListModal(
    countryRegionName: 'France',
    radioValue: 'France',
  ),
  CountryRegionListModal(
    countryRegionName: 'Germany',
    radioValue: 'Germany',
  ),
  CountryRegionListModal(
    countryRegionName: 'Hong Kong',
    radioValue: 'HongKong',
  ),
  CountryRegionListModal(
    countryRegionName: 'India',
    radioValue: 'India',
  ),
  CountryRegionListModal(
    countryRegionName: 'Japan',
    radioValue: 'Japan',
  ),
  CountryRegionListModal(
    countryRegionName: 'Malaysia',
    radioValue: 'Malaysia',
  ),
  CountryRegionListModal(
    countryRegionName: 'Netherland',
    radioValue: 'Netherland',
  ),
  CountryRegionListModal(
    countryRegionName: 'Philippines',
    radioValue: 'Philippines',
  ),
  CountryRegionListModal(
    countryRegionName: 'Spain',
    radioValue: 'Spain',
  ),
  CountryRegionListModal(
    countryRegionName: 'Thailand',
    radioValue: 'Thailand',
  ),
  CountryRegionListModal(
    countryRegionName: 'United Kingdom',
    radioValue: 'UnitedKingdom',
  ),
  CountryRegionListModal(
    countryRegionName: 'Vietnam',
    radioValue: 'Vietnam',
  ),
];

final recommendedArticlesList = [
  RecommendedArticlesListModal(
    recommendedArticlesText:
        'Does the extenuating circumstances policy apply to my reservation during the COVID-19 pandemic?',
  ),
  RecommendedArticlesListModal(
    recommendedArticlesText:
        'How do i cancel my reservation for a place to say?',
  ),
  RecommendedArticlesListModal(
    recommendedArticlesText: 'Verifying your identity',
  ),
  RecommendedArticlesListModal(
    recommendedArticlesText:
        'What to do if the place you’re staying in isn’t clean at check in',
  ),
];
final browseAllTopicsList = [
  BrowseAllTopicsListModal(
    browseAllTopicsText: 'Searching and booking',
    icon: searchGrayLine,
  ),
  BrowseAllTopicsListModal(
    browseAllTopicsText: 'Your reservations',
    icon: myPropertyIcon,
  ),
  BrowseAllTopicsListModal(
    browseAllTopicsText: 'Payments, pricing, and refunds',
    icon: paymentMathodIcon,
  ),
  BrowseAllTopicsListModal(
    browseAllTopicsText: 'Your account',
    icon: userGrayLineIcon,
  ),
  BrowseAllTopicsListModal(
    browseAllTopicsText: 'Safety',
    icon: clinicMedicalIcon,
  ),
  BrowseAllTopicsListModal(
    browseAllTopicsText: 'About Ready Rental',
    icon: aboutReadyRentalIcon,
  ),
  BrowseAllTopicsListModal(
    browseAllTopicsText: 'Terms and policies',
    icon: infoIIcon,
  ),
];

final whatWouldLikeList = [
  BrowseAllTopicsListModal(
    browseAllTopicsText: 'Give product feedback',
    icon: feedbackIcon,
  ),
  BrowseAllTopicsListModal(
    browseAllTopicsText: 'Report a bug',
    icon: sadFaceEmojiIcon,
  ),
];

final notificationList = [
  NotificationListModal(
    icon: lockIcon,
    heading: 'Change Password',
    time: '1 min ago',
    paragraph: 'Your app password is successfully changed by you.',
  ),
  NotificationListModal(
    icon: likeLineIcon,
    heading: 'Favourite',
    time: '5 hour ago',
    paragraph: '“Om Sai Row House” is in add your favorites list by you.',
  ),
  NotificationListModal(
    icon: sendLineIcon,
    heading: 'Message',
    time: '1 day ago',
    paragraph: '“Om Sai Row House” owner messaged you.',
  ),
  NotificationListModal(
    icon: aboutReadyRentalIcon,
    heading: 'New Offer',
    time: '2 day ago',
    paragraph: 'New offer on “Aura Row House” first rent on 50% off.',
  ),
  NotificationListModal(
    icon: roundUpArrowIcon,
    heading: 'New Version',
    time: '2 day ago',
    paragraph: 'Ready Rental app is available in latest version 2.11.30',
  ),
];

final propertyDetailsPhotoList = [
  PropertyDetailsPhotoListModal(
    image: propertyDetailsPhoto1,
  ),
  PropertyDetailsPhotoListModal(
    image: propertyDetailsPhoto2,
  ),
  PropertyDetailsPhotoListModal(
    image: propertyDetailsPhoto3,
  ),
  PropertyDetailsPhotoListModal(
    image: propertyDetailsPhoto4,
  ),
  PropertyDetailsPhotoListModal(
    image: propertyDetailsPhoto5,
  ),
  PropertyDetailsPhotoListModal(
    image: propertyDetailsPhoto6,
  ),
  PropertyDetailsPhotoListModal(
    image: propertyDetailsPhoto7,
  ),
];

final propertyDetailsRaitingSliderList = [
  PropertyDetailsRaitingSliderListModal(text: 'Interesting', width: 240.w),
  PropertyDetailsRaitingSliderListModal(text: 'Guide', width: 240.w),
  PropertyDetailsRaitingSliderListModal(text: 'Service', width: 225.w),
  PropertyDetailsRaitingSliderListModal(text: 'Price', width: 202.w),
];

final propertyDetailsReviewsList = [
  PropertyDetailsReviewsListModal(
    image: userImage1,
    name: 'Stephanie   ',
    date: 'October, 2019',
    ratingText: '10',
    paragraph:
        'This is a great way to experience the Grand Canyon from Phoenix. I could never have done this trip on my own... ',
  ),
  PropertyDetailsReviewsListModal(
    image: userImage2,
    name: 'Stephanie   ',
    date: 'October, 2019',
    ratingText: '10',
    paragraph:
        'This is a great way to experience the Grand Canyon from Phoenix. I could never have done this trip on my own... ',
  ),
  PropertyDetailsReviewsListModal(
    image: userImage3,
    name: 'Stephanie   ',
    date: 'October, 2019',
    ratingText: '10',
    paragraph:
        'This is a great way to experience the Grand Canyon from Phoenix. I could never have done this trip on my own... ',
  ),
];

final choosePaymentOptionList = [
  PaymentMethodListModal(
    paymentIcon: cCMasterCardIcon,
    paymentText: 'Cards ( Credit/Debit )',
  ),
  PaymentMethodListModal(
    paymentIcon: eMIIcon,
    paymentText: 'EMI',
  ),
  PaymentMethodListModal(
    paymentIcon: bankIcon,
    paymentText: 'Net Banking',
  ),
  PaymentMethodListModal(
    paymentIcon: paytmIcon,
    paymentText: 'Paytm',
  ),
  PaymentMethodListModal(
    paymentIcon: googlePayIcon,
    paymentText: 'Google Pay',
  ),
  PaymentMethodListModal(
    paymentIcon: uPIIcon,
    paymentText: 'UPI',
  ),
];

final wishlistPropertyList = [
  MyRentalPropertyListModal(
    propartyImage: houseImage1,
    propartyName: 'Orchad House',
    propartyLocation: 'San Diego, California, USA',
    propartyRentText: '\$ 200 / Month ',
    propartyRatingText: '4.8',
    facilityList: facilityList,
    dateText: '01 Jul 2021',
  ),
  MyRentalPropertyListModal(
    propartyImage: houseImage2,
    propartyName: 'Nomaden Sekut House',
    propartyLocation: 'San Diego, California, USA',
    propartyRentText: '\$ 1,70 / Per Month',
    propartyRatingText: '4.8',
    facilityList: facilityList,
    dateText: '01 Jul 2021',
  ),
  MyRentalPropertyListModal(
    propartyImage: houseImage6,
    propartyName: 'Oreeframe Row House',
    propartyLocation: 'San Diego, California, USA',
    propartyRentText: '\$ 1,70 / Per Month',
    propartyRatingText: '4.8',
    facilityList: facilityList,
    dateText: '01 Jul 2021',
  ),
  MyRentalPropertyListModal(
    propartyImage: houseImage4,
    propartyName: 'Real Bluest',
    propartyLocation: 'San Diego, California, USA',
    propartyRentText: '\$ 1,70 / Per Month',
    propartyRatingText: '4.8',
    facilityList: facilityList,
    dateText: '01 Jul 2021',
  ),
];

final propertyTypeList = [
  PropertyTypeListModal(
    propertyTypeName: 'Casa',
    radioValue: 'Casa',
  ),
  PropertyTypeListModal(
    propertyTypeName: 'Departamento',
    radioValue: 'Departamento',
  ),
  PropertyTypeListModal(
    propertyTypeName: 'Terreno',
    radioValue: 'Terreno',
  ),
  PropertyTypeListModal(
    propertyTypeName: 'Otros',
    radioValue: 'Otros',
  ),
];

final rentalPropertyRulesList = [
  FacilityListModal(
    iconImage: petsIcon,
    text: 'Mascotas',
  ),
  FacilityListModal(
    iconImage: smokingIcon,
    text: 'Fumar',
  ),
  FacilityListModal(
    iconImage: couplesIcon,
    text: 'Parejas',
  ),
  FacilityListModal(
    iconImage: petsIcon,
    text: 'Familia',
  ),
  FacilityListModal(
    iconImage: petsIcon,
    text: 'Supermercados',
  ),
];

final chatUserList = [
  ChatUserListModal(
    hasImage: true,
    userImg: chatUser1,
    userName: 'Orchad Row House',
    userLastMsg: 'Last seen yesterday',
    userImgText: '',
  ),
  ChatUserListModal(
    hasImage: true,
    userImg: chatUser2,
    userName: 'Om Sai Row House',
    userLastMsg: 'Online',
    userImgText: '',
  ),
  ChatUserListModal(
    hasImage: true,
    userImg: chatUser3,
    userName: 'Auora House',
    userLastMsg: 'Last seen 3 hours ago',
    userImgText: '',
  ),
  ChatUserListModal(
    hasImage: true,
    userImg: chatUser4,
    userName: 'Oreefrem Flats',
    userLastMsg: 'Online',
    userImgText: '',
  ),
  ChatUserListModal(
    hasImage: false,
    userImg: chatUser1,
    userName: 'Oberoi Villa',
    userLastMsg: 'Online',
    userImgText: 'RD',
  ),
  ChatUserListModal(
    hasImage: false,
    userImg: chatUser1,
    userName: 'Skyview Flats',
    userLastMsg: 'Last seen 30 minutes ago',
    userImgText: 'SA',
  ),
];

final popularDestionationList = [
  PopularDestionationListModal(
    image: houseImage1,
    heading: 'Nomaden Sekut House',
    price: '\$ 200 / Month',
    location: 'Lima, Peru',
    ratingStar: '4.8',
  ),
  PopularDestionationListModal(
    image: houseImage2,
    heading: 'Nomaden Sekut House',
    price: '\$ 200 / Month',
    location: 'Lima',
    ratingStar: '4.8',
  ),
  PopularDestionationListModal(
    image: houseImage3,
    heading: 'Nomaden Sekut House',
    price: '\$ 200 / Month',
    location: 'San Isidro',
    ratingStar: '4.8',
  ),
];
