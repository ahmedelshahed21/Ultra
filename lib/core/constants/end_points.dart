class EndPoints {
  static const String baserUrl = "https://df5a-45-241-135-9.ngrok-free.app/api";
  // static const String categories = "/Categories";
  // static const String allergies='/Allergies/allergys';
  // static const String products = "/products";
  // static const String createOrUpdateCart = "/cart";
  // static const String deleteCart = "/cart";
  // static const String getCart = "/Cart/";
  static const String signIn='/login';
  static const String signUp='/register';
  static const String verifyRegister='/Account/VerifyRegister';
  static const String forgetPassword='/Account/forget-password';
  static const String forgotPasswordVerifyOtp='/Account/forget-password/verify-otp';
  static const String resetPassword='/Account/reset-password';
  static const String sendOtp='/Account/Register/send-otp';
  static const String verifyOtp='/Account/verify-otp';
  static const String updateUserProfile='/User/UpdateUserProfile';
  static const String userProfile='/User/GetUser';
  static const String createOrder='/Order/CreateOrder';
}

class ApiKey {
  static String id = "id";
  static String name = "name";
  static String imageUrl = "imageUrl";
  static String byReservation='byReservation';
  static String reservationDuration='reservationDuration';
  static String description="description";
  static String price="price";
  static String categoryId="categoryId";
  static String categoryName="categoryName";
  static String pageIndex="pageIndex";
  static String pageSize="pageSize";
  static String count="count";
  static String data="data";

  static String email = "email";
  static String phone = "phone";
}


class Params{
  static const categoryId="CategoryId";
}