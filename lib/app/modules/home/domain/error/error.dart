abstract class HomeFailure implements Exception {}

class ErrorSocialMembersNumbers implements HomeFailure {}

class NullErrorSocialMembersNumbers implements ErrorSocialMembersNumbers {}

class NullDataSourceErrorSocialMembersNumbers
    implements ErrorSocialMembersNumbers {}
