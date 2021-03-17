import 'package:Project/widgets/emoji_piker.dart';
import 'package:Project/widgets/input_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:Project/widgets/message_widget.dart';

class CommentScreen extends StatefulWidget {
  @override
  _CommentScreenState createState() => _CommentScreenState();
}

class _CommentScreenState extends State<CommentScreen> {
  final messages = <String>[];
  final controller = TextEditingController();
  bool isEmojiVisible = false;
  bool isKeyboardVisible = false;
  String isFoundComment;

  @override
  void initState() {
    isFoundComment = null;
    super.initState();

    KeyboardVisibility.onChange.listen((bool isKeyboardVisible) {
      setState(() {
        this.isKeyboardVisible = isKeyboardVisible;
      });

      if (isKeyboardVisible && isEmojiVisible) {
        setState(() {
          isEmojiVisible = false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(35, 35, 35, 1),
      body: WillPopScope(
        onWillPop: onBackPress,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Center(
            //   child: SingleChildScrollView(
            //     child: Container(
            //       child: Column(
            //         mainAxisAlignment: MainAxisAlignment.center,
            //         children: [
            //           Padding(
            //             padding: const EdgeInsets.only(right: 150, bottom: 150),
            //             child: IconButton(
            //               icon: Icon(
            //                 Icons.forum_rounded,
            //                 color: Colors.grey,
            //                 size: 200,
            //               ),
            //               onPressed: null,
            //             ),
            //           ),
            //           Text(
            //             "No comments yet",
            //             style: TextStyle(
            //               fontSize: 20,
            //               color: Colors.grey,
            //             ),
            //           ),
            //           Text(
            //             "Be the first to comment.",
            //             style: TextStyle(
            //               fontSize: 15,
            //               color: Colors.grey,
            //             ),
            //           ),
            //           //SizedBox(height: 400),
            //         ],
            //       ),
            //     ),
            //   ),
            Expanded(
              child: isFoundComment == null
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(right: 150, bottom: 150),
                          child: IconButton(
                            icon: Icon(
                              Icons.forum_rounded,
                              color: Colors.grey,
                              size: 200,
                            ),
                            onPressed: null,
                          ),
                        ),
                        Text(
                          "No comments yet",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          "Be the first to comment.",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey,
                          ),
                        ),
                        //SizedBox(height: 400),
                      ],
                    )
                  : ListView(
                      reverse: false,
                      physics: BouncingScrollPhysics(),
                      children: messages
                          .map((message) => MessageWidget(message: message))
                          .toList(),
                    ),
            ),
            InputWidget(
              onBlurred: toggleEmojiKeyboard,
              controller: controller,
              isEmojiVisible: isEmojiVisible,
              isKeyboardVisible: isKeyboardVisible,
              onSentMessage: (message) => setState(() {
                isFoundComment = "sc";
                messages.insert(0, message);
              }),
            ),
            Offstage(
              child: EmojiPickerWidget(onEmojiSelected: onEmojiSelected),
              offstage: !isEmojiVisible,
            ),
          ],
        ),
      ),
    );
  }

  void onEmojiSelected(String emoji) => setState(() {
        controller.text = controller.text + emoji;
      });
  Future toggleEmojiKeyboard() async {
    if (isKeyboardVisible) {
      FocusScope.of(context).unfocus();
    }

    setState(() {
      isEmojiVisible = !isEmojiVisible;
    });
  }

  Future<bool> onBackPress() {
    if (isEmojiVisible) {
      toggleEmojiKeyboard();
    } else {
      Navigator.pop(context);
    }

    return Future.value(false);
  }
}

//  Padding(
//               padding: const EdgeInsets.only(bottom: 10.0),
//               child: Row(
//                 children: [
//                   Container(
//                     width: 290,
//                     height: 60,
//                     decoration: BoxDecoration(
//                       color: Colors.grey,
//                       borderRadius: BorderRadius.circular(50),
//                     ),
//                     child: TextField(
//                       // controller: controller,
//                       decoration: InputDecoration(
//                         hintStyle: TextStyle(
//                           color: Colors.white,
//                         ),
//                         hintText: "Write a comment...",
//                         prefixIcon: Icon(
//                           Icons.emoji_emotions_outlined,
//                           size: 30,
//                         ),
//                         prefix: Padding(
//                           padding: const EdgeInsets.only(right: 60.0),
//                           child: EmojiPicker(
//                             rows: 3,
//                             columns: 7,
//                             buttonMode: ButtonMode.MATERIAL,
//                             recommendKeywords: ["racing", "horse"],
//                             numRecommended: 10,
//                             onEmojiSelected: (emoji, category) {
//                               print(emoji);
//                             },
//                           ),
//                         ),
//                         suffixIcon: Icon(
//                           Icons.attach_file,
//                           color: Colors.white,
//                         ),
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(50),
//                           // borderSide: BorderSide.none,
//                         ),
//                       ),
//                       keyboardType: TextInputType.multiline,
//                       minLines: 1,
//                       maxLines: 4,
//                       enableSuggestions: true,
//                     ),
//                   ),
//                   SizedBox(width: 10),
//                   Container(
//                     height: 50,
//                     width: 50,
//                     decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                       border: Border.all(
//                         color: Colors.grey,
//                       ),
//                     ),
//                     child: IconButton(
//                       color: Colors.white,
//                       icon: Icon(
//                         Icons.send,
//                         color: Colors.grey,
//                       ),
//                       onPressed: null,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
