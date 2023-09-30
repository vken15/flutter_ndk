// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';

class ClassroomScreen extends StatelessWidget {
  const ClassroomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SliderDrawer(
          appBar: SliderAppBar(
            appBarColor: Colors.white,
            title: const Text("Google Lớp học"),
            trailing: Row(
              children: [
                const CircleAvatar(
                  radius: 16,
                ),
                IconButton(
                  icon: const Icon(Icons.more_vert),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          slider: Center(),
          child: SingleChildScrollView(
            child: Column(children: <Widget>[
              Container(
                margin: const EdgeInsets.all(16),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1.0,
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Tuần này", style: TextStyle(
                          fontSize: 16,
                        ),),
                        GestureDetector(
                          onTap: () {},
                          child: Text("Xem danh sách việc cần làm", style: TextStyle(
                            color: Colors.blue,
                          ),),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text("Hiện không có bài tập nào", style: TextStyle(color: Colors.grey),),
                  ],
                ),
              ),
              ListView.builder(
                primary: false,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: const EdgeInsets.all(16),
                itemCount: 20,
                itemBuilder: (context, index) {
                  return (index % 2 == 0)
                      ? SizedBox(height: 20)
                      : Container(
                          padding: EdgeInsets.only(left: 12, top: 4, bottom: 16),
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Tên Lớp", style: TextStyle(fontSize: 20),),
                                    IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.more_vert))
                                  ],
                                ),
                                Text("2023-2024"),
                                SizedBox(height: 50),
                                Text("Tên giáo viên"),
                              ]),
                        );
                },
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
