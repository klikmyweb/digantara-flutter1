import 'package:digantara/app/modules/beranda/views/beranda_view.dart';
import 'package:digantara/app/modules/kontak/views/kontak_view.dart';
import 'package:digantara/app/modules/news/views/news_view.dart';
import 'package:digantara/app/modules/notifikasi/views/notifikasi_view.dart';
import 'package:digantara/app/modules/shop/views/shop_view.dart';
import 'package:digantara/app/modules/sos/views/sos_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  RxInt tabIndex = 0.obs;
  static RxBool isLogin = false.obs;

  @override
  void onInit() {
    super.onInit();
  }

  void changeTabIndex(int index) {
    tabIndex.value = index;
  }

  List<Widget> myWidget = [
    NewsView(),
    ShopView(),
    BerandaView(),
    SosView(),
    NotifikasiView(),
    KontakView()
  ];
  List<Widget> myWidgetNotLogin = [
    NewsView(),
    ShopView(),
  ];
}
