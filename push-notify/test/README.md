## Test example for GCM:

This is a simple example of a Yesod server using the PushNotify api for GCM,
(Network.PushNotify.Gcm) where devices can register to receive GCM messages
and users can send messages through the web service. This is composed of:

* a Yesod app for registering the devices and sending push notifications.
* an Android app for registering on GCM and receiving the notifications.

**To try the example:**
  
  + On an Android device:
     - Go to settings/applications/ allow unknown sources.
     - In the web browser go to: http://push-notify.yesodweb.com/ and download 
       the android app from the link at the bottom.
     - Install it, enter a username and a password.

  + If the registration succeded, when you go to: http://push-notify.yesodweb.com/ 
    you will see your username. And you can start sending notifications through
    the website.

**About the Yesod App:**

Before running the Yesod app, you need to complete the "approot" and the 
"apiKey" with the proper values.
The API Key is provided by Google. You need to start a project at Google Apis
and enable the GCM service. (https://code.google.com/apis/console)
In this example, I show how to handle with the registration of devices. Also,
I provide a web service, so users can send notifications to the devices
registered. When the server receives a post request to send a notification to
a device, uses the GCM apis for sending the notifications and handling the
result in order to correctly actualize the DB. This means removing the devices
that have been unregistered, changing the regId of the devices that have changed,
and resending the notifications that weren't sent because of an internal error 
in the GCM Servers.


**About the android app:**

Its very simple. When started, it connects to the GCM Service and gets its RegID.
Then, it asks you for a username and password, and sends all this information to
your server.
Once you have its regId, you can start sending notifications through GCM Servers.

NOTE: The Android app is based on some examples provided by google in the Android
developers site.