import 'package:flutter/material.dart';
import 'package:sloka_webapp/core/widget/custom_text_Form_Field.dart';

class CallUs extends StatelessWidget {
  const CallUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> fromKey = GlobalKey<FormState>();

    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Form(
              key: fromKey,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'تابعنا علي مواقع التواصل الاجتماعي',
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Image(
                      height: 200,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.red,
                      image: const NetworkImage(
                        'https://osta.ng/wp-content/uploads/2020/12/logo.png',
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'أرسل استفسارك',
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomTextFormField(
                      lable: 'الاسم',
                      validator: (value) => value!.isEmpty ? "your SMS" : null,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomTextFormField(
                      lable: 'البريد الاكتروني',
                      validator: (value) => value!.isEmpty ? "your SMS" : null,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomTextFormField(
                      lable: 'نص الرساله',
                      validator: (value) => value!.isEmpty ? "your SMS" : null,

                      maxLength: 5,
                      // maxLines: 10,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (fromKey.currentState!.validate()) {
                          debugPrint('sent');
                        }
                      },
                      child: const Text('الرسل'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
