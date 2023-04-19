import 'package:any_link_preview/any_link_preview.dart';
import 'package:bemzaj_store/consts/BemzajColors.dart';
import 'package:bemzaj_store/screens/MainWidgets/textCustBemzaj.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import 'MainWidgets/mainPAding.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  linkFinder() async {
    // We will use this to build our own custom UI
    Metadata? _metadata = await AnyLinkPreview.getMetadata(
      link:
          "https://us.shein.com/EMERY-ROSE-Allover-Print-Halter-Neck-Dress-p-13015756-cat-1727.html?src_module=Women&src_identifier=on=FLASH_SALE`cn=flashsale`hz=0`ps=6_0`jc=flashSale_0&src_tab_page_id=page_home1679859323719&mallCode=1",
      cache: Duration(days: 7),

      // proxyUrl: "https://cors-anywhere.herokuapp.com/", // Need for web
    );
    print(_metadata);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    linkFinder();

    return Scaffold(
        body: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 2.5.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 8.1.w,
              ),
                SizedBox(
                width: 53.sp,
                child: Image.asset('assets/RawLogo.png'),
              ),
                 SizedBox(
                width: 8.3.sp,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                
                  SizedBox(
                child: Text(
                  'Hello Ahmed',
                  style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                      
                ),
              ),
              SizedBox(
                height: 3.sp,
              ),
                 SizedBox(
                child: Text(
                  'Welcome to BMazaj Store ',
                  style: GoogleFonts.caveat
                  
                   (
                      fontSize: 23,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                      
                ),
              ),


              ],)
            ,
              SizedBox(
                width: 11.9.w,
              ),
            
            ],
          ),
          SizedBox(
            height: 3.5.h,
          ),
          BemzajMainPAdding(
            widget: SizedBox(
              width: 256.6.sp,
              height: 14.h,
              child: Column(children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xff797979)),
                  width: 84.1.w,
                                clipBehavior: Clip.hardEdge,

                  height: 12.h,
                  child:Image.asset('assets/banner1.png',fit: BoxFit.cover,),
                )
              ]),
            ),
            pading: 6.6.w,
          ),
          SizedBox(
            height: 14.1.sp,
          ),
       Center(
         child: SizedBox(
                width: 67.2.w,
                child: Text(
                  'We bring the world to your doorstep',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.caveat(
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
       ),
           
          SizedBox(
            height: 18.3.sp,
          ),
          BemzajMainPAdding(
            widget: SizedBox(
              child: Text(
                'Recent Orders',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
            ),
            pading: 16.6.sp,
          ),

          SizedBox(
            height: 19.2.sp,
          ),

          Center(
            child: SizedBox(
              width: 107.sp,
              
              child: Image.asset('assets/bird.png')),
          ),

            Center(child: WhiteTextCentered(text: 'You haven’t placed any orders yet,\n get started by adding items', size: 14, fontWeight: FontWeight.w400))
,
          SizedBox(
            height: 35.8.sp,
          ),
          Center(
            child: SizedBox(
              width: 152.5.sp,
              
              child: Image.asset('assets/ItemButton.png')),
          ),


          //when empty



//           SizedBox(height: .7.h,),
//           Center(child:SizedBox(width:74.w,
//           child: Text('No orders yet, get started by adding links to the items you want',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 14),), ) ,),

//           SizedBox(height: 2.h,),

//           Center(child: Container(
//             width: 46.6.w,
//             child: Padding(
//               padding:  EdgeInsets.only(top: 5.sp,bottom: 5.sp),
//               child: Row(children: [Spacer(),

// Text(
//                       'Add items',
//                       style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 18,
//                           fontWeight: FontWeight.bold),
//                     ),

// SizedBox(width: 5.sp,),
// Icon(Icons.add_rounded,size: 15.sp,color: Color(0xffEDEDED),)
// ,Spacer()
//               ],),
//             ),
//                decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(30),
//                       color: Color(0xff797979)),
//           ),),

          //when not

          // OrderMainCard(
          //   padding: 6.6,
          // ),

          SizedBox(
            height: 1.7.h,
          )
        ],
      ),
    ));
  }
}

