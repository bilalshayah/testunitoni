import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:testunitoni/core/class/status_request.dart';

import '../constant/imgaeasset.dart';

class HandlingDataView extends StatelessWidget {
  final StatusRequest statusRequest;
  final Widget widget;
  const HandlingDataView({Key? key, required this.statusRequest, required this.widget}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading
        ? Center(
            child: Lottie.asset(
            AppImageAsset.loading,
            width: 400,
            height: 400,
          ))
        : statusRequest == StatusRequest.offlinefailure
            ? Center(
                child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Lottie.asset(AppImageAsset.offline, animate: true),
                  const Text(
                    "No Connect Internet",
                    style: TextStyle(fontSize: 24, color: Color.fromARGB(255, 255, 50, 50)),
                  )
                ],
              ))
            : statusRequest == StatusRequest.serverFailure
                ? Center(
                    child: Lottie.asset(
                    AppImageAsset.server,
                  ))
                : statusRequest == StatusRequest.failure
                    ? Center(
                        child: Lottie.asset(
                        AppImageAsset.noData,
                      ))
                    : widget;
  }
}

class HandlingDataRequest extends StatelessWidget {
  final StatusRequest statusRequest;
  final Widget widget;
  const HandlingDataRequest({Key? key, required this.statusRequest, required this.widget}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading
        ? Center(child: Lottie.asset(AppImageAsset.loading))
        : statusRequest == StatusRequest.offlinefailure
            ? Center(child: Lottie.asset(AppImageAsset.offline))
            : statusRequest == StatusRequest.serverFailure
                ? Center(child: Lottie.asset(AppImageAsset.server))
                : widget;
  }
}
