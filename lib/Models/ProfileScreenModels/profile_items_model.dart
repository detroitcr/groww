import 'package:flutter/material.dart';
import 'package:growwui/Utils/Static/custom_color.dart';

class ProfileItems {
  final String text;
  final String subText;
  final Widget headicon;
  ProfileItems({
    required this.text,
    required this.subText,
    required this.headicon,
  });
}

List<ProfileItems> profileItems = [
  ProfileItems(
    text: 'All orders',
    subText: 'Track orders,order details',
    headicon: const CircleAvatar(
      backgroundColor: CustomColor.scaffoldColor,
      child: Icon(Icons.pages),
    ),
  ),
  ProfileItems(
    text: 'Bank details',
    subText: 'Banks & AutoPay mandates',
    headicon: const CircleAvatar(
      backgroundColor: CustomColor.scaffoldColor,
      child: Icon(Icons.house),
    ),
  ),
  ProfileItems(
    text: 'Refer & earn',
    subText: 'Track Rewards & help friends',
    headicon: const CircleAvatar(
      backgroundColor: CustomColor.scaffoldColor,
      child: Icon(
        Icons.wallet_giftcard,
      ),
    ),
  ),
  ProfileItems(
    text: 'Help & Support',
    subText: 'Contact',
    headicon: const CircleAvatar(
      backgroundColor: CustomColor.scaffoldColor,
      child: Icon(
        Icons.question_mark,
      ),
    ),
  ),
  ProfileItems(
    text: 'Reports',
    subText: 'Stock & Crypto',
    headicon: const CircleAvatar(
      backgroundColor: CustomColor.scaffoldColor,
      child: Icon(Icons.pages),
    ),
  ),
  
];
