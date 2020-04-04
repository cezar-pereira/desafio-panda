import 'package:desafio_pandapay/app/modules/shared/ui/components_ui.dart';
import 'package:desafio_pandapay/app/modules/shared/ui/theme.dart';
import 'package:flutter/material.dart';

class FisrtAccessPage extends StatefulWidget {
  final String title;
  const FisrtAccessPage({Key key, this.title = "FisrtAccessPage"})
      : super(key: key);

  @override
  _FisrtAccessPagePageState createState() => _FisrtAccessPagePageState();
}

class _FisrtAccessPagePageState extends State<FisrtAccessPage>
    with ComponentsUi {
  PageController pageController;

  int currentText = 0;
  setCurrentText(int value) {
    setState(() {
      currentText = value;
      pageController.jumpToPage(value);
    });
  }

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) => Column(
          children: <Widget>[
            Container(
              width: constraints.constrainWidth(),
              height: constraints.constrainHeight() / 2,
              child: Image.asset(
                "assets/image_first_access.png",
                fit: BoxFit.cover,
              ),
            ),
            Container(
              height: constraints.constrainHeight() / 2,
              child: Column(
                children: <Widget>[
                  Container(
                    height: 120,
                    child: PageView(
                      controller: pageController,
                      onPageChanged: (value) => setCurrentText(value),
                      children: <Widget>[
                        buildText(
                            text:
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut nec tortor tincidunt, mollis elit et, finibus lacus. Fusce imperdiet vitae lacus et maximus."),
                        buildText(
                            text:
                                "Nullam lacus dui, mattis eu arcu sodales, faucibus facilisis est. Pellentesque arcu mauris, rhoncus vel vulputate eu, venenatis id purus."),
                        buildText(
                            text:
                                "Donec ut arcu nec elit mollis laoreet vitae sed lorem. Suspendisse rhoncus eros elementum volutpat cursus."),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 150),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        buildButtonsPageView(0),
                        buildButtonsPageView(1),
                        buildButtonsPageView(2),
                      ],
                    ),
                  ),
                  Expanded(child: Container()),
                  GestureDetector(
                    child: mediumButton(
                        color: colorButtonGreen,
                        colorText: Colors.white,
                        text: "CADASTRAR"),
                  ),
                  SizedBox(height: 8),
                  GestureDetector(
                    child: mediumButton(
                        color: Colors.transparent,
                        colorText: colorButtonGray,
                        text: "ENTRAR",
                        border: true),
                  ),
                  SizedBox(height: 12),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  buildText({@required String text}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 18),
      ),
    );
  }

  buildButtonsPageView(int index) {
    return GestureDetector(
      onTap: () => setCurrentText(index),
      child: Container(
        height: 10,
        width: 20,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: currentText == index ? Colors.black : colorButtonGray),
      ),
    );
  }
}
