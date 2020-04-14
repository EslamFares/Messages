import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:messages/chat/conversion.dart';
import 'package:messages/chat/message_proivider.dart';
import 'package:messages/chat2/chat_screen.dart';

class ConversationList extends StatefulWidget {
  @override
  _ConversationListState createState() => _ConversationListState();
}

class _ConversationListState extends State<ConversationList> {
  static List<List<Conversation>> conversations = [
    MessageProvider.getConversations(),
    MessageProvider.getConversations(),
    MessageProvider.getConversations(),
  ];
  Color _darkText = Color(0xff111111);
  Color _lightText = Color(0xffa6a6a6);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      child: ListView.builder(
          itemCount: conversations.length,
          itemBuilder: (BuildContext context, int position) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom: 16, left: 8),
                  child: Text(
                    conversations[position].first.message.last.dataTime,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                ),
                ...List.generate(conversations[position].length, (index) {
                  return Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                    margin: EdgeInsets.only(bottom: 20),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ChatScreen2(
                                          MessageProvider.getConversation(),
                                          'Eslam Fares')));
                            },
                            child: Container(
                              width: 50,
                              height: 50,
                              margin: EdgeInsets.only(right: 24),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: ExactAssetImage(
                                        conversations[position][index]
                                            .user[0]
                                            .avatar),
                                  )),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ChatScreen2(
                                          MessageProvider.getConversation(),
                                          'Eslam Fares')));
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  conversations[position][index].user[0].name,
                                  style: TextStyle(
                                      color: _darkText,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  conversations[position][index]
                                      .message
                                      .last
                                      .body,
                                  style: TextStyle(
                                      color: _lightText,
                                      fontWeight: FontWeight.w300,
                                      fontSize: 12),
                                )
                              ],
                            ),
                          ),
                          Spacer(flex: 1),
                          Transform.translate(
                              offset: Offset(-10, -11),
                              child: Text(
                                conversations[position][index]
                                    .message
                                    .last
                                    .dataTime,
                                style: TextStyle(
                                    color: Colors.pink,
                                    fontSize: 11,
                                    fontWeight: FontWeight.w700),
                              ))
                        ],
                      ),
                    ),
                  );
                }).toList(),
              ],
            );
          }),
    );
  }
}
