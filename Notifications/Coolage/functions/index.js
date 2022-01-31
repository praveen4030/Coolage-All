"use strict";

const functions = require("firebase-functions");
const admin = require("firebase-admin");
admin.initializeApp(functions.config().firebase);

exports.order = functions.firestore
  .document("CanteenBasicDetails/{canteenId}/CanteenOngoingOrders/{orderId}")
  .onWrite((change, context) => {
    var orderId = context.params.orderId;
    var canteenId = context.params.canteenId;
    const data = change.after.data();
    const orderStatus = data.orderStatus;
    const userDeviceToken = data.userDeviceToken;
    var payload;
    if (orderStatus == "pending") {
      return admin
        .firestore()
        .collection("CanteenBasicDetails")
        .doc(canteenId)
        .get()
        .then((queryResult) => {
          console.log("Order status ", orderStatus);

          payload = {
            notification: {
              sender_uid: data.orderPlaceByUid,
              title: "New Order",
              body: "You have a new order.",
              icon: "default",
            },
          };
          var deviceTokensMap = queryResult.data().deviceTokensMap;
          console.log(deviceTokensMap);

          const tokens = [];
          Object.keys(deviceTokensMap).forEach(function (key) {
            //   do something with obj[key]
            tokens.push(deviceTokensMap[key]);
          });

          return admin
            .messaging()
            .sendToDevice(tokens, payload)
            .then(function (response) {
              console.log("Successfully sent message:", response);
              console.log(response.results[0].error);
            })
            .catch(function (error) {
              console.log("Error sending message:", error);
            });
        });
    } else {
      console.log("We have a notification to send to :", userDeviceToken);
      if (orderStatus == "preparing") {
        payload = {
          notification: {
            sender_uid: data.orderPlaceByUid,
            title: "Order Accepted",
            body: "Your order is getting ready!",
            icon: "default",
          },
        };
        console.log("sending notification for prepared and self pickup");
      } else if (orderStatus == "prepared" && data.isDelivery == false) {
        payload = {
          notification: {
            sender_uid: data.orderPlaceByUid,
            title: "Order prepared",
            body: "Your food is ready to be picked up from the canteen!",
            icon: "default",
          },
        };
        console.log("sending notification for prepared and self pickup");
      } else if (orderStatus == "delivering") {
        payload = {
          notification: {
            sender_uid: data.orderPlaceByUid,
            title: "Order update",
            body: "Your food is out for delivery!",
            icon: "default",
          },
        };
      }
      if (payload == null) {
        return;
      }

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
  });
