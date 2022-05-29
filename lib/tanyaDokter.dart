import 'package:flutter/material.dart';

class ChatMessage {
  String? messageContent;
  String? messageType;
  ChatMessage({this.messageContent, this.messageType});
}

class TanyaDokter extends StatefulWidget {
  const TanyaDokter({Key? key}) : super(key: key);

  @override
  State<TanyaDokter> createState() => _TanyaDokterState();
}

class _TanyaDokterState extends State<TanyaDokter> {
  TextEditingController chat = TextEditingController(text: '');
  List<ChatMessage> messages = [
    ChatMessage(messageContent: "Halo dok", messageType: "sender"),
    ChatMessage(messageContent: "Selamat siang", messageType: "receiver"),
    ChatMessage(
        messageContent: "Ada yang bisa saya bantu?", messageType: "receiver"),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            elevation: 0,
            automaticallyImplyLeading: false,
            backgroundColor: Colors.blueGrey,
            flexibleSpace: SafeArea(
              child: Container(
                padding: EdgeInsets.only(right: 16),
                child: Row(
                  children: <Widget>[
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.grey,
                      maxRadius: 20,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      "Dokter",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ),
          body: Stack(
            children: <Widget>[
              ListView.builder(
                itemCount: messages.length,
                shrinkWrap: true,
                padding: EdgeInsets.only(top: 10, bottom: 50),
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.only(
                        left: 14, right: 14, top: 10, bottom: 10),
                    child: Align(
                      alignment: (messages[index].messageType == "receiver"
                          ? Alignment.topLeft
                          : Alignment.topRight),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: (messages[index].messageType == "receiver"
                              ? Colors.grey.shade200
                              : Colors.blue[200]),
                        ),
                        padding: EdgeInsets.all(16),
                        child: Text(
                          messages[index].messageContent!,
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                    ),
                  );
                },
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
                  height: 60,
                  width: double.infinity,
                  color: Colors.white,
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: TextField(
                          controller: chat,
                          decoration: InputDecoration(
                              hintText: "Ketik pesan...",
                              hintStyle: TextStyle(color: Colors.black54),
                              border: InputBorder.none),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      FloatingActionButton(
                        onPressed: () {
                          setState(() {
                            messages.add(ChatMessage(
                                messageContent: chat.text,
                                messageType: 'sender'));
                          });
                        },
                        child: Icon(
                          Icons.send,
                          color: Colors.white,
                          size: 18,
                        ),
                        backgroundColor: Colors.blueGrey,
                        elevation: 0,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
