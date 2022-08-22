import 'dart:math';

import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:solusi_digital_flutter_assesment/constants/state.dart';
import 'package:solusi_digital_flutter_assesment/constants/theme.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:solusi_digital_flutter_assesment/providers/news_provider.dart';
import 'package:solusi_digital_flutter_assesment/screens/detail_news.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<NewsProvider>(context, listen: false).getAllNews();
    });
  }

  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> _demo = [
      Container(
        width: 150,
        height: 100,
        child: Image.asset(
          "assets/images/carosel.png",
          scale: 0.3,
        ),
      ),
      Container(
        height: 100,
        child: Image.asset(
          "assets/images/carosel.png",
          scale: 0.3,
        ),
      ),
      Container(
        height: 100,
        child: Image.asset(
          "assets/images/carosel.png",
          scale: 0.3,
        ),
      ),
    ];
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(17, 60, 17, 0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Hi, Bagus",
                  style: titleList,
                ),
                SizedBox(
                  width: 17.3,
                ),
                Image.asset(
                  "assets/icons/user-icon.png",
                  height: 20.41,
                  width: 20.41,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(color: Colors.grey.withOpacity(0.2), borderRadius: BorderRadius.circular(30)),
              padding: const EdgeInsets.only(left: 20),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Cari Klinik / Rumah Sakit",
                  hintStyle: TextStyle(color: Colors.grey[500]),
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          stops: [
                            0,
                            1,
                          ],
                          colors: [
                            Color(0xFF0A8DD8),
                            Color(0xFFDD127B),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 23),
                            child: Text(
                              "INFO ANTRIAN",
                              style: titleAppbar.copyWith(
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Divider(
                            color: Colors.white,
                            thickness: 1,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Image.asset("assets/icons/circle-progress.png"),
                                        Text(
                                          "21",
                                          style: titleAppbar,
                                        ),
                                      ],
                                    ),
                                    Text(
                                      "Sisa Antrian",
                                      style: titleListTile.copyWith(color: Colors.white),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 13),
                                      child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Image.asset("assets/icons/circle-progress2.png"),
                                          Text(
                                            "5",
                                            style: titleAppbar,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Text(
                                      "Sisa Antrian",
                                      style: titleListTile.copyWith(color: Colors.white),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 13),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Dokter Anda",
                                        style: titleListTile.copyWith(color: Color(0xFFFFF9AA)),
                                      ),
                                      Text(
                                        "dr.Rina Agustina",
                                        style: titleListTile.copyWith(color: Colors.white),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "Klinik / RS anda",
                                        style: titleListTile.copyWith(color: Color(0xFFFFF9AA)),
                                      ),
                                      Text(
                                        "RS. Nasional Hospital",
                                        style: titleListTile.copyWith(color: Colors.white),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 23,
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(5),
                                  decoration:
                                      BoxDecoration(color: Color(0xff0093DD), borderRadius: BorderRadius.circular(20)),
                                  child: Image.asset(
                                    'assets/icons/hospital.png',
                                    height: 50,
                                    width: 50,
                                  ),
                                ),
                                SizedBox(
                                  height: 9,
                                ),
                                Text(
                                  "KLINIK TERDEKAT",
                                  style: titleList,
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(5),
                                  decoration:
                                      BoxDecoration(color: Color(0xff0093DD), borderRadius: BorderRadius.circular(20)),
                                  child: Image.asset(
                                    'assets/icons/riwayat.png',
                                    height: 50,
                                    width: 50,
                                  ),
                                ),
                                SizedBox(
                                  height: 9,
                                ),
                                Text(
                                  "RIWAYAT",
                                  style: titleList,
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(5),
                                  decoration:
                                      BoxDecoration(color: Color(0xff8445A2), borderRadius: BorderRadius.circular(20)),
                                  child: Image.asset(
                                    'assets/icons/datascan.png',
                                    height: 50,
                                    width: 50,
                                  ),
                                ),
                                SizedBox(
                                  height: 9,
                                ),
                                Text(
                                  "KLINIK TERDEKAT",
                                  style: titleList,
                                )
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                        color: Color(0xff0093DD), borderRadius: BorderRadius.circular(20)),
                                    child: Image.asset(
                                      'assets/icons/notification.png',
                                      height: 50,
                                      width: 50,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 9,
                                  ),
                                  Text(
                                    "NOTIFIKASI",
                                    style: titleList,
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                        color: Color(0xff8445A2), borderRadius: BorderRadius.circular(20)),
                                    child: Image.asset(
                                      'assets/icons/nilai.png',
                                      height: 50,
                                      width: 50,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 9,
                                  ),
                                  Text(
                                    "BERI NILAI",
                                    style: titleList,
                                  )
                                ],
                              ),
                            ),
                            Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(5),
                                  decoration:
                                      BoxDecoration(color: Color(0xffDD127B), borderRadius: BorderRadius.circular(20)),
                                  child: Image.asset(
                                    'assets/icons/pengaturan.png',
                                    height: 50,
                                    width: 50,
                                  ),
                                ),
                                SizedBox(
                                  height: 9,
                                ),
                                Text(
                                  "PENGATURAN",
                                  style: titleList,
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 27,
                    ),
                    Container(
                      height: 100,
                      width: double.infinity,
                      child: PageView(
                        children: _demo,
                        onPageChanged: (index) {
                          setState(() {
                            pageIndex = index;
                          });
                        },
                      ),
                    ),
                    CarouselIndicator(
                      activeColor: Colors.blue,
                      count: _demo.length,
                      index: pageIndex,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    _buildListItem(_demo),

                    // Container(
                    //   height: MediaQuery.of(context).size.height,
                    //   child: ListView.builder(
                    //     physics: NeverScrollableScrollPhysics(),
                    //     itemCount: 2,
                    //     itemBuilder: (context, index) {
                    //       return Column(
                    //         children: [
                    //           Image.asset(
                    //             "assets/images/carosel.png",
                    //             scale: 0.5,
                    //           ),
                    //           Text("6 Waktu yang Tepat untuk Minum Air Putih Agar Tetap Bugar"),
                    //           Text("Sumber : detikHealth"),
                    //           Text("Rabu, 07 Agu 2019 09:20 WIB"),
                    //           Text(
                    //               "Jakarta - Air putih sangat bermanfaat untuk menjaga sistem yang ada di dalam tubuh. Seperti yang kita ketahui, 60 persen tubuh berisi cairan yang menjadikan tubuh harus selalu terhidrasi."),
                    //         ],
                    //       );
                    //     },
                    //   ),
                    // )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _buildListItem(List<Widget> demo) {
    return Consumer<NewsProvider>(builder: (context, value, _) {
      final isLoading = value.state == MyState.loading;
      final isError = value.state == MyState.error;

      if (isLoading) {
        return Center(
          child: CircularProgressIndicator(),
        );
      }
      if (isError) {
        return Text("Something went wrong");
      }

      return Column(
        children: value.news!.map((e) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Image.network(
                  "${e.urlToImage}",
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "${e.title}",
                style: titleAppbar.copyWith(color: Colors.black),
              ),
              Text(
                "${e.source?.name}",
                style: titleListTile,
              ),
              Text(
                "${e.publishedAt}",
                style: titleListTile,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "${e.description}",
                style: titleListTile.copyWith(color: Colors.black),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => DetailNews(articles: e)));
                },
                child: Text(
                  "Baca Selengkapnya",
                  style: titleList.copyWith(color: Colors.blue),
                ),
              ),
              SizedBox(
                height: 15,
              )
            ],
          );
        }).toList(),
      );
    });
  }
}
