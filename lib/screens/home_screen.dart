import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:awesomenotifications/app/notification_service.dart';
import 'package:awesomenotifications/widgets/notification_button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const path = '/';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Awesome notifications'),
      ),
      body: Column(
        children: [
          NotificationButton(
              onPressed: () async {
                await NotificationService.showNotification(
                  title: 'Title of the notification',
                  body: 'Body of the notification',
                );
              },
              text: 'Basic Notification'),
          NotificationButton(
              onPressed: () async {
                await NotificationService.showNotification(
                    title: 'Title of the notification',
                    body: 'Body of the notification',
                    bigPicture:
                        'https://raw.githubusercontent.com/rafaelsetragni/awesome_notifications/master/example/assets/readme/awesome-notifications-ios-examples.jpg',
                    notificationLayout: NotificationLayout.BigPicture);
              },
              text: 'Big picture Notification'),
          NotificationButton(
              onPressed: () async {
                await NotificationService.showNotification(
                    title: 'Title of the notification',
                    body: 'Body of the notification',
                    notificationLayout: NotificationLayout.MediaPlayer);
              },
              text: 'MediaPlayer Notification'),
          NotificationButton(
              onPressed: () async {
                await NotificationService.showNotification(
                    title: 'Title of the notification',
                    body: 'Body of the notification',
                    summary: 'Summary of notification',
                    notificationLayout: NotificationLayout.Inbox);
              },
              text: 'Summary Notification'),
          NotificationButton(
              onPressed: () async {
                await NotificationService.showNotification(
                    title: 'Progress bar notification',
                    body: 'Body of the notification',
                    summary: 'Summary of notification',
                    notificationLayout: NotificationLayout.ProgressBar);
              },
              text: 'Progress bar notification'),
          NotificationButton(
              onPressed: () async {
                await NotificationService.showNotification(
                    title: 'Progress bar notification',
                    body: 'Body of the notification',
                    summary: 'Summary of notification',
                    notificationLayout: NotificationLayout.Messaging);
              },
              text: 'Message notification'),
          NotificationButton(
              onPressed: () async {
                await NotificationService.showNotification(
                    title: 'Scheduled notification',
                    body: 'Scheduled notification will be execute in 5 second',
                    interval: 5,
                    scheduled: true);
              },
              text: 'Scheduled notification'),
          NotificationButton(
              onPressed: () async {
                await NotificationService.showNotification(
                  title: 'Progress bar notification',
                  body: 'Body of the notification',
                  summary: 'Summary of notification',
                  payload: {
                    'navigate': 'true',
                  },
                  actionButton: [
                    NotificationActionButton(
                        key: 'check',
                        label: 'Open second page',
                        actionType: ActionType.SilentAction)
                  ],
                );
              },
              text: 'Action button notification'),
        ],
      ),
    );
  }
}
