import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cscs/models/footer_item.dart';
import 'package:cscs/utils/constants.dart';
import 'package:cscs/utils/screen_helper.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:url_launcher/url_launcher.dart';

final List<FooterItem> footerItems = [
  FooterItem(
      iconData: Icons.account_balance_rounded,
      title: "COMPANY",
      text1: "Since 2018/12/21",
      text2: "capital 1,000,000",
      onTap: () {}),
  FooterItem(
      iconData: Icons.person,
      title: "MEMBER",
      text1: "Yusuke Kaneoka",
      text2: "",
      onTap: () {
        launch("https://twitter.com/8140i2865_3");
      }),
  FooterItem(
      iconData: Icons.location_on,
      title: "ADDRESS",
      text1: "#510 ARCUS-M",
      text2: "1-4-36 Hisamoto Takatsu,Kawasaki, Kanagawa",
      onTap: () {}),
  FooterItem(
      iconData: Icons.mail,
      title: "EMAIL",
      text1: "info@cotosystem.com",
      text2: "",
      onTap: () {}),
  // FooterItem(
  //     iconData: Icons.phone,
  //     title: "PHONE",
  //     text1: "+91 9167877725",
  //     text2: "",
  //     onTap: () {}),
  // FooterItem(
  //     iconData: Icons.sms,
  //     title: "WHATSAPP",
  //     text1: "+91 9167877725",
  //     text2: "",
  //     onTap: () {
  //       Utilty.openWhatsapp();
  //     })
];

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenHelper(
      desktop: _buildUi(kDesktopMaxWidth, context),
      tablet: _buildUi(kTabletMaxWidth, context),
      mobile: _buildUi(getMobileMaxWidth(context), context),
    );
  }
}

Widget _buildUi(double width, BuildContext context) {
  return Center(
    child: ResponsiveWrapper(
      maxWidth: width,
      minWidth: width,
      defaultScale: false,
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 50.0),
                child: Wrap(
                  spacing: 20.0,
                  runSpacing: 20.0,
                  children: footerItems
                      .map(
                        (footerItem) => MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: InkWell(
                            onTap: footerItem.onTap,
                            child: SizedBox(
                              width: ScreenHelper.isMobile(context)
                                  ? constraints.maxWidth / 2.0 - 20.0
                                  : constraints.maxWidth / 4.0 - 20.0,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(
                                        footerItem.iconData,
                                        color: kPrimaryColor,
                                        size: 28,
                                      ),
                                      const SizedBox(
                                        width: 15.0,
                                      ),
                                      Text(
                                        footerItem.title,
                                        style: GoogleFonts.josefinSans(
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10.0,
                                  ),
                                  RichText(
                                    textAlign: TextAlign.start,
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "${footerItem.text1}\n",
                                          style: const TextStyle(
                                            fontFamily: "NotoSansJP",
                                            color: kCaptionColor,
                                            height: 1.8,
                                          ),
                                        ),
                                        TextSpan(
                                          text: "${footerItem.text2}\n",
                                          style: const TextStyle(
                                            fontFamily: "NotoSansJP",
                                            color: kCaptionColor,
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Flex(
                direction: Axis.horizontal,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      "Developed in 💛 with Flutter",
                      style: TextStyle(
                        color: kCaptionColor,
                      ),
                    ),
                  ),
                ],
              ),
              Flex(
                direction: Axis.horizontal,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      launch("https://github.com/AgnelSelvan/Flutter-Web-Portfolio");
                    },
                    child: const Padding(
                      padding: EdgeInsets.only(bottom: 8.0),
                      child: Text(
                        "And using template → AgnelSelvan/Flutter-Web-Portfolio",
                        style: TextStyle(
                          color: kCaptionColor,
                        ),
                      ),
                    ),
                  ),
                ],
              )

            ],
          );
        },
      ),
    ),
  );
}
