import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:messages/chat/conversion.dart';
import 'package:messages/chat/tabs/inbox.dart';
import 'message_proivider.dart';

class ChatList extends StatefulWidget {
  @override
  _ChatListState createState() => _ChatListState();
}

class _ChatListState extends State<ChatList>
    with SingleTickerProviderStateMixin {
  List<Conversation> _Converstations = MessageProvider.getConversations();
  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      // to use google fonts directly after install packet in pubspec.yaml
      data: ThemeData(
        fontFamily: GoogleFonts.montserrat().fontFamily,
      ),
      child: Stack(
        children: <Widget>[
          Container(
            color: Colors.white,
          ),
          CustomPaint(
            painter: ChartBackground(),
            size: Size(double.infinity, double.infinity),
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              leading: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_back_ios,
                  size: 30,
                ),
              ),
              title: Text(
                'MESSAGES',
                style:
                    TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1.5),
              ),
              centerTitle: true,
              bottom: TabBar(
                unselectedLabelColor: Color(0xfff76aa4),
                indicatorColor: Colors.transparent,
                indicator: BoxDecoration(color: Colors.transparent),
                controller: _tabController,
                tabs: <Widget>[
                  Tab(
                    text: 'Inbox',
                  ),
                  Tab(
                    text: 'Groups',
                  ),
                  Tab(
                    text: 'Online(25)',
                  ),
                  Tab(
                    text: 'History',
                  ),
                ],
              ),
            ),
            body: TabBarView(
              controller: _tabController,
              children: <Widget>[
                ConversationList(),
                Center(
                    child: Container(
                        height: 100,
                        width: 300,
                        color: Colors.black,
                        child: Card(
                          color: Colors.pinkAccent,
                          child: Center(child: Text('Groups Test')),
                        ))),
                Container(),
                Container(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ChartBackground extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Rect rect = Rect.fromLTWH(0, 0, size.width, size.height * 0.65);
    Gradient gradient = LinearGradient(
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
    );
    Paint paint = Paint();
    paint..shader = gradient.createShader(rect);
    paint.color = Colors.red;
    Path path = Path();
    path.lineTo(0, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height * 0.3);
    //do curve
    //quadraticBezierTo(go to it (x), go to it (y), from 0 (x), from 'height*.3' (y))
    path.quadraticBezierTo(
        size.width / 2, size.height * 0.65, 0, size.height * 0.3);
    path.lineTo(0, size.height * 0.3);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