class OrderMainCard extends StatelessWidget {
  final double padding;
  const OrderMainCard({
    Key? key,
    required this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 1.8.h),
      child: BemzajMainPAdding(
        widget: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xff797979)),
          width: 89.1.w,
          // height: 19.1.h,
          child: Column(children: [
            SizedBox(
              height: 1.6.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 7.w,
                ),
                SizedBox(
                  width: 43.6.w,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Order ID',
                            style: TextStyle(
                                fontSize: 13,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            ' IN120_1234-160',
                            style: TextStyle(
                                fontSize: 13,
                                color: Colors.white,
                                fontWeight: FontWeight.normal),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 4.7.w,
                ),
                SizedBox(
                  width: 28.6.w,
                  child: Padding(
                    padding: EdgeInsets.only(top: 1.h),
                    child: Row(
                      children: [
                        Text(
                          'ORDER DATE',
                          style: TextStyle(
                              fontSize: 8,
                              color: Color(0xffCCCCCC),
                              fontWeight: FontWeight.normal),
                        ),
                        Text(
                          ' 12/8/2021',
                          style: TextStyle(
                              fontSize: 8,
                              color: Color(0xffCCCCCC),
                              fontWeight: FontWeight.normal),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 0.5.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 7.w,
                ),
                SizedBox(
                  width: 15.w,
                  child: Row(children: [
                    Text(
                      'AMAZON',
                      style: TextStyle(
                          fontSize: 8,
                          color: Color(0xffCCCCCC),
                          fontWeight: FontWeight.normal),
                    ),
                    SizedBox(
                      width: 1.9.w,
                    ),
                    Icon(
                      Icons.flag,
                      size: 8.sp,
                      color: Colors.white,
                    )
                  ]),
                )
              ],
            ),
            SizedBox(
              height: 1.5.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 5.5.w,
                ),
                Stack(
                  children: [
                    SizedBox(
                      width: 35.2.w,
                      height: 5.6.h,
                    ),
                    Positioned.directional(
                      child: OrderStackedContainer(
                        text: '',
                      ),
                      textDirection: TextDirection.ltr,
                    ),
                    Positioned.directional(
                        textDirection: TextDirection.ltr,
                        start: 7.2.w,
                        child: OrderStackedContainer(
                          text: '',
                        )),
                    Positioned.directional(
                        textDirection: TextDirection.ltr,
                        start: 14.4.w,
                        child: OrderStackedContainer(
                          text: '',
                        )),
                    Positioned.directional(
                        textDirection: TextDirection.ltr,
                        start: 21.6.w,
                        child: OrderStackedContainer(
                          text: '+3',
                        )),
                  ],
                ),
                SizedBox(
                  width: 8.w,
                ),
                SizedBox(
                  width: 38.w,
                  height: 3.5.h,
                  child: Row(children: [
                    SizedBox(
                      width: 7.5.w,
                      child: Text(
                        'TOTAL\nPRICE',
                        style: TextStyle(
                            fontSize: 8,
                            color: Color(0xffCCCCCC),
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                    SizedBox(
                      width: 1.w,
                    ),
                    SizedBox(
                      width: 29.w,
                      child: Row(
                        children: [
                          SizedBox(
                              child: Text(
                            '15,0000',
                            overflow: TextOverflow.visible,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          )),
                          Column(
                            children: [
                              Spacer(),
                              Text(
                                'SDG',
                                style: TextStyle(
                                    color: Color(0xffCBCBCB),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 8),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ]),
                )
              ],
            ),
            SizedBox(
              height: 1.7.h,
            ),
            Center(
              child: PaymentVerButton(
                color: Color(0xff4ECB71),fontSize: 8,
                text: 'Payment Verified',
              ),
            ),
            SizedBox(
              height: 1.5.h,
            )
          ]),
        ),
        pading: padding,
      ),
    );
  }
}

class PaymentVerButton extends StatelessWidget {
  final String text;
  final Color color;
  final double fontSize;
  const PaymentVerButton({
    Key? key,
    required this.text,
    required this.color, required this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 2.4.h,
      width: 28.w,
      decoration: BoxDecoration(
          color: Color(0xffD9D9D9), borderRadius: BorderRadius.circular(3)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Spacer(),
          Text(
            text,
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: fontSize),
          ),
          Icon(
            Icons.verified,
            color: color,
            size: 10.sp,
          ),
          Spacer()
        ],
      ),
    );
  }
}

class OrderStackedContainer extends StatelessWidget {
  final String text;
  const OrderStackedContainer({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 13.6.w,
      height: 13.6.w,
      child: Center(
          child: Text(
        text,
        style: GoogleFonts.montserrat(
            color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
      )),
      decoration: BoxDecoration(
          border: Border.all(color: Color(0xffDBDBDB), width: 1),
          borderRadius: BorderRadius.circular(15),
          color: Color(0xffA1A1A1)),
    );
  }
}
