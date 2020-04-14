import 'package:flutter/material.dart';

import 'messages.dart';
import 'user.dart';
import 'conversion.dart';

class MessageProvider {

  static Conversation getConversation(){
    User user1 = User(
        name: 'Eslam Fares',
        avatar: 'assets/shard/1.jpg',
        phone: '750-64-9898');
    User user2 = User(
        name: 'Mo',
        avatar: 'assets/shard/man5.png',
        phone: '750-68-5555');
    return   Conversation(user: [
      user1,
      user2
    ], message: [
      Message(
          sender: user2,
          receiver: user1,
          dataTime: '10:20',
          body: 'Hi Mo, How are you?!'),
      Message(
          sender: user1,
          receiver: user2,
          dataTime: '10:20',
          body: 'Fine,Thank you 😍😍'),
      Message(
          sender: user2,
          receiver: user1,
          dataTime: '10:20',
          body: 'what about go to cinema?'),
      Message(
          sender: user1,
          receiver: user2,
          dataTime: '10:20',
          body: 'OK👍'),
      Message(
          sender: user1,
          receiver: user2,
          dataTime: '10:20',
          body: 'i will come yo you'),
      Message(
          sender: user1,
          receiver: user1,
          dataTime: '10:20',
          body: 'ok ❤❤'),

    ]);
  }
 static List<Conversation> getConversations() {
    User user1 = User(
        name: 'Eslam Fares',
        avatar: 'assets/shard/1.jpg',
        phone: '750-64-9898');
    User user2 = User(
        name: 'Mo',
        avatar: 'assets/shard/man4.png',
        phone: '750-68-5555');
    return [
      Conversation(user: [
        user1,
        user2
      ], message: [
        Message(
            sender: user1,
            receiver: user2,
            dataTime: '10:20',
            body: 'Hi Mo, How are you?!'),
        Message(
            sender: user1,
            receiver: user2,
            dataTime: '10:20',
            body: 'Hi Mo, How are you?!'),
        Message(
            sender: user1,
            receiver: user2,
            dataTime: '10:20',
            body: 'Hi Mo, How are you?!'),
        Message(
            sender: user1,
            receiver: user2,
            dataTime: '10:20',
            body: 'Hi Mo, How are you?!'),
      ]),
      Conversation(user: [
        user1,
        user2
      ], message: [
        Message(
            sender: user1,
            receiver: user2,
            dataTime: '10:20',
            body: 'Hi Mo, How are you?!'),
        Message(
            sender: user1,
            receiver: user2,
            dataTime: '10:20',
            body: 'Hi Mo, How are you?!'),
        Message(
            sender: user1,
            receiver: user2,
            dataTime: '10:20',
            body: 'Hi Mo, How are you?!'),
        Message(
            sender: user1,
            receiver: user2,
            dataTime: '10:20',
            body: 'Hi Mo, How are you?!'),
      ]),
      Conversation(user: [
        user1,
        user2
      ], message: [
        Message(
            sender: user1,
            receiver: user2,
            dataTime: '10:20',
            body: 'Hi Mo, How are you?!'),
        Message(
            sender: user1,
            receiver: user2,
            dataTime: '10:20',
            body: 'Hi Mo, How are you?!'),
        Message(
            sender: user1,
            receiver: user2,
            dataTime: '10:20',
            body: 'Hi Mo, How are you?!'),
        Message(
            sender: user1,
            receiver: user2,
            dataTime: '10:20',
            body: 'Hi Mo, How are you?!'),
      ]),
      Conversation(user: [
        user1,
        user2
      ], message: [
        Message(
            sender: user1,
            receiver: user2,
            dataTime: '10:20',
            body: 'Hi Mo, How are you?!'),
        Message(
            sender: user1,
            receiver: user2,
            dataTime: '10:20',
            body: 'Hi Mo, How are you?!'),
        Message(
            sender: user1,
            receiver: user2,
            dataTime: '10:20',
            body: 'Hi Mo, How are you?!'),
        Message(
            sender: user1,
            receiver: user2,
            dataTime: '10:20',
            body: 'Hi Mo, How are you?!'),
      ]),
      Conversation(user: [
        user1,
        user2
      ], message: [
        Message(
            sender: user1,
            receiver: user2,
            dataTime: '10:20',
            body: 'Hi Mo, How are you?!'),
        Message(
            sender: user1,
            receiver: user2,
            dataTime: '10:20',
            body: 'Hi Mo, How are you?!'),
        Message(
            sender: user1,
            receiver: user2,
            dataTime: '10:20',
            body: 'Hi Mo, How are you?!'),
        Message(
            sender: user1,
            receiver: user2,
            dataTime: '10:20',
            body: 'Hi Mo, How are you?!'),
      ]),
      Conversation(user: [
        user1,
        user2
      ], message: [
        Message(
            sender: user1,
            receiver: user2,
            dataTime: '10:20',
            body: 'Hi Mo, How are you?!'),
        Message(
            sender: user1,
            receiver: user2,
            dataTime: '10:20',
            body: 'Hi Mo, How are you?!'),
        Message(
            sender: user1,
            receiver: user2,
            dataTime: '10:20',
            body: 'Hi Mo, How are you?!'),
        Message(
            sender: user1,
            receiver: user2,
            dataTime: '10:20',
            body: 'Hi Mo, How are you?!'),
      ]),
      Conversation(user: [
        user1,
        user2
      ], message: [
        Message(
            sender: user1,
            receiver: user2,
            dataTime: '10:20',
            body: 'Hi Mo, How are you?!'),
        Message(
            sender: user1,
            receiver: user2,
            dataTime: '10:20',
            body: 'Hi Mo, How are you?!'),
        Message(
            sender: user1,
            receiver: user2,
            dataTime: '10:20',
            body: 'Hi Mo, How are you?!'),
        Message(
            sender: user1,
            receiver: user2,
            dataTime: '10:20',
            body: 'Hi Mo, How are you?!'),
      ]),
    ];
  }
}
