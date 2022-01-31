part of core;

extension FirestoreX on FirebaseFirestore {
  CollectionReference get collegesCollection => collection("Colleges");
  CollectionReference get blogsCollection => collection("Blogs");
  CollectionReference get cityCollection => collection("City");
  CollectionReference get coolageCollection => collection("Coolage");

  CollectionReference get storeBasicDetailsCollection =>
      collection("StoreBasicDetails");
  CollectionReference get storeProductsCollection =>
      collection("StoreProducts");

  CollectionReference get canteenBasicDetailsCollection =>
      collection("CanteenBasicDetails");
  CollectionReference get canteenItemsCollection => collection("CanteenItems");

  CollectionReference get cardsCollection => collection('Cards');
  CollectionReference get feedCollection => collection('Feed');

  CollectionReference get usersCollection => collection('Users');
  CollectionReference get usersStoreCartCollection =>
      collection('UsersStoreCart');
  CollectionReference get usersCanteenCartCollection =>
      collection('UsersCanteenCart');

  CollectionReference get usersOrdersCollection => collection('UserOrders');

  CollectionReference get notificationsCollection =>
      collection('Notifications');
  CollectionReference get chatRoomCollection => collection("ChatRoom");
  CollectionReference get pendingPaymentsCollection =>
      collection("PendingPayments");
}

extension CollectionReferenceX on CollectionReference {
  DocumentReference get canteenCartItemsDocument => doc('CanteenCartItems');
  DocumentReference get storeCartItemsDocument => doc('StoreCartItems');
  DocumentReference get storesListDocument => doc('StoresList');
  DocumentReference get canteensListDocument => doc('CanteensList');
  DocumentReference get aboutCollegeDocument => doc('AboutCollege');
  DocumentReference get ordersDocument => doc('Orders');
  DocumentReference get ordersListDocument => doc('OrdersListDoc');
}

extension ReferenceX on Reference {
  Reference get storageRef => FirebaseStorage.instance.ref();
  Reference get storageProfileCollection => storageRef.child("User Profiles");
  Reference get groupPicStorageCollection =>
      storageRef.child('Groups Profile Pics');
  Reference get collegesStorageCollection => storageRef.child('Colleges');
  Reference get blogsStorageCollection => storageRef.child('Blogs');
  Reference get feedStorageCollection => storageRef.child('FeedImages');
}

extension DocumentReferenceX on DocumentReference {
  CollectionReference get serviceProvidersCollection =>
      collection('ServiceProviders');
  CollectionReference get chatsCollection => collection('Chats');
  CollectionReference get feedCollection => collection('Feed');
  CollectionReference get docsCollection => collection('Docs');
  CollectionReference get groupsCollection => collection('GroupsDetails');

  CollectionReference get refurbishedItemsCollection =>
      collection('RefurbishedItems');
  CollectionReference get previousCanteenOrdersCollection =>
      collection('PreviousCanteenOrders');
  CollectionReference get canteenCartItemsCollection =>
      collection('CanteenCartItems');
  CollectionReference get storeCartItemsCollection =>
      collection('StoreCartItems');
  CollectionReference get canteenMenuItemsCollection =>
      collection('CanteenMenuItems');
  CollectionReference get cityStoresWithBasicDetailsCollection =>
      collection('CityStoresWithBasicDetails');
  CollectionReference get cityStoreAllProductsCollection =>
      collection('CityStoreAllProducts');
  CollectionReference get userDocsCollection => collection('UserDocs');
  CollectionReference get storeOngoingOrdersCollection =>
      collection("StoreOngoingOrders");
  CollectionReference get storeDeliveredOrdersCollection =>
      collection("StoreDeliveredOrders");
  CollectionReference get canteenOngoingOrdersCollection =>
      collection("CanteenOngoingOrders");
  CollectionReference get canteenDeliveredOrdersCollection =>
      collection("CanteenDeliveredOrders");
  CollectionReference get canteenDocsCollection => collection("CanteenDocs");
}
