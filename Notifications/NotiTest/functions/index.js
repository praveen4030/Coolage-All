"use strict";

const functions = require("firebase-functions");
const admin = require("firebase-admin");
admin.initializeApp(functions.config().firebase);

exports.notificationWorking = functions.firestore
  .document("NotificationsTest/{docId}")
  .onWrite((change, context) => {
    const data = change.after.data();
    const token = data.deviceToken;
    var payload = {
      notification: {
        sender_uid: "snkcksnck",
        title: "Test",
        body: "You have a new test notification.",
        icon: "default",
      },
    };

    return admin
      .messaging()
      .sendToDevice(token, payload)
      .then(function (response) {
        console.log("Successfully sent message:", response);
        console.log(response.results[0].error);
      })
      .catch(function (error) {
        console.log("Error sending message:", error);
      });
  });
