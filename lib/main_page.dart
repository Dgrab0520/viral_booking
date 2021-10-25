import 'dart:convert';

import 'package:custom_check_box/custom_check_box.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

String agree = "[필수] 개인정보 수집 · 이용 및 SMS 수신에 동의\n\n"
    "당사에서는 어플 정보 안내 등 서비스 제공을 위해 이용자의 개인정보를 수집하고 있습니다.\n\n"
    "개인정보 수집 및 이용 목적 : Flunyt 어플 서비스 정보, 고객 문의 및 응대\n"
    "수집하는 개인정보의 항목 : 휴대폰번호, 성별, SNS(ID)\n"
    "보유 및 이용기간 : 2년\n"
    "*수집된 개인정보는 업무제휴, 공동 마케팅 등을 위해 사용될 수 있습니다.\n\n"
    "[선택] 마케팅 활용을 위한 제 3자 정보 제공 동의\n\n"
    "개인정보 제공받는 자 :  D-Grab\n"
    "개인정보 제공받는 자의 개인정보 이용 목적 : Flunty 어플 서비스 정보(출시, 업데이트 등) 및 관련 이벤트 안내\n"
    "제공하는 개인정보의 항목 : 휴대폰번호, 성별, SNS(ID)\n"
    "개인정보를 제공바든 자의 개인정보 보유 및 이용 기간 : 제공 후 2년\n"
    "(단, 보유 및 이용기간이 경과하거나, 수집 및 목적 달성 시 즉시 파기)";

class Main_Page extends StatefulWidget {
  @override
  _Main_PageState createState() => _Main_PageState();
}

class _Main_PageState extends State<Main_Page> {
  bool womanCheck = false;
  bool manCheck = false;
  bool gCheck = false;
  bool aCheck = false;
  bool shouldCheck = false;

  bool yCheck = false;
  bool iCheck = false;
  bool bCheck = false;
  bool fCheck = false;

  bool shouldCheckDefault = false;
  double w = 0;

