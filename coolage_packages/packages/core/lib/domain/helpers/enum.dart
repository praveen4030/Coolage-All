part of core;

enum ChatType { single, group }
enum OrderStatus {
  paymentPending,
  paymentFailed,
  pending,
  preparing,
  prepared,
  delivering,
  delivered,
  canceled,
  unknown,
}

enum UserType {
  student,
  faculty,
  staff,
  guest,
}

enum CardsListType {
  home,
  store,
  canteen,
}

String getOrderStatusString(OrderStatus orderStatus) {
  String s = '';
  if (orderStatus == OrderStatus.pending) {
    s = 'pending';
  } else if (orderStatus == OrderStatus.preparing) {
    s = 'preparing';
  } else if (orderStatus == OrderStatus.prepared) {
    s = 'prepared';
  } else if (orderStatus == OrderStatus.delivering) {
    s = 'delivering';
  } else if (orderStatus == OrderStatus.delivered) {
    s = 'delivered';
  } else if (orderStatus == OrderStatus.canceled) {
    s = 'canceled';
  } else if (orderStatus == OrderStatus.paymentPending) {
    s = "paymentPending";
  } else if (orderStatus == OrderStatus.paymentFailed) {
    s = "paymentFailed";
  }
  return s;
}

OrderStatus getOrderStatus(String status) {
  if (status == 'pending') {
    return OrderStatus.pending;
  } else if (status == 'preparing') {
    return OrderStatus.preparing;
  } else if (status == 'prepared') {
    return OrderStatus.prepared;
  } else if (status == 'delivering') {
    return OrderStatus.delivering;
  } else if (status == 'delivered') {
    return OrderStatus.delivered;
  } else if (status == 'canceled') {
    return OrderStatus.canceled;
  } else if (status == 'paymentPending') {
    return OrderStatus.paymentPending;
  } else if (status == 'paymentFailed') {
    return OrderStatus.paymentFailed;
  }
  return OrderStatus.unknown;
}
