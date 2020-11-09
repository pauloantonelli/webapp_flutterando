abstract class HomeFailure implements Exception {}

class ErrorSocialMembersNumbers implements HomeFailure {}

class NullErrorSocialMembersNumbers implements ErrorSocialMembersNumbers {}

class NullDataSourceErrorSocialMembersNumbers
    implements ErrorSocialMembersNumbers {}

class ErrorGetLastMeetups implements HomeFailure {}

class NullErrorGetLastMeetups implements ErrorGetLastMeetups {}

class NullDataSourceErrorGetLastMeetups implements ErrorGetLastMeetups {}

class ErrorGetLastVideosChannel implements HomeFailure {}

class NullErrorGetLastVideosChannel implements ErrorGetLastVideosChannel {}

class NullDataSourceErrorGetLastVideosChannel
    implements ErrorGetLastVideosChannel {}

class ErrorCoOrganizer implements HomeFailure {}

class NullErrorCoOrganizer implements ErrorCoOrganizer {}

class NullDataSourceErrorCoOrganizer implements ErrorCoOrganizer {}

class ErrorBrasilianPackages implements HomeFailure {}

class NullErrorBrasilianPackages implements ErrorBrasilianPackages {}

class NullDataSourceErrorBrasilianPackages implements ErrorBrasilianPackages {}

class ErrorBrasilianCases implements HomeFailure {}

class NullErrorBrasilianCases implements ErrorBrasilianCases {}

class NullDataSourceErrorBrasilianCases implements ErrorBrasilianCases {}
