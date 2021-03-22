class UserLoginFailure implements Exception {}

class UserNotFoundFailure implements UserLoginFailure {}

class UserUnauthorizedFailure implements UserLoginFailure {}

class InvalidCredentialsFailure implements UserLoginFailure {}
