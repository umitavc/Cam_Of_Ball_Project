import 'package:auto_route/auto_route.dart';
import 'package:cam_of_ball/core/router/app_router.dart';
import 'package:cam_of_ball/features/utils/widgets/screen_title.dart';
import 'package:cam_of_ball/shared/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage()
class MessageScreen extends StatefulWidget {
  const MessageScreen({super.key});

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  final TextEditingController _messageController = TextEditingController();
  List<String> _messages = [];

  void _sendMessage(String message) {
    setState(() {
      _messages.add(message);
      _messageController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Column(
            children: [
              ScreenTitle(
                title: 'Group Name',
                child: InkWell(
                  onTap: () {
                    context.router.push(const ChatInfoRoute());
                  },
                  child: SvgPicture.asset('assets/svg/chat/info-circle.svg'),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: _messages.length,
                    itemBuilder: (ctx, index) {
                      final message = _messages[index];
                      const isUserMessage = true; /* Bu mesajın kullanıcıya ait olup olmadığını belirleyin */

                      final borderRadius = isUserMessage
                          ? const BorderRadius.only(
                              topLeft: Radius.circular(12.0),
                              bottomLeft: Radius.circular(12.0),
                              bottomRight: Radius.circular(12.0),
                            )
                          : const BorderRadius.only(
                              topRight: Radius.circular(12.0),
                              bottomLeft: Radius.circular(12.0),
                              bottomRight: Radius.circular(12.0),
                            );

                      return Row(
                        mainAxisAlignment: isUserMessage ? MainAxisAlignment.end : MainAxisAlignment.start, // Hizalamayı belirle
                        children: [
                          const SizedBox(
                            height: 33,
                            width: 33,
                            child: Stack(
                              clipBehavior: Clip.none,
                              fit: StackFit.expand,
                              children: [
                                CircleAvatar(
                                  backgroundImage: AssetImage('assets/png/avatar.png'),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: Container(
                              decoration: BoxDecoration(
                                color: isUserMessage ? AppColors.secondaryColor : AppColors.whiteColor,
                                borderRadius: borderRadius,
                              ),
                              margin: const EdgeInsets.symmetric(vertical: 4),
                              padding: const EdgeInsets.all(8),
                              child: Text(
                                message,
                                style: const TextStyle(color: isUserMessage ? Colors.white : Colors.black),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: _messageController,
                        decoration: const InputDecoration(labelText: 'Mesajınızı girin'),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        if (_messageController.text.isNotEmpty) {
                          _sendMessage(_messageController.text);
                        }
                      },
                      child: SvgPicture.asset('assets/svg/chat/send.svg'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