  TextEditingController _phoneController = new TextEditingController();
  TextEditingController _snsController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.width > 500) {
      w = 500;
    } else {
      w = MediaQuery.of(context).size.width;
    }

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
              image: AssetImage("assets/bg.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Padding(
              padding: EdgeInsets.only(top: 50, left: 17, right: 17),
              child: Column(
                children: [
                  Container(
                    width: 300,
                    height: 45,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/banner2.png",
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset("assets/logo.png"),
                        SizedBox(width: 5),
                        Text(
                          '플루닛 EVENT',
                          style: TextStyle(
                            color: Color(0xFF543F8E),
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    '이벤트 기간 | 2021.10.13 - 출시 전 까지',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 8,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.only(left: 17.0, right: 17),
                    child: Image.asset(
                      "assets/title7.png",
                      width: 300,
                      height: 90,
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: (MediaQuery.of(context).size.width > 410)
                        ? 120
                        : MediaQuery.of(context).size.width / 4,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Image.asset(
                            "assets/step1.png",
                          ),
                        ),
                        SizedBox(width: 7),
                        Container(
                          child: Image.asset("assets/step2.png"),
                        ),
                        SizedBox(width: 7),
                        Container(
                          child: Image.asset("assets/step3.png"),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    padding: (MediaQuery.of(context).size.width > 470)
                        ? EdgeInsets.all(20.0)
                        : EdgeInsets.all(10.0),
                    width: w,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFF543F8E),
                    ),
                    child: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'STEP.1 ',
                                style: TextStyle(
                                  color: Color(0xFFFFCB00),
                                  fontSize: 9,
                                ),
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Text(
                                '멤버십 혜택 - 얼리버드 신청쿠폰 2장 (1달) +  관심업체 / 카테고리 알림서비스',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 8.5,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 5),
                          Row(
                            children: [
                              Text(
                                'STEP.2 ',
                                style: TextStyle(
                                  color: Color(0xFFFFCB00),
                                  fontSize: 9,
                                ),
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Text(
                                '랜덤광고 제공 - 사전예약자에게 1개의 랜덤광고를 무조건 지급',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 8.5,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 5),
                          Row(
                            children: [
                              Text(
                                'STEP.3 ',
                                style: TextStyle(
                                  color: Color(0xFFFFCB00),
                                  fontSize: 9,
                                ),
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Text(
                                '기프티콘 제공 - 추첨을 통해 20명에게 신세계상품권 10,000원 지급',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 8.5,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 13),
                          Row(
                            children: [
                              Text(
                                '얼리버드 이용권이란? 최소 조건만 만족하면 체험단으로 바로 선정',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 6,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.only(left: 10.0, top: 13),
                    width: w,
                    height: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(15),
                        topLeft: const Radius.circular(15.0),
                      ),
                      color: Color(0xFF543F8E),
                    ),
                    child: Text(
                      '인플루언서',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10.0, top: 10, right: 10),
                    width: w,
                    height: 480,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(15),
                        bottomLeft: const Radius.circular(15.0),
                      ),
                      color: Color(0xFF453374),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 35,
                              child: CustomCheckBox(
                                value: womanCheck,
                                shouldShowBorder: true,
                                borderColor: Color(0xFFF8C707),
                                checkedFillColor: Color(0xFFF8C707),
                                borderRadius: 2,
                                borderWidth: 1,
                                checkBoxSize: 15,
                                onChanged: (val) {
                                  //do your stuff here
                                  setState(() {
                                    womanCheck = val;
                                    manCheck = false;
                                  });
                                },
                              ),
                            ),
                            Text(
                              '여자',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(width: 10),
                            Container(
                              width: 35,
                              child: CustomCheckBox(
                                value: manCheck,
                                shouldShowBorder: true,
                                borderColor: Color(0xFFF8C707),
                                checkedFillColor: Color(0xFFF8C707),
                                borderRadius: 2,
                                borderWidth: 1,
                                checkBoxSize: 15,
                                onChanged: (val) {
                                  //do your stuff here
                                  setState(() {
                                    manCheck = val;
                                    womanCheck = false;
                                  });
                                },
                              ),
                            ),
                            Text(
                              '남자',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 15),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 7),
                              child: Text(
                                '전화번호',
                                style: TextStyle(
                                  color: Color(0xFFF8C707),
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            FittedBox(
                              child: Row(
                                children: [
                                  Container(
                                    width: 35,
                                    height: 50,
                                    child: CustomCheckBox(
                                      value: gCheck,
                                      shouldShowBorder: true,
                                      borderColor: Color(0xFFF8C707),
                                      checkedFillColor: Color(0xFFF8C707),
                                      borderRadius: 2,
                                      borderWidth: 1,
                                      checkBoxSize: 15,
                                      onChanged: (val) {
                                        //do your stuff here
                                        setState(() {
                                          gCheck = val;
                                          aCheck = false;
                                        });
                                      },
                                    ),
                                  ),
                                  Text(
                                    'Google Play',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Container(
                                    width: 35,
                                    height: 50,
                                    child: CustomCheckBox(
                                      value: aCheck,
                                      shouldShowBorder: true,
                                      borderColor: Color(0xFFF8C707),
                                      checkedFillColor: Color(0xFFF8C707),
                                      borderRadius: 2,
                                      borderWidth: 1,
                                      checkBoxSize: 15,
                                      onChanged: (val) {
                                        //do your stuff here
                                        setState(() {
                                          aCheck = val;
                                          gCheck = false;
                                        });
                                      },
                                    ),
                                  ),
                                  Text(
                                    'App Store',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 5),
                            Container(
                              margin: EdgeInsets.only(left: 7.0, right: 7),
                              width: MediaQuery.of(context).size.width,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    padding:
                                        EdgeInsets.only(left: 17.0, right: 17),
                                    child: Text(
                                      '010',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                  Container(
                                      margin: EdgeInsets.only(
                                          top: 10.0, bottom: 10),
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Color(0xFF707070),
                                          width: 1,
                                        ),
                                      )),
                                  SizedBox(width: 20),
                                  Flexible(
                                    child: TextField(
                                      controller: _phoneController,
                                      cursorColor: Color(0xFF543F8E),
                                      decoration: InputDecoration(
                                        hintText: "'-'제외한 휴대폰 번호를 입력해주세요.",
                                        hintStyle: TextStyle(
                                          color: Color(0xFF9E9E9E),
                                          fontSize: 13,
                                        ),
                                        counterText: "",
                                        border: InputBorder.none,
                                      ),
                                      maxLength: 8,
                                      keyboardType: TextInputType.number,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 30),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 7),
                              child: Text(
                                'SNS 계정',
                                style: TextStyle(
                                  color: Color(0xFFF8C707),
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            FittedBox(
                              child: Row(
                                children: [
                                  Container(
                                    width: 35,
                                    height: 50,
                                    child: CustomCheckBox(
                                      value: yCheck,
                                      shouldShowBorder: true,
                                      borderColor: Color(0xFFF8C707),
                                      checkedFillColor: Color(0xFFF8C707),
                                      borderRadius: 2,
                                      borderWidth: 1,
                                      checkBoxSize: 15,
                                      onChanged: (val) {
                                        //do your stuff here
                                        setState(() {
                                          yCheck = val;
                                          iCheck = false;
                                          bCheck = false;
                                          fCheck = false;
                                        });
                                      },
                                    ),
                                  ),
                                  Text(
                                    '유튜브',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Container(
                                    width: 35,
                                    height: 50,
                                    child: CustomCheckBox(
                                      value: iCheck,
                                      shouldShowBorder: true,
                                      borderColor: Color(0xFFF8C707),
                                      checkedFillColor: Color(0xFFF8C707),
                                      borderRadius: 2,
                                      borderWidth: 1,
                                      checkBoxSize: 15,
                                      onChanged: (val) {
                                        //do your stuff here
                                        setState(() {
                                          iCheck = val;
                                          yCheck = false;
                                          bCheck = false;
                                          fCheck = false;
                                        });
                                      },
                                    ),
                                  ),
                                  Text(
                                    '인스타그램',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Container(
                                    width: 35,
                                    height: 50,
                                    child: CustomCheckBox(
                                      value: bCheck,
                                      shouldShowBorder: true,
                                      borderColor: Color(0xFFF8C707),
                                      checkedFillColor: Color(0xFFF8C707),
                                      borderRadius: 2,
                                      borderWidth: 1,
                                      checkBoxSize: 15,
                                      onChanged: (val) {
                                        //do your stuff here
                                        setState(() {
                                          bCheck = val;
                                          iCheck = false;
                                          yCheck = false;
                                          fCheck = false;
                                        });
                                      },
                                    ),
                                  ),
                                  Text(
                                    '블로그',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Container(
                                    width: 35,
                                    height: 50,
                                    child: CustomCheckBox(
                                      value: fCheck,
                                      shouldShowBorder: true,
                                      borderColor: Color(0xFFF8C707),
                                      checkedFillColor: Color(0xFFF8C707),
                                      borderRadius: 2,
                                      borderWidth: 1,
                                      checkBoxSize: 15,
                                      onChanged: (val) {
                                        //do your stuff here
                                        setState(() {
                                          fCheck = val;
                                          iCheck = false;
                                          bCheck = false;
                                          yCheck = false;
                                        });
                                      },
                                    ),
                                  ),
                                  Text(
                                    '페이스북',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 5),
                            Container(
                              margin: EdgeInsets.only(left: 7.0, right: 7),
                              width: MediaQuery.of(context).size.width,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: TextField(
                                controller: _snsController,
                                cursorColor: Color(0xFF543F8E),
                                decoration: InputDecoration(
                                  hintText: "SNS 계정을 입력해주세요.",
                                  hintStyle: TextStyle(
                                    color: Color(0xFF9E9E9E),
                                    fontSize: 13,
                                  ),
                                  contentPadding: EdgeInsets.only(left: 17),
                                  border: InputBorder.none,
                                ),
                                keyboardType: TextInputType.text,
                              ),
                            ),
                            SizedBox(height: 5),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                FittedBox(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 30,
                                        height: 30,
                                        child: CustomCheckBox(
                                          value: shouldCheck,
                                          shouldShowBorder: true,
                                          borderColor: Color(0xFFF8C707),
                                          checkedFillColor: Color(0xFFF8C707),
                                          borderRadius: 2,
                                          borderWidth: 1,
                                          checkBoxSize: 10,
                                          onChanged: (val) {
                                            //do your stuff here
                                            setState(() {
                                              shouldCheck = val;
                                            });
                                          },
                                        ),
                                      ),
                                      Text(
                                        '개인정보 수집 및 광고성 (SMS) 수신동의',
                                        style: TextStyle(
                                          color: Color(0xFFA299BA),
                                          fontSize: 11,
                                        ),
                                      ),
                                      TextButton(
                                          onPressed: () {
                                            Get.defaultDialog(
                                              backgroundColor:
                                                  Color(0xFF453374),
                                              title: "개인정보 동의",
                                              titleStyle: TextStyle(color: Colors.white),
                                              content: Text(
                                                agree,
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.white),
                                              ),
                                            );
                                          },
                                          child: Text(
                                            "[자세히 보기]",
                                            style: TextStyle(
                                              color: Color(0xFFA299BA),
                                              fontSize: 11,
                                            ),
                                          )),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 10),
                                InkWell(
                                  onTap: () {
                                    if ((!manCheck && !womanCheck) ||
                                        (!gCheck && !aCheck) ||
                                        (!yCheck &&
                                            !iCheck &&
                                            !bCheck &&
                                            !fCheck) ||
                                        !shouldCheck ||
                                        (_phoneController.text == "") ||
                                        (_snsController.text == "") ||
                                        (_phoneController.text.length < 8)) {
                                      Get.snackbar("Error", "모든 항목을 입력해주세요",
                                          backgroundColor: Colors.white38);
                                    } else {
                                      String gender = "";
                                      String store = "";
                                      String platform = "";
                                      if (womanCheck)
                                        gender = "1";
                                      else
                                        gender = "0";

                                      if (gCheck)
                                        store = "1";
                                      else
                                        store = "0";

                                      if (yCheck) {
                                        platform = "유튜브";
                                      } else if (iCheck) {
                                        platform = "인스타그램";
                                      } else if (bCheck) {
                                        platform = "블로그";
                                      } else if (fCheck) {
                                        platform = "페이스북";
                                      }

                                      write(
                                          gender,
                                          store,
                                          "010" + _phoneController.text,
                                          _snsController.text,
                                          platform);
                                      setState(() {
                                        _snsController.text = "";
                                        _phoneController.text = "";
                                        manCheck = false;
                                        womanCheck = false;
                                        gCheck = false;
                                        aCheck = false;
                                        shouldCheck = false;
                                        fCheck = false;
                                        iCheck = false;
                                        bCheck = false;
                                        yCheck = false;
                                      });
                                      Get.snackbar("성공", "사전예약이 되었습니다!");
                                    }
                                  },
                                  child: Container(
                                    margin:
                                        EdgeInsets.only(left: 7.0, right: 7),
                                    width: MediaQuery.of(context).size.width,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF8778B0),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    alignment: Alignment.center,
                                    child: Container(
                                      padding: EdgeInsets.only(
                                          left: 17.0, right: 17),
                                      child: Text(
                                        '사전예약 신청하기',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                  Column(
                    children: [
                      Text(
                        '* 본 이벤트는 회사 사정에 의해 변경될 수 있습니다.',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'NanumSquareR',
                            fontSize: 11),
                      ),
                      SizedBox(height: 5),
                      Text(
                        '* 자세한 사항은 문의 바랍니다.',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'NanumSquareR',
                            fontSize: 11),
                      ),
                      SizedBox(height: 50)
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future write(String gender, String store, String phone, String sns,
      String platform) async {
    print(
        "gender : $gender / store : $store / phone : $phone / sns : $sns / platform : $platform");
    var url = Uri.parse('http://1.234.83.219/book_inf.php');
    var result = await http.post(url, body: {
      "gender": gender,
      "store": store,
      "phone": phone,
      "sns": sns,
      "platform": platform,
    });

    return jsonDecode(result.body);
  }
}
