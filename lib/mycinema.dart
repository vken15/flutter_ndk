import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';

final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];

final List<String> imgList2 = [
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];

class MyCinemaScreen extends StatefulWidget {
  const MyCinemaScreen({super.key});

  @override
  State<MyCinemaScreen> createState() => _MyCinemaScreenState();
}

class _MyCinemaScreenState extends State<MyCinemaScreen>
    with SingleTickerProviderStateMixin {
  int _current = 0;
  final CarouselController _controller = CarouselController();
  final CarouselController _controller2 = CarouselController();
  late TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SliderDrawer(
        sliderOpenSize: 350,
        appBar: SliderAppBar(
          appBarColor: Colors.white,
          appBarPadding: const EdgeInsets.only(right: 8),
          title: const Text("MY CINEMA",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          trailing: Row(
            children: [
              IconButton(
                icon: const Icon(Icons.notifications),
                onPressed: () {},
              ),
              const CircleAvatar(
                radius: 16,
              ),
            ],
          ),
        ),
        slider: Container(
          padding: const EdgeInsets.all(8),
          decoration: const BoxDecoration(
              color: Color.fromRGBO(41, 39, 119, 1)
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildBanner(),
              _buildSearch(),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 32),
                child: Text(
                  "Lịch chiếu",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(
                    25.0,
                  ),
                ),
                child: TabBar(
                  padding: const EdgeInsets.all(8),
                  controller: tabController,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white,
                  ),
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.black,
                  tabs: const [
                    Tab(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 48),
                        child: Text("Đang chiếu"),
                      ),
                    ),
                    Tab(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 48),
                        child: Text("Sắp chiếu"),
                      ),
                    ),
                  ],
                ),
              ),
              ConstrainedBox(
                constraints: const BoxConstraints(
                  maxHeight: 450,
                ),
                child: TabBarView(
                  controller: tabController,
                  children: [
                    ///Hien thi danh sach phim dang chieu
                    _buildListMovie(imgList),

                    ///Hien thi danh sach phim sap chieu
                    _buildListMovie(imgList2)
                  ],
                ),
              )
            ],
          ),
        ),
      )),
    );
  }

  ///
  Widget _buildListMovie(List<String> data) {
    return Column(
      children: [
        CarouselSlider(
          carouselController: _controller2,
          options: CarouselOptions(
            height: 400,
            viewportFraction: 0.6,
            aspectRatio: 2.0,
            enlargeCenterPage: true,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 5),
          ),
          items: data.map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.symmetric(horizontal: 12),
                    child: Column(
                      children: [
                        Expanded(child: Image.network(i, fit: BoxFit.cover)),
                        const Text(
                          "Tên phim",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        const Text("100 phút"),
                      ],
                    ));
              },
            );
          }).toList(),
        ),
      ],
    );
  }

  /// Thanh tìm kiếm
  Container _buildSearch() {
    return Container(
        margin: const EdgeInsets.all(16),
        padding: const EdgeInsets.all(16),
        child: TextFormField(
          decoration: const InputDecoration(
              hintText: "Nhập phim cần tìm",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(16)),
              ),
              suffixIcon: Icon(Icons.search),
              contentPadding: EdgeInsets.symmetric(horizontal: 12)),
        ));
  }

  /// Banner
  Stack _buildBanner() {
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        CarouselSlider(
          carouselController: _controller,
          options: CarouselOptions(
              height: 250,
              viewportFraction: 1,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 5),
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              }),
          items: imgList.map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.symmetric(horizontal: 12),
                    child: Image.network(i, fit: BoxFit.cover));
              },
            );
          }).toList(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: imgList.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => _controller.animateToPage(entry.key),
              child: Container(
                width: 12.0,
                height: 12.0,
                margin:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white
                        .withOpacity(_current == entry.key ? 1 : 0.5)),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
