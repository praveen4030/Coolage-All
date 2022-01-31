part of core;

enum ChatType { single, group }
enum OrderStatus {
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
  }
  return OrderStatus.unknown;
}
