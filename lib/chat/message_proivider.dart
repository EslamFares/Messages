import 'package:flutter/material.dart';

import 'messages.dart';
import 'user.dart';
import 'conversion.dart';

class MessageProvider {
 static List<Conversion> getConversations() {
    User user1 = User(
        name: 'Eslam Fares',
        avatar: 'assets/shard/1.jpg',
        phone: '010011012013');
    User user2 = User(
        name: 'Mo',
        avatar: 'assets/shard/girl2.jpeg',
        phone: '020010555505');
    return [
      Conversion(user: [
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
      Conversion(user: [
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
      Conversion(user: [
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
      Conversion(user: [
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
      Conversion(user: [
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
      Conversion(user: [
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
      Conversion(user: [
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
