enum BaseAppBarAction { home, canteen, store, messages }
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

int getOrderStatusNo(OrderStatus orderStatus) {
  if (orderStatus == OrderStatus.pending) {
    return 1;
  } else if (orderStatus == OrderStatus.preparing) {
    return 2;
  } else if (orderStatus == OrderStatus.prepared) {
    return 3;
  } else if (orderStatus == OrderStatus.delivering) {
    return 4;
  } else if (orderStatus == OrderStatus.delivered) {
    return 5;
  } else if (orderStatus == OrderStatus.canceled) {
    return 6;
  }
  return -1;
}
