import 'package:flutter/material.dart';
import 'package:growwui/AUTHENTICATION/WIDGETS/sign_out.dart';
import 'package:growwui/Utils/Static/custom_color.dart';
import 'package:growwui/Utils/Widgets/Common/custom_appbar_widget.dart';
import 'package:growwui/Utils/Widgets/CryptoScreenWidgets/first_row.dart';
import '../../../Utils/Widgets/CryptoScreenWidgets/CryptoListView/crypto_first_row_list.dart';

class CryptoScreen extends StatelessWidget {
  const CryptoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.scaffoldColor,
      appBar: const CustomAppBar(),
      body: Column(
        children: const [
          SizedBox(
            height: 20,
          ),
          CryptoFirstRow(),
          SizedBox(
            height: 10,
          ),
          CryptoFirstRowList(),
          SizedBox(
            height: 10,
          ),
          SignOut(),
        ],
      ),
    );
  }
}
