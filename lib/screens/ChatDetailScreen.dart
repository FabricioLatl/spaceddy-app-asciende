
import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_ready_rental/constants/ImageAssest.dart';
import 'package:flutter_ready_rental/widgets/Bubble.dart';
import 'package:flutter_ready_rental/widgets/Header.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:uuid/uuid.dart';
import 'package:http/http.dart' as http;
import 'package:intl/date_symbol_data_local.dart';
import 'package:mime/mime.dart';
import 'package:path_provider/path_provider.dart';
// import 'package:bubble/bubble.dart';
import 'package:intl/intl.dart';

class ChatDetailScreen extends StatefulWidget {
  const ChatDetailScreen({Key? key}) : super(key: key);

  @override
  State<ChatDetailScreen> createState() => _ChatDetailScreenState();
}

class _ChatDetailScreenState extends State<ChatDetailScreen> {
  final timeData = ['16.46', '16.46', '09.45'];
  late List<types.Message> _messages = [];
  final _user = const types.User(id: '82091008-a484-4a89-ae75-a22bf8d6f3ac');
  @override
  void initState() {
    super.initState();
    _loadMessages();
  }
  @override
  Widget _bubbleBuilder(
    Widget child, {
    required message,
    required nextMessageInGroup,
  }) 
  {
    return Bubble(
      child: child,
      bubbleColor: _user.id != message.author.id ||
        message.type == types.MessageType.image
        ? Colors.white
        : const Color.fromRGBO(241, 95, 95, 1),
      bubbleBorderRadius: BorderRadius.only(
        topLeft: Radius.circular(12.r),
        topRight: Radius.circular(12.r),
        bottomRight: Radius.circular(_user.id != message.author.id ? 12.r : 0),
        bottomLeft: Radius.circular(_user.id != message.author.id ? 0 : 12.r),
      ),
      bubbleBorderWidth: _user.id != message.author.id ? 1.w : 0,
      bubbleBorderColor: _user.id != message.author.id ? const Color.fromRGBO(232, 232, 232, 1) : Colors.transparent,
      timeTextAlignment: _user.id != message.author.id ? CrossAxisAlignment.start : CrossAxisAlignment.end,
      timeTextColor: _user.id != message.author.id ? const Color.fromRGBO(173, 181, 189, 1) : Colors.white,
      quickReplayMsg: message.author.id == 'e52552f4-835d-4dbe-ba77-b076e659774c' ? true : false,
      lastSeenMsg: _user.id != message.author.id ? (timeData..shuffle()).first :  '${DateFormat("hh.mm · ").format(DateTime.now())}Read'
    );
  }
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    // double statusBarHeight = MediaQuery.of(context).padding.top;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(42.h),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: const Header(
            hasBackBtn: true,
            title: 'Orchad Row House',
          ),
        ),
      ),
      body: Container(
        width: size.width,
        height: size.height,
        color: const Color.fromRGBO(250, 250, 250, 1),
        child: Chat(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          messages: _messages,
          onMessageTap: _handleMessageTap,
          onPreviewDataFetched: _handlePreviewDataFetched,
          onSendPressed: _handleSendPressed,
          showUserAvatars: false,
          showUserNames: false,
          user: _user,
          hideBackgroundOnEmojiMessages: false,
          inputOptions: const InputOptions(
            sendButtonVisibilityMode: SendButtonVisibilityMode.always,
          ),
          l10n: const ChatL10nEn(
            inputPlaceholder: 'Message...',
          ),
          bubbleBuilder: _bubbleBuilder,
          theme: DefaultChatTheme(
            backgroundColor: const Color.fromRGBO(250, 250, 250, 1),
            primaryColor: const Color.fromRGBO(241, 95, 95, 1),
            secondaryColor: Colors.white,
            sendButtonIcon: Image.asset(
              chatSendIcon,
              width: 20.w,
              height: 20.w,
              fit: BoxFit.contain,
            ),
            inputBackgroundColor: Colors.white,
            inputBorderRadius: BorderRadius.circular(40.r),
            inputTextStyle: TextStyle(
              color: const Color.fromRGBO(12, 12, 12, 1),
              fontSize: 14.sp,
              fontWeight: FontWeight.w500
            ),
            inputTextColor: const Color.fromRGBO(12, 12, 12, 1),
            inputTextCursorColor: const Color.fromRGBO(12, 12, 12, 1),
            inputTextDecoration: InputDecoration(
              contentPadding: EdgeInsets.only(top: 9.h, bottom: 10.h, left: 20.w, right: 20.w),
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: const Color.fromRGBO(223, 223, 223, 1),
                  width: 1.h,
                ),
                borderRadius: BorderRadius.circular(40.r)
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: const Color.fromRGBO(223, 223, 223, 1),
                  width: 1.h,
                ),
                borderRadius: BorderRadius.circular(40.r)
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: const Color.fromRGBO(223, 223, 223, 1),
                  width: 1.h,
                ),
                borderRadius: BorderRadius.circular(40.r)
              ),
            ),
            inputContainerDecoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.1),
                  offset: Offset(0, -10),
                  blurRadius: 40,
                  spreadRadius: 0.1,
                ),
              ],
              color: Colors.white,
              borderRadius: BorderRadius.circular(40.r),
            ),
            dateDividerTextStyle: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
              color: const Color.fromRGBO(173, 181, 189, 1),
            ),
            dateDividerMargin: EdgeInsets.symmetric(vertical: 23.h),
            messageBorderRadius: 12.r,
            messageInsetsHorizontal: 10.w,
            messageInsetsVertical: 10.w,
            sentMessageBodyTextStyle: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
            receivedMessageBodyTextStyle: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              color: const Color.fromRGBO(12, 12, 38, 1),
            ),
          ),
        ),
      ),
    );
  }
  void _addMessage(types.Message message) {
    setState(() {
      _messages.insert(0, message);
    });
  }

  void _handleMessageTap(BuildContext _, types.Message message) async {
    if (message is types.FileMessage) {
      var localPath = message.uri;

      if (message.uri.startsWith('http')) {
        try {
          final index =
              _messages.indexWhere((element) => element.id == message.id);
          final updatedMessage =
              (_messages[index] as types.FileMessage).copyWith(
            isLoading: true,
          );

          setState(() {
            _messages[index] = updatedMessage;
          });

          final client = http.Client();
          final request = await client.get(Uri.parse(message.uri));
          final bytes = request.bodyBytes;
          final documentsDir = (await getApplicationDocumentsDirectory()).path;
          localPath = '$documentsDir/${message.name}';

          if (!File(localPath).existsSync()) {
            final file = File(localPath);
            await file.writeAsBytes(bytes);
          }
        } finally {
          final index =
              _messages.indexWhere((element) => element.id == message.id);
          final updatedMessage =
              (_messages[index] as types.FileMessage).copyWith(
            isLoading: null,
          );

          setState(() {
            _messages[index] = updatedMessage;
          });
        }
      }

      // await OpenFile.open(localPath);
    }
  }

  void _handlePreviewDataFetched(
    types.TextMessage message,
    types.PreviewData previewData,
  ) {
    final index = _messages.indexWhere((element) => element.id == message.id);
    final updatedMessage = (_messages[index] as types.TextMessage).copyWith(
      previewData: previewData,
    );

    setState(() {
      _messages[index] = updatedMessage;
    });
  }

  void _handleSendPressed(types.PartialText message) {
    final textMessage = types.TextMessage(
      author: _user,
      createdAt: DateTime.now().millisecondsSinceEpoch,
      id: const Uuid().v4(),
      text: message.text,
      showStatus: true
    );

    _addMessage(textMessage);
  }
  void _loadMessages() async {
    final response = await rootBundle.loadString('assets/messages.json');
    final messages = (jsonDecode(response) as List)
      .map((e) => types.Message.fromJson(e as Map<String, dynamic>))
      .toList();
    setState(() {
      _messages = messages;
    });
  }
}

