enum Flavor { mock, uat, prod }

class Config {
  Flavor appFlavor = Flavor.mock;
  final String appName = 'PlanIt';
  final String baseUrl = 'https://nzms-dev-plantit.nzmsecurity.com/api/';
  final Duration httpSendTimeout = const Duration(seconds: 150000);
  final Duration httpConnectTimeout = const Duration(seconds: 150000);
  final Duration httpReceiveTimeout = const Duration(seconds: 150000);
  final sampleToken =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY1ZmVhOTE0ODY1N2Y4YTBiMTUwOTY1YiIsInJvbGUiOiJ1c2VyIiwiaWF0IjoxNzExOTU2ODAxfQ.-OzHyMHOV4OxwdDSNNYZ9MoirRuQHUNpU0JBOyxk2_M';
  final String razorPayTestApiKey = 'rzp_test_BvXf7v4JLacLRW';
  final String razorPayApiKey = 'rzp_live_r8pgA2rzlJNepf';
  int autoSearchTimeout = 1500;
}
