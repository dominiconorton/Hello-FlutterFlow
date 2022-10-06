import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  PageController? pageViewController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: Colors.black,
          ),
          child: Container(
            width: double.infinity,
            height: 500,
            child: Stack(
              children: [
                PageView(
                  controller: pageViewController ??=
                      PageController(initialPage: 0),
                  scrollDirection: Axis.vertical,
                  children: [
                    Image.asset(
                      'assets/images/pexels-pixabay-2346.jpg',
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      'assets/images/pexels-pixabay-163423.jpg',
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      'assets/images/pexels-wallace-chuck-2834917.jpg',
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
                Align(
                  alignment: AlignmentDirectional(-0.75, -0.9),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                    child: smooth_page_indicator.SmoothPageIndicator(
                      controller: pageViewController ??=
                          PageController(initialPage: 0),
                      count: 3,
                      axisDirection: Axis.vertical,
                      onDotClicked: (i) {
                        pageViewController!.animateToPage(
                          i,
                          duration: Duration(milliseconds: 500),
                          curve: Curves.ease,
                        );
                      },
                      effect: smooth_page_indicator.ExpandingDotsEffect(
                        expansionFactor: 2,
                        spacing: 8,
                        radius: 16,
                        dotWidth: 16,
                        dotHeight: 16,
                        dotColor: Color(0xFF9E9E9E),
                        activeDotColor: Color(0xFF3F51B5),
                        paintStyle: PaintingStyle.fill,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
