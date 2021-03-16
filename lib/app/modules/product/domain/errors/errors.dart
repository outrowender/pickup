class ListProductsFailure implements Exception {}

class ShowProductFailure implements Exception {}
class InvalidProductIdFailure implements ShowProductFailure {}

// TODO: divide these errors in multiple files
class SaveProductsFailure implements Exception {}
class NoProductsToSaveFailure implements SaveProductsFailure{}
