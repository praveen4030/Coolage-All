"use strict";

const functions = require("firebase-functions");
const admin = require("firebase-admin");
admin.initializeApp(functions.config().firebase);

exports.orderDelivered = functions.firestore
  .document("CanteenBasicDetails/{canteenId}/CanteenDeliveredOrders/{orderId}")
  .onWrite((change, context) => {
    var orderId = context.params.orderId;
    var canteenId = context.params.canteenId;
    const data = change.after.data();
    const orderStatus = data.orderStatus;
    const userDeviceToken = data.userDeviceToken;

    console.log("We have a notification to send to :", userDeviceToken);
    var payload;

    if (orderStatus == "delivered") {
      payload = {
        notification: {
          sender_uid: canteenId,
          title: "Order Delivered",
          body: "Your order has been delivered! Enjoy the delicious food!",
          icon: "default",
        },
      };
      return admin
        .messaging()
        .sendToDevice(userDeviceToken, payload)
        .then(function (response) {
          console.log("Successfully sent message:", response);
          console.log(response.results[0].error);
        })
        .catch(function (error) {
          console.log("Error sending message:", error);
        });
    }
    return;
  });
