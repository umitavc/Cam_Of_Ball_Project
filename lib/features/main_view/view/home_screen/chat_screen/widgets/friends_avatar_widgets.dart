import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FriendsAvatar extends StatelessWidget {
  const FriendsAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
                padding: const EdgeInsets.symmetric(vertical: 21),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 18),
                      child: SizedBox(
                        height: 42,
                        width: 42,
                        child: Stack(
                          clipBehavior: Clip.none,
                          fit: StackFit.expand,
                          children: [
                            const CircleAvatar(
                              backgroundImage: AssetImage(
                                'assets/png/avatar.png',
                              ),
                            ),
                            Positioned(
                              top: 0,
                              right: -3,
                              child: SvgPicture.asset(
                                'assets/svg/chat/add_icon.svg',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: SizedBox(
                        height: 50,
                        child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return const Padding(
                              padding: EdgeInsets.only(right: 18),
                              child: SizedBox(
                                height: 42,
                                width: 42,
                                child: Stack(
                                  clipBehavior: Clip.none,
                                  fit: StackFit.expand,
                                  children: [
                                    CircleAvatar(
                                      backgroundImage: AssetImage(
                                        'assets/png/chat.png',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              );
  }
}