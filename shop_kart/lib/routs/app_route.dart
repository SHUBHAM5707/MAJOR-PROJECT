import 'package:get/get.dart';
import 'package:shop_kart/features/authentication/screens/login/login.dart';
import 'package:shop_kart/features/authentication/screens/onboarding/onboarding.dart';
import 'package:shop_kart/features/authentication/screens/password_congfiguration/forgot_password.dart';
import 'package:shop_kart/features/authentication/screens/signup/signup.dart';
import 'package:shop_kart/features/authentication/screens/signup/verify_email.dart';
import 'package:shop_kart/features/persionalization/screens/address/address.dart';
import 'package:shop_kart/features/persionalization/screens/profile/profile.dart';
import 'package:shop_kart/features/persionalization/screens/settings/settings.dart';
import 'package:shop_kart/features/shop/screens/cart/cart.dart';
import 'package:shop_kart/features/shop/screens/checkout/checkout.dart';
import 'package:shop_kart/features/shop/screens/home/home.dart';
import 'package:shop_kart/features/shop/screens/order/order.dart';
import 'package:shop_kart/features/shop/screens/product_reviews/product_review.dart';
import 'package:shop_kart/features/shop/screens/store/store.dart';
import 'package:shop_kart/features/shop/screens/wishlist/wishlist.dart';
import 'package:shop_kart/routs/routs.dart';

class AppRoutes{
  static final pages = [
    GetPage(name: SkRoutes.home, page: () =>const HomeScreen()),
    GetPage(name: SkRoutes.store, page: () =>const StoreScreen()),
    GetPage(name: SkRoutes.favourites, page: () =>const FavouriteScreen()),
    GetPage(name: SkRoutes.setting, page: () => const SettingsScreen()),
    GetPage(name: SkRoutes.productReview, page: () =>const ProductReviewScreen()),
    GetPage(name: SkRoutes.order, page: () =>const OrderScreen()),
    GetPage(name: SkRoutes.checkout, page: () =>const CheckoutScreen()),
    GetPage(name: SkRoutes.cart, page: () =>const CartScreen()),
    GetPage(name: SkRoutes.userProfile, page: () =>const ProfileScreen()),
    GetPage(name: SkRoutes.userAddress, page: () =>const UserAddressScreen()),
    GetPage(name: SkRoutes.signup, page: () =>const SignupScreen()),
    GetPage(name: SkRoutes.verifyEmail, page: () =>const VerifyEmailScreen()),
    GetPage(name: SkRoutes.signIn, page: () =>const LoginScreen()),
    GetPage(name: SkRoutes.forgotPassword, page: () =>const ForgetPassword()),
    GetPage(name: SkRoutes.onBoarding, page: () =>const OnBoardingScreen()),
  ];
}
