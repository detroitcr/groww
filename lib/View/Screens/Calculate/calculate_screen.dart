import 'package:flutter/material.dart';
import 'package:growwui/Api/Models/api_model.dart';
import 'package:growwui/Api/Service/api_service.dart';
import 'package:growwui/Utils/Static/custom_color.dart';
import 'package:growwui/Utils/Widgets/Common/custom_appbar_widget.dart';

class CalculateScreen extends StatefulWidget {
  const CalculateScreen({Key? key}) : super(key: key);

  @override
  State<CalculateScreen> createState() => _CalculateScreenState();
}

class _CalculateScreenState extends State<CalculateScreen> {
  ApiPracticeModel apiPracticeModel = ApiPracticeModel();
  ApiService apiService = ApiService();
  bool isLoading = true;
  @override
  void initState() {
    apiService.callAPI().then((value) {
      apiPracticeModel = value;
      isLoading = false;
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.scaffoldColor,
      appBar: const CustomAppBar(),
      body: isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Center(
              child: ListView.separated(
                  scrollDirection: Axis.vertical,
                  separatorBuilder: (context, index) => const SizedBox(
                        height: 15,
                        width: 15,
                      ),
                  itemCount: apiPracticeModel.data!.length,
                  itemBuilder: ((context, index) {
                    return Column(
                      children: [
                        SizedBox(
                          height: 100,
                          width: 100,
                          child: Image.network(
                            apiPracticeModel.data![index].avatar!,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        RichText(
                          text: TextSpan(
                            text: 'Name: ',
                            children: [
                              TextSpan(
                                text: apiPracticeModel.data![index].firstName ??
                                    'correct',
                              ),
                              const WidgetSpan(
                                child: SizedBox(
                                  width: 5,
                                ),
                              ),
                              TextSpan(
                                text: apiPracticeModel.data![index].lastName ??
                                    'name',
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                          width: 10,
                        ),
                        RichText(
                          text: TextSpan(
                            text: 'Email: ',
                            children: [
                              TextSpan(
                                text: apiPracticeModel.data![index].email ??
                                    'correct',
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  })),
            ),
    );
  }
}
