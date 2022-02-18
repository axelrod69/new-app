import 'package:boozimba/app/modules/google_map.dart';
import 'package:boozimba/app/widgets/custom_calendar..dart';
import 'package:boozimba/app/widgets/forgotPassword.dart';
import 'package:boozimba/app/widgets/profile_page.dart';
import 'package:get/get.dart';

import 'package:boozimba/app/modules/Details/bindings/details_binding.dart';
import 'package:boozimba/app/modules/Details/bindings/hotel_details_binding.dart';
import 'package:boozimba/app/modules/Details/views/detail_view.dart';
import 'package:boozimba/app/modules/Details/views/hotel_details_view.dart';
import 'package:boozimba/app/modules/booking/bindings/booking_binding.dart';
import 'package:boozimba/app/modules/booking/bindings/booking_details_binding.dart';
import 'package:boozimba/app/modules/booking/view/booking_details_view.dart';
import 'package:boozimba/app/modules/booking/view/booking_view.dart';

import 'package:boozimba/app/modules/customCalendar/bindings/custom_calendar_binding.dart';
import 'package:boozimba/app/modules/customCalendar/views/custom_calendar_view.dart';
import 'package:boozimba/app/modules/filter/bindings/fiter_binding.dart';
import 'package:boozimba/app/modules/filter/views/filter_view.dart';
import 'package:boozimba/app/modules/filtercategory/bindings/filter_category_binding.dart';
import 'package:boozimba/app/modules/filtercategory/views/filter_category_view.dart';
import 'package:boozimba/app/modules/home/bindings/home_binding.dart';
import 'package:boozimba/app/modules/home/bindings/home_tab_binding.dart';
import 'package:boozimba/app/modules/home/views/home_tab_view.dart';
import 'package:boozimba/app/modules/home/views/home_view.dart';
import 'package:boozimba/app/modules/imagePreView/bindings/image_pre_view_binding.dart';
import 'package:boozimba/app/modules/imagePreView/views/image_pre_view_view.dart';
import 'package:boozimba/app/modules/membership/bindings/membership_binding.dart';
import 'package:boozimba/app/modules/membership/bindings/membership_details_binding.dart';
import 'package:boozimba/app/modules/membership/bindings/membership_details_diamond_binding.dart';
import 'package:boozimba/app/modules/membership/bindings/membership_details_platinum_binding.dart';
import 'package:boozimba/app/modules/membership/bindings/membership_details_silver_binding.dart';
import 'package:boozimba/app/modules/membership/views/membership_details_platinum_view.dart';
import 'package:boozimba/app/modules/membership/views/membership_details_silver_view.dart';
import 'package:boozimba/app/modules/membership/views/membership_details_view.dart';
import 'package:boozimba/app/modules/membership/views/membership_diamond_view.dart';
import 'package:boozimba/app/modules/membership/views/membership_view.dart';
import 'package:boozimba/app/modules/notify/bindings/notify_binding.dart';
import 'package:boozimba/app/modules/notify/views/notify_view.dart';
import 'package:boozimba/app/modules/overview/bindings/overview_binding.dart';
import 'package:boozimba/app/modules/overview/views/overview_view.dart';
import 'package:boozimba/app/modules/signIn/bindings/sign_in_binding.dart';
import 'package:boozimba/app/modules/signIn/views/sign_in_view.dart';
import 'package:boozimba/app/modules/signUp/bindings/sign_up_binding.dart';
import 'package:boozimba/app/modules/signUp/views/sign_up_view.dart';
import 'package:boozimba/app/modules/slotMachine/bindings/slot_machine_binding.dart';
import 'package:boozimba/app/modules/slotMachine/views/slot_machine_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;
  // static const INITIAL = Routes.BOOKING_DETAILS;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.HOME_TAB,
      page: () => HomeTabView(),
      binding: HomeTabBinding(),
    ),
    GetPage(
      name: _Paths.HOME_DETAILS,
      page: () => HomeDetailsView(),
      binding: DetailsBinding(),
    ),
    GetPage(
      name: _Paths.HOTEL_DETAILS,
      page: () => HotelDetailsView(),
      binding: HotelDetailsBinding(),
    ),
    GetPage(
      name: _Paths.SIGN_IN,
      page: () => SignInView(true),
      binding: SignInBinding(),
    ),
    GetPage(
      name: _Paths.SIGN_UP,
      page: () => SignUpView(),
      binding: SignUpBinding(),
    ),
    GetPage(
      name: _Paths.MEMBERSHIP,
      page: () => MembershipView(),
      binding: MembershipBinding(),
    ),
    GetPage(
      name: _Paths.MEMBERSHIP_DETAILS,
      page: () => MembershipDetailsView(),
      binding: MembershipDetailsBinding(),
    ),
    GetPage(
      name: _Paths.MEMBERSHIP_DETAILS_DIAMOND,
      page: () => MembershipDetailsDiamondView(),
      binding: MembershipDetailsDiamondBinding(),
    ),
    GetPage(
      name: _Paths.MEMBERSHIP_DETAILS_PLATINUM,
      page: () => MembershipDetailsPlatiunumView(),
      binding: MembershipDetailsPlatinumBinding(),
    ),
    GetPage(
      name: _Paths.MEMBERSHIP_DETAILS_SILVER,
      page: () => MembershipDetailsSilverView(),
      binding: MembershipDetailsSilverBinding(),
    ),
    GetPage(
      name: _Paths.NOTIFY,
      page: () => NotifyView(),
      binding: NotifyBinding(),
    ),
    GetPage(
      name: _Paths.FILTER,
      page: () => FilterView(),
      binding: FilterBinding(),
    ),
    GetPage(
      name: _Paths.FILTERCATEGORY,
      page: () => FilterCategoryView(),
      binding: FilterCategoryBinding(),
    ),
    GetPage(
      name: _Paths.OVERVIEW,
      page: () => OverViewView(),
      binding: OverViewBinding(),
    ),
    GetPage(
      name: _Paths.BOOK_NOW_OVERVIEW,
      page: () => BookingView(),
      binding: BookingBinding(),
    ),
    GetPage(
      name: _Paths.BOOKING_DETAILS,
      page: () => BookingDetailsView(),
      binding: BookingDetailsBinding(),
    ),
    GetPage(
      name: _Paths.IMAGE_PRE_VIEW,
      page: () => ImagePreViewView(),
      binding: ImagePreViewBinding(),
    ),
    GetPage(
      name: _Paths.SLOT_MACHINE,
      page: () => SlotMachineView(),
      binding: SlotMachineBinding(),
    ),
    GetPage(
      name: _Paths.CUSTOM_CALENDAR,
      page: () => CustomCalender(),
      binding: CustomCalendarBinding(),
    ),
    GetPage(name: _Paths.GOOGLE_MAP, page: () => GoogleMapScreen()),
    GetPage(
      name: _Paths.PROFILE_PAGE,
      page: () => ProfilePage(),
    ),
    GetPage(
      name: _Paths.FORGOT_PASSWORD,
      page: () => ForgotPassword(),
    )
  ];
}
