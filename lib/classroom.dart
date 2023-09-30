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
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Tuần này"),
                        const Text("Xem danh sách việc cần làm"),
                      ],
                    ),
                    const Text("Hiện không có bài tập nào"),
                  ],
                ),
              ),
              ListView.builder(
                primary: false,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: EdgeInsets.all(16),
                itemCount: 20,
                itemBuilder: (context, index) {
                  return (index % 2 == 0)
                      ? SizedBox(height: 20)
                      : Container(
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Colors.red,
                          ),
                          child: Column(children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text("...."),
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.more_vert))
                              ],
                            ),
                            const Text("....."),
                            const Text("....")
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
