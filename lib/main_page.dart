 import 'package:custom_check_box/custom_check_box.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Main_Page extends StatefulWidget {


  @override
  _Main_PageState createState() => _Main_PageState();
}

class _Main_PageState extends State<Main_Page> {
  bool shouldCheck = false;
  bool shouldCheckDefault = false;
  double w = 0;

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.width > 600) {
      w = 500;
    } else {
      w = MediaQuery.of(context).size.width;
    }
    return Scaffold(
      body: Container(
        height:MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
              image: AssetImage("assets/bg.png"),
              fit: BoxFit.cover,
          ),
        ),
        child: Padding(
            padding: EdgeInsets.only(top:50, left:17, right:17),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                Container(
                  width:300,
                  height:45,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/banner2.png",),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset("assets/logo.png"),
                      SizedBox(width:5),
                      Text('플루닛 EVENT',
                        style:TextStyle(
                          color:Color(0xFF543F8E),
                          fontSize:13,
                        ),
                      ),
                    ],
                  ),
                ),
                Text('이벤트 기간 | 2021.10.13 - 출시 전 까지',
                  style:TextStyle(
                    color:Colors.white,
                    fontSize:8,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height:10),
                Container(
                  padding: EdgeInsets.only(left:17.0,right:17),
                  child: Image.asset("assets/title7.png",
                    width:300,
                    height:90,
                  ),
                ),
                SizedBox(height:20),
                Container(
                  height:110,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Image.asset("assets/step1.png",
                        ),
                      ),
                      SizedBox(width:7),
                      Container(
                        child: Image.asset("assets/step2.png"),
                      ),
                      SizedBox(width:7),
                      Container(
                        child: Image.asset("assets/step3.png"),
                      ),
                    ],
                  ),
                ),
                SizedBox(height:20),
                Container(
                  padding: EdgeInsets.only(left:10.0,top:10),
                  width:w,
                  height:85,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFF543F8E),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text('STEP.1 ',
                            style:TextStyle(
                              color:Color(0xFFFFCB00),
                              fontSize:9,
                            ),
                          ),
                          Text('멤버십 혜택 - 얼리버드 신청쿠폰 2장 (1달) +  관심업체 / 카테고리 알림서비스',
                            style:TextStyle(
                              color:Colors.white,
                              fontSize:8.5,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height:5),
                      Row(
                        children: [
                          Text('STEP.2 ',
                            style:TextStyle(
                              color:Color(0xFFFFCB00),
                              fontSize:9,
                            ),
                          ),
                          Text('랜덤광고 제공 - 사전예약자에게 1개의 랜덤광고를 무조건 지급',
                            style:TextStyle(
                              color:Colors.white,
                              fontSize:8.5,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height:5),
                      Row(
                        children: [
                          Text('STEP.3 ',
                            style:TextStyle(
                              color:Color(0xFFFFCB00),
                              fontSize:9,
                            ),
                          ),
                          Text('기프티콘 제공 - 추첨을 통해 20명에게 신세계상품권 10,000원 지급',
                            style:TextStyle(
                              color:Colors.white,
                              fontSize:8.5,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height:13),
                      Row(
                        children: [
                          Text('얼리버드 이용권이란? 최소 조건만 만족하면 체험단으로 바로 선정',
                            style:TextStyle(
                              color: Colors.white,
                              fontSize:7,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height:20),
                Container(
                  padding: EdgeInsets.only(left:10.0,top:13),
                  width:w,
                  height:45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(15),
                      topLeft: const Radius.circular(15.0),
                    ),
                    color: Color(0xFF543F8E),
                  ),
                  child: Text('인플루언서',
                    style: TextStyle(
                      color:Colors.white,
                      fontSize:15,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left:10.0,top:10,right:10),
                  width:w,
                  height:510,
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
                            width:35,
                            child: CustomCheckBox(
                              value: shouldCheck,
                              shouldShowBorder: true,
                              borderColor: Color(0xFFF8C707),
                              checkedFillColor: Color(0xFFF8C707),
                              borderRadius: 2,
                              borderWidth: 1,
                              checkBoxSize: 15,
                              onChanged: (val) {
                                //do your stuff here
                                setState(() {
                                  shouldCheck = val;
                                });
                              },
                            ),
                          ),
                          Text('여자',
                            style:TextStyle(
                              color:Colors.white,
                              fontSize:15,
                            ),
                          ),
                          SizedBox(width:10),
                          Container(
                            width:35,
                            child: CustomCheckBox(
                              value: shouldCheck,
                              shouldShowBorder: true,
                              borderColor: Color(0xFFF8C707),
                              checkedFillColor: Color(0xFFF8C707),
                              borderRadius: 2,
                              borderWidth: 1,
                              checkBoxSize: 15,
                              onChanged: (val) {
                                //do your stuff here
                                setState(() {
                                  shouldCheck = val;
                                });
                              },
                            ),
                          ),
                          Text('남자',
                            style:TextStyle(
                              color:Colors.white,
                              fontSize:15,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height:15),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(left:7),
                            child: Text('전화번호',
                              style:TextStyle(
                                color:Color(0xFFF8C707),
                                fontSize:15,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                width:35,
                                height:50,
                                child: CustomCheckBox(
                                  value: shouldCheck,
                                  shouldShowBorder: true,
                                  borderColor: Color(0xFFF8C707),
                                  checkedFillColor: Color(0xFFF8C707),
                                  borderRadius: 2,
                                  borderWidth: 1,
                                  checkBoxSize: 15,
                                  onChanged: (val) {
                                    //do your stuff here
                                    setState(() {
                                      shouldCheck = val;
                                    });
                                  },
                                ),
                              ),
                              Text('Google Play',
                                style:TextStyle(
                                  color:Colors.white,
                                  fontSize:15,
                                ),
                              ),
                              SizedBox(width:10),
                              Container(
                                width:35,
                                height:50,
                                child: CustomCheckBox(
                                  value: shouldCheck,
                                  shouldShowBorder: true,
                                  borderColor: Color(0xFFF8C707),
                                  checkedFillColor: Color(0xFFF8C707),
                                  borderRadius: 2,
                                  borderWidth: 1,
                                  checkBoxSize: 15,
                                  onChanged: (val) {
                                    //do your stuff here
                                    setState(() {
                                      shouldCheck = val;
                                    });
                                  },
                                ),
                              ),
                              Text('App Store',
                                style:TextStyle(
                                  color:Colors.white,
                                  fontSize:15,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height:5),
                          Container(
                            margin: EdgeInsets.only(left:7.0,right:7),
                            width:MediaQuery.of(context).size.width,
                            height:50,
                            decoration: BoxDecoration(
                              color:Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(left:17.0,right:17),
                                  child: Text('010',
                                    style:TextStyle(
                                      color:Colors.black,
                                      fontSize:16,
                                    ),
                                  ),
                                ),
                                Container(
                                    margin: EdgeInsets.only(top:10.0,bottom:10),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Color(0xFF707070),
                                        width: 1,
                                      ),
                                    )
                                ),
                                SizedBox(width:20),
                                Container(
                                  child: Text("'-'제외한 휴대폰 번호를 입력해주세요.",
                                    style:TextStyle(
                                      color:Color(0xFF9E9E9E),
                                      fontSize:13,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height:5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                flex:2,
                                child: Container(
                                  margin: EdgeInsets.only(left:7.0,right:7),
                                  width:200,
                                  height:50,
                                  decoration: BoxDecoration(
                                    color:Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.only(left:17.0,right:17),
                                        child: Text('인증번호 입력',
                                          style:TextStyle(
                                            color:Color(0xFF9E9E9E),
                                            fontSize:13,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),

                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.only(right:7),
                                  width:117,
                                  height:50,
                                  decoration: BoxDecoration(
                                    color:Color(0xFF8778B0),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('인증번호 받기',
                                        style:TextStyle(
                                          color:Colors.white,
                                          fontSize:13,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height:30),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(left:7),
                            child: Text('SNS 계정',
                              style:TextStyle(
                                color:Color(0xFFF8C707),
                                fontSize:15,
                              ),
                            ),
                          ),
                          SizedBox(height:15),
                          Container(
                            margin: EdgeInsets.only(left:7.0,right:7),
                            width:MediaQuery.of(context).size.width,
                            height:50,
                            decoration: BoxDecoration(
                              color:Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(left:17.0,right:17),
                                  child: Text('SNS 계정을 입력해주세요.',
                                    style:TextStyle(
                                      color:Color(0xFF9E9E9E),
                                      fontSize:13,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height:5),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width:30,
                                    height:30,
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
                                  Text('개인정보 수집 및 광고성 (SMS) 수신동의',
                                    style:TextStyle(
                                      color:Color(0xFFA299BA),
                                      fontSize:12,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height:30),
                              Container(
                                margin: EdgeInsets.only(left:7.0,right:7),
                                width:MediaQuery.of(context).size.width,
                                height:50,
                                decoration: BoxDecoration(
                                  color:Color(0xFF8778B0),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(left:17.0,right:17),
                                      child: Text('사전예약 신청하기',
                                        style:TextStyle(
                                          color:Colors.white,
                                          fontSize:16,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height:15),
                Column(

                  children: [
                    Text('* 본 이벤트는 회사 사정에 의해 변경될 수 있습니다.',
                      style:TextStyle(
                        color:Colors.white,
                        fontFamily: 'NanumSquareR',
                        fontSize:11
                      ),
                    ),
                    SizedBox(height:5),
                    Text('* 자세한 사항은 문의 바랍니다.',
                      style:TextStyle(
                        color:Colors.white,
                          fontFamily: 'NanumSquareR',
                          fontSize:11
                      ),
                    ),
                    SizedBox(height:50)
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
