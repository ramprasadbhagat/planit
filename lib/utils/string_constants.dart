abstract class StringConstant {
  static const String successfullyLogIn = 'Successfully Log In';
  static const String itemAddedToCart = 'Item added to cart';
  static const String itemRemovedFromCart = 'Item removed from cart';
  static const String itemAddedToWishList = 'Item added to wishlist';
  static const String orderPlacedSuccessfully = 'Order placed successfully';
  static const String pinCodeSavedSuccessfully = 'PinCode saved successfully';
  static const String reviewAddedSuccessfully = 'Review added successfully';
  static const String pleaseSelectOrderId = 'please select orderId';
  static const String complainAddedSuccessfully = 'Complain Added Successfully';
  static const String recipeAddedToFavouritesList =
      'Recipe Added to Favourites list';
  static const String recipeRemovedFromFavouritesList =
      'Recipe removed from Favourites list';

  static const String addDescriptionOfYourComplain =
      'Add description of your complain';

  static const String pleaseGiveAtLeastOneStar =
      'Please give at least one Star 🙁';

  static const String pleaseCompleteYourPersonalInformation =
      'Please complete your personal Information.';
  static const String pleaseAddDefaultAddress = 'Please add a default address.';
  static const String profileUpdatedSuccessfully =
      'Profile updated successfully';
  static const String addressBookDeletedSuccessfully =
      'AddressBook deleted successfully';
  static const String addressBookEditedSuccessfully =
      'AddressBook edited successfully';
  static const String addressBookAddedSuccessfully =
      'AddressBook added successfully';
  static const String pleaseLoginToLikeThisBlog =
      'Please login to like this blog!';
  static const String youAlreadyDislikedThisBlog =
      'You already disliked this blog!';
  static const String youAlreadyLikedThisBlog = 'You already liked this blog!';
  static const String pleaseLoginToDislikeThisBlog =
      'Please login to dislike this blog!';
  static const String pleaseLoginToAddComments =
      'Please login to add comments!';
  static const String commentedAdded = 'Comment Added!';
  static const String pleaseLoginToAddItemsToShoppingList =
      'Please Login to add items to shopping list.';
  static String noAddressAddedWithDeliveryPin(String pinCode) =>
      'No addresses added with delivery pin - $pinCode. please add and select address to place order';

  static String selectedAddressNotAlignedWithDeliveryPin(String pinCode) =>
      'Please choose addresses added with delivery pin - $pinCode. please change address to place order';

  static const String pleaseAddYourDeliveryPinCode =
      'Please add your delivery pin code';
  static const String orderSuccessSubTitle =
      'Your order has been placed. Thank you for ordering.';
  static const String congratulationsString = 'Congratulations !';
  static const String continueString = 'Continue';
}
