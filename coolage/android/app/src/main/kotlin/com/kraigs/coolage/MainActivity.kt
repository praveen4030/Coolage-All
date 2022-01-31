package com.kraigs.coolage

// import android.app.NotificationChannel;
// import android.app.NotificationManager;
// import android.content.Context;
// import android.graphics.Color;
// import android.os.Build;

// import io.flutter.app.FlutterApplication
// import io.flutter.plugin.common.PluginRegistry
// import io.flutter.plugins.GeneratedPluginRegistrant
// import io.flutter.plugins.pathprovider.PathProviderPlugin;

// import io.flutter.plugin.common.MethodChannel
// import android.content.ContextWrapper
// import android.content.Intent
// import android.content.IntentFilter
// import android.os.Build.VERSION
// import android.os.Build.VERSION_CODES
// import android.net.Uri;
// import android.media.AudioAttributes;
// import android.content.ContentResolver;

// class Application : FlutterApplication() {
//     override fun onCreate() {
//         super.onCreate()
//         this.createChannel()
//         // FlutterFirebaseMessagingService.setPluginRegistrant(this)
//     }

// //     override fun registerWith(registry: PluginRegistry?) {
// // //        createChannel();
// //         FirebaseCloudMessagingPluginRegistrant.registerWith(registry);
// //     }

//     private fun createChannel() {
//         if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
//             // Create the NotificationChannel
//             val channel = NotificationChannel("Coolage", "OrderNoti", NotificationManager.IMPORTANCE_HIGH)
//             val soundUri = Uri.parse(ContentResolver.SCHEME_ANDROID_RESOURCE + "://"+ getApplicationContext().getPackageName() + "/raw/notification");
//             val att = AudioAttributes.Builder()
//                     .setUsage(AudioAttributes.USAGE_NOTIFICATION)
//                     .setContentType(AudioAttributes.CONTENT_TYPE_SPEECH)
//                     .build();
//             channel.setSound(soundUri, att)

//             val notificationManager: NotificationManager = getSystemService(Context.NOTIFICATION_SERVICE) as NotificationManager
//             notificationManager.createNotificationChannel(channel)

//             /*
//             val id = mapData["id"]
//             val name = mapData["name"]
//             val descriptionText = mapData["description"]
//             val sound = "sample"
//             val importance = NotificationManager.IMPORTANCE_HIGH
//             val mChannel = NotificationChannel(id, name, importance)
//             mChannel.description = descriptionText





//             // Register the channel with the system; you can't change the importance
//             // or other notification behaviors after this
//             val notificationManager = getSystemService(NOTIFICATION_SERVICE) as NotificationManager
//             notificationManager.createNotificationChannel(mChannel)
//             completed = true
//              */
//         }
//     }
// }

import android.content.ContentResolver
import android.content.Context
import android.media.RingtoneManager
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import java.util.*

class MainActivity: FlutterActivity() {
        override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, "dexterx.dev/flutter_local_notifications_example").setMethodCallHandler { call, result ->
            if ("drawableToUri" == call.method) {
                val resourceId = this@MainActivity.resources.getIdentifier(call.arguments as String, "drawable", this@MainActivity.packageName)
                result.success(resourceToUriString(this@MainActivity.applicationContext, resourceId))
            }
            if ("getAlarmUri" == call.method) {
                result.success(RingtoneManager.getDefaultUri(RingtoneManager.TYPE_ALARM).toString())
            }
        }
    }

    private fun resourceToUriString(context: Context, resId: Int): String? {
        return (ContentResolver.SCHEME_ANDROID_RESOURCE + "://"
                + context.resources.getResourcePackageName(resId)
                + "/"
                + context.resources.getResourceTypeName(resId)
                + "/"
                + context.resources.getResourceEntryName(resId))
    }
}
