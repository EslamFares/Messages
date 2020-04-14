import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:messages/chat/conversion.dart';
import 'package:messages/chat/messages.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class ChatScreen2 extends StatefulWidget {
  final Conversation conversation;
  final String name;
  ChatScreen2(this.conversation, this.name);

  @override
  _ChatScreen2State createState() => _ChatScreen2State();
}

class _ChatScreen2State extends State<ChatScreen2> {
  final _key = GlobalKey<FormFieldState>();
  final TextEditingController _messageController = TextEditingController();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _messageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(fontFamily: GoogleFonts.montserrat().fontFamily),
      child: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: [
                Color(0xffef1385),
                Color(0xfff12280),
                Color(0xfff63d76),
                Color(0xfff84f70),
              ],
              stops: [
                0.2,
                0.4,
                0.6,
                0.8,
              ],
            )),
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              title: Text(
                'Eslam Fares',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              centerTitle: true,
              backgroundColor: Colors.transparent,
              elevation: 0,
              leading: IconButton(
                onPressed: () {Navigator.pop(context);},
                icon: Icon(Icons.arrow_back_ios),
              ),
              actions: <Widget>[
                Padding(
                  padding: EdgeInsets.only(right: 12),
                  child: IconButton(
                    icon: Icon(Icons.settings),
                    onPressed: () {},
                  ),
                )
              ],
            ),
            body: Column(
              children: <Widget>[
                Flexible(
                  child: ListView.builder(
                      itemCount: widget.conversation.message.length,
                      itemBuilder: (BuildContext context, int position) {
                        if (widget.conversation.message[position].sender.name ==
                            widget.name) {
                          return _rightMess(
                              widget.conversation.message[position]);
                        }
                        return _leftMess(widget.conversation.message[position]);
                      }),
                ),
                _sendMessageForm(context),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _rightMess(Message message) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Transform.translate(
                offset: Offset(32, 35),
                child: Text(
                  message.dataTime,
                  style: TextStyle(color: Colors.white, fontSize: 11),
                ),
              ),
              Spacer(
                flex: 1,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text(
                    message.receiver.name,
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    message.receiver.phone,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w100),
                  ),
                ],
              ),
              SizedBox(
                width: 16,
              ),
              CircleAvatar(
                backgroundImage: ExactAssetImage(message.receiver.avatar),
                maxRadius: 35,
                minRadius: 30,
              )
//              Container(
//                width: 75,
//                height: 75,
//                decoration: BoxDecoration(
//                    image: DecorationImage(image: ExactAssetImage(message.receiver.avatar)),
//                    shape: BoxShape.circle
//                ),
//              ),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 24, horizontal: 16),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(50),
                ),
                color: Colors.white.withOpacity(0.2)),
            child: Text(
              message.body,
              style: TextStyle(color: Colors.white, fontSize: 12),
              textAlign: TextAlign.end,
            ),
          )
        ],
      ),
    );
  }

  Widget _leftMess(Message message) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                width: 75,
                height: 75,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: ExactAssetImage(message.receiver.avatar)),
                    shape: BoxShape.circle),
              ),
              SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    message.receiver.name,
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    message.receiver.phone,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w100),
                  ),
                ],
              ),
              Spacer(
                flex: 1,
              ),
              Transform.translate(
                offset: Offset(-32, 35),
                child: Text(
                  message.dataTime,
                  style: TextStyle(color: Colors.white, fontSize: 11),
                ),
              )
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 24, horizontal: 16),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(50),
                ),
                color: Colors.white.withOpacity(0.2)),
            child: Text(
              message.body,
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
          )
        ],
      ),
    );
  }

  _sendMessageForm(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 24, horizontal: 24),
      child: Form(
        key: _key,
        child: Stack(
          children: <Widget>[
            TextFormField(
              autofocus: true,
              enabled: true,
              controller: _messageController,
              decoration: InputDecoration(
                suffix:  Container(
                  height: 45,
                  width: 45,
                  child: IconButton(icon: Transform.translate(offset: Offset(-2,-1),
                      child: Icon(FontAwesomeIcons.paperPlane,color: Colors.white,)),onPressed: (){},),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                      //============= to take many color=========
                      gradient: LinearGradient(
                        colors: [
                          Color(0xffef1385),
                          Color(0xfff12280),
                          Color(0xfff63d76),
                          Color(0xfff84f70),
                        ],
                        stops: [
                          0.2,
                          0.4,
                          0.6,
                          0.8,
                        ],
                      )
                  ),
                ),
                  contentPadding: EdgeInsets.only(left: 24,right: 16,top: 16),
                  hintText: 'Write message ....',
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 13),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      borderSide: BorderSide(
                        color: Colors.white,
                      )),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      borderSide: BorderSide(
                        color: Colors.white,
                      )),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      borderSide: BorderSide(
                      )),
                  focusColor: Colors.white,
                  fillColor: Colors.white,
                  filled: true,
                  labelStyle: TextStyle(color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold)),
            )
          ],
        ),
      ),
    );
  }
}
