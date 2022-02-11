import 'package:get/get.dart';

import '../middleware/auth_middleware.dart';
import '../modules/dashboard/bindings/dashboard_binding.dart';
import '../modules/dashboard/views/dashboard_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/product_details/bindings/product_details_binding.dart';
import '../modules/product_details/views/product_details_view.dart';
import '../modules/trips/bindings/trips_binding.dart';
import '../modules/trips/views/trips_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';
import '../modules/root/bindings/root_binding.dart';
import '../modules/root/views/root_view.dart';
import '../modules/settings/bindings/settings_binding.dart';
import '../modules/settings/views/settings_view.dart';
import '../modules/vaccination/bindings/vaccination_binding.dart';
import '../modules/vaccination/views/vaccination_view.dart';
part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.initial;

  static final routes = [
    GetPage(
      name: '/',
      page: () => const RootView(),
      bindings: [RootBinding()],
      participatesInRootNavigator: true,
      preventDuplicates: true,
      unknownRoute: GetPage(
        middlewares: [
          //only enter this route when authed
          EnsureAuthMiddleware(),
        ],
        name: _Paths.profilePage,
        page: () => LoginView(),
        title: 'Login',
        transition: Transition.size,
        bindings: [LoginBinding()],
      ),
      children: [
        GetPage(
          middlewares: [
            //only enter this route when not authed
            EnsureNotAuthedMiddleware(),
          ],
          name: _Paths.login,
          page: () => LoginView(),
          bindings: [LoginBinding()],
        ),
        GetPage(
          preventDuplicates: true,
          name: _Paths.home,
          page: () => const HomeView(),
          bindings: [
            HomePageBinding(),
          ],
          title: null,
          children: [
            //trips
            GetPage(
              name: _Paths.trips,
              page: () => const TripsView(),
              title: 'Trips',
              transition: Transition.zoom,
              bindings: [TripsBinding()],
              // children: [
              //   GetPage(
              //     name: _Paths.productDetails,
              //     page: () => const ProductDetailsView(),
              //     bindings: [ProductDetailsBinding()],
              //     middlewares: [
              //       //only enter this route when authed
              //       EnsureAuthMiddleware(),
              //     ],
              //   ),
              // ],
            ),
            //vaccination
            GetPage(
              name: _Paths.vaccination,
              page: () => const VaccinationView(),
              bindings: [
                VaccinationBinding(),
              ],
            ),
            //profile
            GetPage(
              name: _Paths.dashboard,
              page: () => const DashboardView(),
              bindings: [
                DashboardBinding(),
              ],
            ),
            //settings
            GetPage(
              middlewares: [
                //only enter this route when authed
                EnsureAuthMiddleware(),
              ],
              name: _Paths.profilePage,
              page: () => const ProfileView(),
              title: 'Profile',
              transition: Transition.size,
              bindings: [ProfileBinding()],
            ),
          ],
        ),
        GetPage(
          name: _Paths.settings,
          page: () => const SettingsView(),
          bindings: [
            SettingsBinding(),
          ],
        ),
      ],
    ),
  ];
}
