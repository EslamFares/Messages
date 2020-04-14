import 'package:messages/chat/user.dart';

class Message {
  User sender, receiver;
  String dataTime,body;
  Message({this.sender, this.receiver, this.dataTime,this.body});
}
