mixin SecureConstants {
  //TEST Mode
  // static const String RAZORPAY_API = 'rzp_test_2rN6DlkkXf7t3U';
  //LIVE Mode
  static const String RAZORPAY_API = 'rzp_live_JrXGVuraXO0pmz';
  // static const String CASHFREE_API_SECRET =
  // '356307057eaf0b0a5b596caf9c544350860ee6c1';
  // static const String TOKEN_GENERATE_URL =
  //     "https://api.cashfree.com/api/v2/cftoken/order";

  static const String CASHFREE_API = '1691296f4a631d7401384ed65b921961';
  static const String PAYMENT_TYPE = "PROD";

  static const String coolageBackendApiBaseUrl =
      // "https://us-central1-coolageapp.cloudfunctions.net/default/api/generateCashfreeOrderToken";
      "https://us-central1-coolageapp.cloudfunctions.net/default/api/generateCashfreeOrderToken";

  // static const String CASHFREE_API = '1198299c484a201a9915ee0ad7928911';
  // static const String PAYMENT_TYPE = "TEST";
}
